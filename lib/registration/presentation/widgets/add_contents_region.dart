import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ttscord/core/application/dataclasses/with_origin.dart';
import 'package:ttscord/core/application/provider/scenario_sources_provider.dart';
import 'package:ttscord/home/presentation/widgets/content_region.dart';
import 'package:ttscord/registration/application/providers/default_origin_provider.dart';
import 'package:http/http.dart' as http;

class AddContentsRegion extends HookConsumerWidget {
  const AddContentsRegion({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final defaultOrigin = ref.watch(defaultOriginProvider);

    final isProcessing = useState(false);
    final errorText = useState<String?>(null);
    final controller = useTextEditingController();
    useListenable(controller);

    useEffect(() {
      errorText.value = null;
      return null;
    }, [controller.text]);

    return ContentRegion(
      title: "コンテンツの追加",
      child: Padding(
        padding: EdgeInsetsGeometry.all(16),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                filled: true,
                fillColor: Theme.of(context).colorScheme.surfaceContainerLowest,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(16),
                ),
                label: Text("コードを入力"),
                errorText: errorText.value,
              ),
            ),

            Spacer(),
            SizedBox(
              width: double.maxFinite,
              child: FilledButton(
                onPressed:
                    controller.text.isEmpty || isProcessing.value
                        ? null
                        : () async {
                          isProcessing.value = true;

                          final source = resolveCode(
                            controller.text,
                            defaultOrigin,
                          );

                          if (source != null && await source.isReachable()) {
                            await ref
                                .read(scenarioSourcesProvider.notifier)
                                .add(source);

                            if (context.mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("シナリオが追加されました"),
                                  duration: Duration(seconds: 5),
                                ),
                              );
                            }
                          } else {
                            errorText.value =
                                "実行できませんでした。コードが正しいか、もう一度確認してください。";
                          }

                          isProcessing.value = false;
                        },
                child:
                    isProcessing.value
                        ? SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                        )
                        : Text("追加"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

WithOrigin<ScenarioIdentifier>? resolveCode(
  String code,
  String? defaultOrigin,
) {
  final uri = Uri.parse(code);
  if (uri.hasScheme && {"http", "https"}.contains(uri.scheme)) {
    return WithOrigin(
      content: uri.pathSegments.last.withoutExtension,
      origin: Uri.parse(uri.origin),
    );
  } else if (defaultOrigin != null) {
    return WithOrigin(content: code, origin: Uri.parse(defaultOrigin));
  }
  return null;
}

// TODO: マシな実装にする
extension ReachabilityExt on WithOrigin<ScenarioIdentifier> {
  Future<bool> isReachable() async {
    try {
      // 絶対にここでresolveすべきではないんですけど
      final uri = origin.resolve("scenarios/$content.json");
      final response = await http.head(uri).timeout(const Duration(seconds: 5));

      return response.statusCode >= 200 && response.statusCode < 400;
    } catch (_) {
      return false;
    }
  }
}

extension RemoveExt on String {
  String get withoutExtension => (split(".")..removeLast()).join(".");
}

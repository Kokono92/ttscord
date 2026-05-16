import 'package:riverpod/riverpod.dart';
import 'package:ttscord/server/domain/datamodel/server.dart';

final serverListProvider = Provider<List<Server>>((ref) {
  //ref.read();

  return [];
});

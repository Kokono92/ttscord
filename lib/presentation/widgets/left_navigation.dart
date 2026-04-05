import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:ttscord/domain/datamodel/server.dart';

sealed class DestinationType {
  const DestinationType();
}

class MessagesDestination extends DestinationType {
  const MessagesDestination();
  @override
  bool operator ==(Object other) {
    return other is MessagesDestination;
  }

  @override
  int get hashCode => -1;
}

const messagesDestination = MessagesDestination();

class AddServerDestination extends DestinationType {
  const AddServerDestination();
  @override
  bool operator ==(Object other) {
    return other is AddServerDestination;
  }

  @override
  int get hashCode => -2;
}

const addServerDestination = AddServerDestination();

class ServerDestination extends DestinationType {
  final Server server;
  const ServerDestination(this.server);

  @override
  bool operator ==(Object other) {
    return other is ServerDestination && server == other.server;
  }

  @override
  int get hashCode => server.hashCode;
}

class LeftNavigation extends HookWidget {
  static const iconFactor = 0.5;

  final double size = 80;
  final DestinationType selectedDestination;
  final Function(DestinationType) onSelectionChanged;
  final List<Server> servers;

  const LeftNavigation({
    required this.selectedDestination,
    required this.onSelectionChanged,
    required this.servers,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final previousSelectedDestination = useRef<DestinationType>(
      messagesDestination,
    );
    final controller = useAnimationController(
      duration: const Duration(milliseconds: 200),
    );
    controller.forward();

    return Container(
      padding: EdgeInsets.only(top: 0.2 * size),
      child: Column(
        children: [
          _buildLeftNavigationDestination(
            destination: messagesDestination,
            previousSelectedDestination: previousSelectedDestination,
            controller: controller,
            contentBuilder:
                (color) => Icon(
                  PhosphorIconsFill.chatCircle,
                  size: size * iconFactor,
                  color: color,
                ),
          ),

          Container(
            width:
                (1 +
                    SelectionIndicator.widthFactor +
                    2 * LeftNavigationDestination.paddingFactor) *
                size,
            padding: EdgeInsets.only(
              left:
                  (SelectionIndicator.widthFactor +
                      1.5 * LeftNavigationDestination.paddingFactor) *
                  size,
              right: 1.5 * LeftNavigationDestination.paddingFactor * size,
            ),
            child: Divider(),
          ),

          for (Server server in servers)
            _buildLeftNavigationDestination(
              destination: ServerDestination(server),
              previousSelectedDestination: previousSelectedDestination,
              controller: controller,
              contentBuilder:
                  (color) =>
                      server.iconPath == null
                          ? Text(
                            _trimServerName(server.name),
                            style: TextStyle(color: color),
                          )
                          : _getServerIcon(server.iconPath!),
            ),

          _buildLeftNavigationDestination(
            destination: addServerDestination,
            previousSelectedDestination: previousSelectedDestination,
            controller: controller,
            contentBuilder:
                (color) => Icon(
                  Icons.add_rounded,
                  size: size * iconFactor,
                  color: color,
                ),
          ),
        ],
      ),
    );
  }

  Widget _buildLeftNavigationDestination({
    required DestinationType destination,
    required ObjectRef<DestinationType> previousSelectedDestination,
    required AnimationController controller,
    required Widget? Function(Color) contentBuilder,
    bool hasUnread = false,
  }) => LeftNavigationDestination(
    size: size,
    onTap: () {
      if (selectedDestination != destination) {
        previousSelectedDestination.value = selectedDestination;
        onSelectionChanged(destination);
        controller.reset();
        controller.forward();
      }
    },
    isSelected: destination == selectedDestination,
    wasSelected: destination == previousSelectedDestination.value,
    hasUnread: hasUnread,
    controller: controller,
    contentBuilder: contentBuilder,
  );
}

String _trimServerName(String name) =>
    name.length > 4 ? "${name.substring(0, 3)}…" : name;

Widget? _getServerIcon(String iconPath) {
  // Todo: implement
  return null;
}

class LeftNavigationDestination extends StatelessWidget {
  static const double paddingFactor = 0.2;

  final double size;
  final bool isSelected;
  final bool wasSelected;
  final bool hasUnread;
  final Function()? onTap;
  final AnimationController controller;
  final Widget? Function(Color) contentBuilder;

  const LeftNavigationDestination({
    required this.size,
    required this.onTap,
    required this.isSelected,
    required this.wasSelected,
    required this.hasUnread,
    required this.controller,
    required this.contentBuilder,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SelectionIndicator(
          size: size,
          isSelected: isSelected,
          wasSelected: wasSelected,
          hasUnread: hasUnread,
          controller: controller,
        ),
        GestureDetector(
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.all(paddingFactor * size),
            child: AnimatedIcon(
              size: size,
              isSelected: isSelected,
              wasSelected: wasSelected,
              controller: controller,
              child: contentBuilder(isSelected ? Colors.white : Colors.grey),
            ),
          ),
        ),
      ],
    );
  }
}

abstract class AnimatedSelectDeselect extends StatelessWidget {
  final double size;
  final bool isSelected;
  final bool wasSelected;
  final AnimationController controller;

  const AnimatedSelectDeselect({
    required this.size,
    required this.isSelected,
    required this.wasSelected,
    required this.controller,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (isSelected) {
      return _buildAnimatedSelect(context);
    } else if (wasSelected) {
      return _buildAnimatedDeselect(context);
    } else {
      return _buildStaticDeselected(context);
    }
  }

  Widget _buildAnimatedSelect(BuildContext context);
  Widget _buildAnimatedDeselect(BuildContext context);
  Widget _buildStaticDeselected(BuildContext context);
}

class AnimatedIcon extends AnimatedSelectDeselect {
  final BorderRadius selectedRadius;
  final BorderRadius deselectedRadius;
  final Widget? child;

  AnimatedIcon({
    required super.size,
    required super.isSelected,
    required super.wasSelected,
    required super.controller,
    this.child,
    super.key,
  }) : selectedRadius = BorderRadius.circular(size / 3),
       deselectedRadius = BorderRadius.circular(size / 2);

  @override
  Widget _buildAnimatedSelect(BuildContext context) =>
      _buildRadiusAnimatedContainer(reverse: false);

  @override
  Widget _buildAnimatedDeselect(BuildContext context) =>
      _buildRadiusAnimatedContainer(reverse: true);

  @override
  Widget _buildStaticDeselected(BuildContext context) =>
      _buildContainer(context, radius: deselectedRadius);

  Widget _buildContainer(
    BuildContext context, {
    required BorderRadius radius,
  }) => Container(
    width: size,
    height: size,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color:
          isSelected
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.surfaceContainerHigh,
      borderRadius: radius,
    ),
    child: child,
  );

  Widget _buildRadiusAnimatedContainer({required bool reverse}) {
    final tween = BorderRadiusTween(
      begin: deselectedRadius,
      end: selectedRadius,
    );
    final animation = (reverse ? ReverseTween(tween) : tween).animate(
      controller,
    );
    return AnimatedBuilder(
      animation: animation,
      builder:
          (context, child) =>
              _buildContainer(context, radius: animation.value!),
    );
  }
}

class SelectionIndicator extends AnimatedSelectDeselect {
  static const widthFactor = 0.1;
  static const heightFactor = 0.9;

  final double width;
  final double height;
  final bool hasUnread;

  const SelectionIndicator({
    required super.size,
    required super.isSelected,
    required super.wasSelected,
    required super.controller,
    required this.hasUnread,
    super.key,
  }) : width = widthFactor * size,
       height = heightFactor * size;

  // Todo: implement animation
  @override
  Widget _buildAnimatedSelect(BuildContext context) =>
      _buildAnimatedIndicator(reverse: false);

  // Todo: implement animation
  @override
  Widget _buildAnimatedDeselect(BuildContext context) =>
      _buildAnimatedIndicator(reverse: true);

  @override
  Widget _buildStaticDeselected(BuildContext context) =>
      hasUnread
          ? Align(
            alignment: Alignment.centerRight,
            widthFactor: 0.5,
            child: Container(
              height: 2 * width,
              width: 2 * width,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          )
          : SizedBox(width: width, height: height);

  Widget _buildAnimatedIndicator({required bool reverse}) {
    final radiusTween = _getRadiusTween();
    final radiusAnimation = (reverse ? ReverseTween(radiusTween) : radiusTween)
        .animate(controller);
    final scaleTween = _getScaleTween();
    final scaleAnimation = (reverse ? ReverseTween(scaleTween) : scaleTween)
        .animate(controller);
    return Align(
      alignment: Alignment.centerRight,
      widthFactor: widthFactor,
      child: SizedBox(
        width: size,
        child: AnimatedBuilder(
          animation: scaleAnimation,
          builder:
              (context, child) => Container(
                width: scaleAnimation.value,
                height: scaleAnimation.value,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: radiusAnimation.value,
                ),
              ),
        ),
      ),
    );
  }

  BorderRadiusTween _getRadiusTween() => BorderRadiusTween(
    begin: BorderRadius.circular(height),
    end: BorderRadius.circular(width),
  );

  Tween<double> _getScaleTween() =>
      Tween<double>(begin: hasUnread ? 2 * width : 0, end: height);
}

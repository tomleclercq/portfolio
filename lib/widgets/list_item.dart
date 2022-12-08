import 'package:flutter/cupertino.dart';
import 'package:portfolio/utils/custom_styles.dart';

class ListItem extends StatelessWidget {
  final Widget? child;
  const ListItem({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    if (child != null) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "\u003e",
            style: CustomStyles.body,
          ),
          const SizedBox(
            width: 4,
          ),
          Expanded(
            child: child!,
          ),
        ],
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}

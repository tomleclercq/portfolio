import 'package:flutter/cupertino.dart';
import 'package:portfolio/utils/helpers.dart';
import 'package:portfolio/widgets/list_item.dart';
import 'package:styled_text/styled_text.dart';

class Section extends StatelessWidget {
  final String title;
  final List<String> listItems;

  const Section({required this.title, required this.listItems, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: CustomStyles.h2,
          ),
          ...listItems.map(
            (item) => Padding(
              padding: const EdgeInsets.only(top: 8, left: 16),
              child: ListItem(
                child: StyledText(
                  text: item,
                  style: CustomStyles.body,
                  tags: {
                    'b': StyledTextTag(style: CustomStyles.bold),
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

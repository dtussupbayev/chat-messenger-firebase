import 'package:flutter/material.dart';

class SelectionBottomSheet<T> {
  static Future<void> show<T>({
    required BuildContext context,
    required List<T> items,
    required T currentItem,
    required String Function(T item) itemLabelBuilder,
    required ValueChanged<T?> onItemSelected,
    bool isScrollControlled = true,
    bool showDragHandle = true,
    BorderRadius? borderRadius,
  }) {
    return showModalBottomSheet<void>(
      context: context,
      isScrollControlled: isScrollControlled,
      showDragHandle: showDragHandle,
      shape: RoundedRectangleBorder(
        borderRadius:
            borderRadius ?? BorderRadius.vertical(top: Radius.circular(15)),
      ),
      builder: (context) {
        return SafeArea(
          child: Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: items.map((item) {
                return RadioListTile<T>(
                  title: Text(itemLabelBuilder(item)),
                  value: item,
                  groupValue: currentItem,
                  onChanged: (T? value) {
                    if (value != null) {
                      onItemSelected(value);
                      Navigator.pop(context);
                    }
                  },
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }
}

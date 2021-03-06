import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meeting_minutes/models/meeting_minute_controller.dart';

class MultiSelectDialogItem {
  const MultiSelectDialogItem(this.value, this.label);

  final int value;
  final String label;
}

class MultiSelectDialog extends StatefulWidget {
  const MultiSelectDialog({
    Key? key,
    this.title,
    this.items,
    this.initialSelectedValues,
  }) : super(key: key);

  final String? title;
  final List<MultiSelectDialogItem>? items;
  final Set<int>? initialSelectedValues;

  @override
  _MultiSelectDialogState createState() => _MultiSelectDialogState();
}

class _MultiSelectDialogState extends State<MultiSelectDialog> {
  final Set<int> _selectedValue = {};

  @override
  void initState() {
    super.initState();
    if (widget.initialSelectedValues != null) {
      _selectedValue.addAll(widget.initialSelectedValues!.toSet());
    }
  }

  void _onItemCheckedChange(int itemValue, bool checked) {
    setState(() {
      if (checked) {
        _selectedValue.add(itemValue);
      } else {
        _selectedValue.remove(itemValue);
      }
    });
  }

  void _onCancelTap() {
    Get.back();
  }

  void _onSubmitTap() {
    Get.back(result: _selectedValue);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.title!),
      contentPadding: const EdgeInsets.only(top: 12.0),
      content: Container(
        height: 400,
        color: Colors.grey[200],
        child: SingleChildScrollView(
          child: ListTileTheme(
            contentPadding: const EdgeInsets.fromLTRB(14.0, 0.0, 24.0, 0.0),
            child: ListBody(
              children: widget.items!.map(_buildItem).toList(),
            ),
          ),
        ),
      ),
      actions: [
        TextButton(
          child: const Text('CANCEL'),
          onPressed: _onCancelTap,
        ),
        TextButton(
          child: const Text('OK'),
          onPressed: _onSubmitTap,
        ),
      ],
    );
  }

  Widget _buildItem(MultiSelectDialogItem item) {
    final checked = _selectedValue.contains(item.value);
    return CheckboxListTile(
      value: checked,
      title: Text(item.label),
      controlAffinity: ListTileControlAffinity.leading,
      onChanged: (checked) => _onItemCheckedChange(item.value, checked!),
    );
  }
}

void showMultiSelect(BuildContext ctx) async {

  var controller = Get.put<MeetingMinuteController>(MeetingMinuteController());

  var selectedItem = await showDialog(
    context: ctx,
    builder: (context) {
      return MultiSelectDialog(
        title: 'Select Item(s)',
        items: items(controller.peopleList),
        initialSelectedValues: controller.selectedValues,
      );
    },
  );

  if (selectedItem != null) {
    controller.editingSelectedValues(selectedItem);
  }
}

List<MultiSelectDialogItem> items(List<String> list) {
  return List.generate(
      list.length, (index) => MultiSelectDialogItem(index, list[index]));
}

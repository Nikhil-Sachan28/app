import 'package:flutter/material.dart';

class RangePicker extends StatefulWidget {
  const RangePicker({Key? key}) : super(key: key);

  @override
  State<RangePicker> createState() =>
      _RangePickerState();
}

class _RangePickerState
    extends State<RangePicker> {
  RangeValues _currentRangeValues =
      const RangeValues(99.00, 499.00);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: RangeSlider(
        values: _currentRangeValues,
        max: 500,
        divisions: 5,
        labels: RangeLabels(
          _currentRangeValues.start
              .round()
              .toString(),
          _currentRangeValues.end
              .round()
              .toString(),
        ),
        onChanged: (RangeValues values) {
          setState(() {
            _currentRangeValues = values;
          });
        },
      ),
    );
  }
}

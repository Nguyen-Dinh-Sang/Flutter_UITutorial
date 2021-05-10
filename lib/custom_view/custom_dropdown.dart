import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  final List<dynamic> items;
  String hint;
  Function(dynamic newValue) selected;
  String initValue;

  CustomDropdown({@required this.items, this.hint, @required this.selected, this.initValue});

  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String dropdownValue;
  String hint;

  @override
  void initState() {
    super.initState();
    if (widget.initValue != null) {
      dropdownValue = widget.initValue;
      hint = widget.hint;
      widget.hint = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.circular(15)),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 5,
            child: hint != null ? Text('$hint', style: TextStyle(color: Colors.blue),) : SizedBox(),
          ),
          Positioned(
            left: 0,
            top: 25,
            child: dropdownValue != null
                ? Text(
              '$dropdownValue',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            )
                : SizedBox(),
          ),
          DropdownButton<String>(
            hint: Text('${widget.hint}'),
            // value: dropdownValue,
            icon: const Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            ),
            iconSize: 30,
            // icon: SizedBox(),
            elevation: 16,
            isExpanded: true,
            underline: SizedBox(),
// style: const TextStyle(color: Colors.deepPurple),
            onChanged: (String newValue) {
              setState(() {
                dropdownValue = newValue;
                widget.selected(newValue);
                if (hint == null) {
                  hint = widget.hint;
                  widget.hint = "";
                }
              });
            },
            items: widget.items.map<DropdownMenuItem<String>>((dynamic value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

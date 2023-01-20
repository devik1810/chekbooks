import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool lan1 = false;
  bool lan2 = false;
  bool lan3 = false;
  bool lan4 = false;
  String selected = "Android";
  RangeValues rangeValues = RangeValues(10, 200);
  bool onOff = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Language"),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text("Language"),
              Row(
                children: [
                  Checkbox(
                    value: lan1,
                    onChanged: (value) {
                      setState(() {
                        lan1 = value!;
                      });
                    },
                  ),
                  Text("Gujrati")
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: lan2,
                    onChanged: (value) {
                      setState(() {
                        lan2 = value!;
                      });
                    },
                  ),
                  Text(("English")),
                ],
              ),
              ListTile(
                leading: Text("1"),
                title: Text("Elow"),
                subtitle: Text("Tesla"),
                trailing: Text("Ca"),
              ),
              CheckboxListTile(
                  value: lan4,
                  onChanged: (value) {
                    setState(() {
                      lan4 = value!;
                    });
                  },
                  title: Text("Arbi")),
              RadioListTile(
                value: "flutter",
                groupValue: selected,
                onChanged: (value) {
                  setState(() {
                    selected = value!;
                  });
                },
                title: Text("IOS"),
              ),
              RadioListTile(
                value: "Android",
                groupValue: selected,
                onChanged: (value) {
                  setState(() {
                    selected = value!;
                  });
                },
                title: Text("ANDROID"),
              ),
              SizedBox(height: 5),
              Text("${rangeValues.start.toInt()}/${rangeValues.end.toInt()}"),
              RangeSlider(
                values: rangeValues,
                max: 1000,
                divisions: 10,
                labels: RangeLabels(
                  rangeValues.start.round().toString(),
                  rangeValues.end.round().toString(),
                ),
                onChanged: (value) {
                  setState(
                    () {
                      rangeValues = value;
                    },
                  );
                },
              ),
              Text("Switch"),
              Switch(
                value: onOff,
                onChanged: (value) {
                  setState(() {
                    onOff = value;
                  });
                },
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
//2202020111204

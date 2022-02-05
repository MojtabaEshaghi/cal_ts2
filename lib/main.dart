import 'package:flutter/material.dart';

import 'persian_date_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // our text controller
  final TextEditingController textEditingController = TextEditingController();

  PersianDatePickerWidget? persianDatePicker;
  @override
  void initState() {

    persianDatePicker = PersianDatePicker(
        controller: textEditingController,
        outputFormat: 'YYYY/MM/DD',
        datetime: '1397/08/29',
        finishDatetime: '1397/08/30',
        daysBorderWidth: 3,
        weekCaptionsBackgroundColor: Colors.red,
        headerBackgroundColor: Colors.blue.withOpacity(0.5),
        headerTextStyle: TextStyle(color: Colors.blue, fontSize: 17),
        headerTodayIcon: Icon(Icons.access_alarm, size: 15,),
        datePickerHeight: 280
    ).init();

    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          // Simple Date Picker
          Container(
            child: persianDatePicker, // just pass `persianDatePicker` variable as child with no ( )
          ),

          // you can omit TextField when using datepicker as inline
          TextField(
            enableInteractiveSelection: false,
            controller: textEditingController,
          ),
        ],
      )
    );
  }
}

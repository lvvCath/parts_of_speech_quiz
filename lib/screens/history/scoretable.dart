import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:parts_of_speech_quiz/constants.dart';
import 'package:parts_of_speech_quiz/screens/history/historymodel.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScoreTable extends StatefulWidget {
  final String category;
  const ScoreTable({
    required this.category,
    Key? key,
  }) : super(key: key);

  @override
  State<ScoreTable> createState() => _ScoreTableState();
}

class _ScoreTableState extends State<ScoreTable> {
  late List<History> list = [];
  SharedPreferences? sharedPreferences;

  @override
  void initState() {
    loadSharedPreferencesAndData();
    super.initState();
  }

  void loadSharedPreferencesAndData() async {
    sharedPreferences = await SharedPreferences.getInstance();
    loadData();
  }

  void loadData() {
    // print(widget.category);
    List<String>? listString = sharedPreferences?.getStringList(widget.category);
    // print(listString);
    if(listString != null){
      list = listString.map(
              (item) => History.fromMap(json.decode(item))
      ).toList();
      setState((){});
    }
  }

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: <DataColumn>[
        DataColumn(label: Text('Difficulty')),
        DataColumn(label: Text('Score')),
        DataColumn(label: Text('Date')),
        DataColumn(label: Text('Time')),
      ],
      rows:
      list.map((item) => DataRow(cells: [
        DataCell(Text(item.difficulty.toString())),
        DataCell(Text(item.score.toString())),
        DataCell(Text(item.date.toString())),
        DataCell(Text(item.time.toString())),
      ])).toList()
    );
  }


}

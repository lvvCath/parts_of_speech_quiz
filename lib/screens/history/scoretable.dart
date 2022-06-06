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

  int sortColumnIndex = 0;
  bool isAscending = false;

  @override
  Widget build(BuildContext context) {
    final columns = ['Difficulty', 'Score', 'Date', 'Time'];

    return ListView(
      children: <Widget>[
        DataTable(
            columns: getColumns(columns),
            headingRowHeight: 50,
            rows:getRows(list),
        ),
    ]
    );
  }
    List<DataColumn> getColumns(List<String> columns) => columns
        .map((String column) => DataColumn(
          label: Text(column),
          onSort: onSort,
        )).toList();

  List<DataRow> getRows(List<History> users) => users.map((History history) {
    final cells = [history.difficulty, history.score, history.date, history.time];

    return DataRow(cells: getCells(cells));
  }).toList();

  List<DataCell> getCells(List<dynamic> cells) =>
      cells.map((data) => DataCell(Text('$data'))).toList();

  void onSort(int columnIndex, bool ascending) {
    if (columnIndex == 0) {
      list.sort((itemA, itemB) =>
          compareString(ascending, itemA.difficulty, itemB.difficulty));
    } else if (columnIndex == 1) {
      list.sort((itemA, itemB) =>
          compareString(ascending, split(itemA.score), split(itemB.score)));
    } else if (columnIndex == 2) {
      list.sort((itemA, itemB) =>
          compareString(ascending, itemA.date, itemB.date));
    } else if (columnIndex == 3) {
      list.sort((itemA, itemB) =>
          compareString(ascending, itemA.time, itemB.time));
    }

    setState(() {
      this.sortColumnIndex = columnIndex;
      print(ascending);
      this.isAscending = ascending;
    });
  }

  int split(item) {
    String result = item.substring(0, item.indexOf('/'));
    int resultInt = int.parse(result);
    return resultInt;
  }

  int compareString(bool ascending, value1, value2) =>
      ascending ? value1.compareTo(value2) : value2.compareTo(value1) ;

}

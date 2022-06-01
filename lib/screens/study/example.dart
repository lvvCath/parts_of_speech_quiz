import 'package:flutter/material.dart';
import 'page1.dart';
import 'page2.dart';
import 'page3.dart';
import 'page4.dart';

class example extends StatelessWidget {
  const example({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Text('Example(Edit)', style: TextStyle( fontSize: 45.0, fontFamily: 'Dongle', fontWeight: FontWeight.bold ))
      ),
    );
  }
}







// //class Example extends StatelessWidget {
// //    @override
//
// /    _exampleState createState() => _exampleState();
//
//   }
//
//   class _exampleState extends State<example>{
//   @override
//   Widget build(BuildContext context) => Scaffold(
//
//   );
//   }

//
// const example({Key? key}) : super(key: key);
//   class example extends State<MainPage> {
//     late TabController controller;
//
//     @override
//       void initState(){
//         super.initState();
//
//       controller = TabController(length: 4);
//   }
//
//
//
//   Widget build(BuildContext context) {
//     return  (
//         length: 4,
//         child: Scaffold(
//           appBar: AppBar(
//             backgroundColor: Colors.blueAccent,
//             elevation: 0,
//             title: Text("Parts of Speeech"),
//
//             bottom: TabBar(
//                 controller: controller,
//                 labelColor: Colors.redAccent,
//                 unselectedLabelColor: Colors.white,
//
//                 indicatorSize: TabBarIndicatorSize.label,
//                 indicator: const BoxDecoration(
//                     borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(10),
//                         topRight: Radius.circular(10)),
//                         color: Colors.white),
//                 tabs: [
//                         buildKey(title: "Page1"),
//                         buildKey(title: "Page2"),
//                         buildKey(title: "Page3"),
//                         buildKey(title: "Page4"),
//
//                 ]
//             ),
//           ),
//           body: TabBarView(
//               controller: controller,
//               children: <Widget>[
//                 FirstPage(),
//                 SecondPage(),
//                 ThirdPage(),
//                 FourthPage(),
//             ]
//           ),
//         )
//     );
//   }
// }
//
// // function Tab to make the code short
// Tab buildKey({required String title}){
//   return Tab
//     (
//     child: Align(
//       alignment: Alignment.center,
//       child: Text("$title"),
//     ),
//   );
// }
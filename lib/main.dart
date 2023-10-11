// // import 'package:curve_bar/homepage.dart';
// import 'package:flutter/material.dart';
// // import 'homepage2.dart';

// void main() {
//   runApp(MaterialApp(home: MyApp()));
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Homepage(),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: height * 0.69,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 2,
                  color: Color.fromARGB(255, 206, 206, 206),
                ),
              ],
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                  child: Table(
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    border: TableBorder.symmetric(
                      inside: BorderSide.none,
                      outside: const BorderSide(color: Colors.grey, width: 1.0),
                    ),
                    children: List.generate(
                      7, // Number of rows
                      (rowIndex) {
                        return TableRow(
                          children: List.generate(
                            5, // Number of columns
                            (colIndex) {
                              Color bgColor = Colors.white;
                              BorderSide borderSide = BorderSide.none;
                              double cellHeight;
                              TextStyle textStyle = const TextStyle(
                                fontSize: 9,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              );
                              List<List<String>> tableData = [
                                [
                                  'Day',
                                  'Monday',
                                  'Tuesday',
                                  'Wednesday',
                                  'Thursday',
                                  'Friday',
                                  'Saturday',
                                  'Sunday'
                                ],
                                [
                                  'Breakfast',
                                  'Toast',
                                  'Cereal',
                                  'Omelette',
                                  'Pancakes',
                                  'Fruit',
                                  'Fruit',
                                ],
                                [
                                  'Lunch',
                                  'Salad',
                                  'Sandwich',
                                  'Pasta',
                                  'Burger',
                                  'Wrap',
                                  'Fruit',
                                ],
                                [
                                  'Snacks',
                                  'Toast',
                                  'Cereal',
                                  'Omelette',
                                  'Pancakes',
                                  'Fruit',
                                  'Fruit',
                                ],
                                [
                                  'Dinner',
                                  'Steak',
                                  'Fish',
                                  'Chicken',
                                  'Pasta',
                                  'Sushi',
                                  'Fruit',
                                ],
                              ];

                              if (rowIndex == 0) {
                                bgColor = Colors.blue;
                                textStyle = const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                );
                                cellHeight = height * 0.09; // Decreased height
                              } else if (colIndex == 0) {
                                textStyle = const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                );
                                borderSide = const BorderSide(
                                  color: Colors.green,
                                );
                                bgColor = Colors.green;
                                cellHeight = height * 0.1; // Increased height
                              } else {
                                cellHeight = height * 0.1; // Increased height
                                borderSide = const BorderSide(
                                  color: Colors.blue,
                                  width: 1.0,
                                );
                              }
                              return InkWell(
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title:
                                            const Text('Select or Add Subject'),
                                        content: SingleChildScrollView(
                                          child: ListBody(
                                            children: [
                                              Text("Hi hello kichu ekta")
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                                child: Container(
                                  height: cellHeight,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      top: rowIndex == 0
                                          ? BorderSide.none
                                          : borderSide,
                                      left: colIndex == 0
                                          ? BorderSide.none
                                          : borderSide,
                                    ),
                                    color: bgColor,
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Start",
                                            style: textStyle,
                                          ),
                                          Text(
                                            "End",
                                            style: textStyle,
                                          )
                                        ],
                                      ),
                                      Center(
                                        child: Text(
                                          tableData[colIndex][rowIndex],
                                          style: textStyle,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

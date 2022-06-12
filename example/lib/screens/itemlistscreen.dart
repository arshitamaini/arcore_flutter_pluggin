import 'package:arcore_flutter_plugin_example/screens/arViewscreen.dart';
import 'package:flutter/material.dart';
import 'package:arcore_flutter_plugin_example/models/ItemModel.dart';

class ItemListscreen extends StatelessWidget {
  

  List<ItemModel> items = [
    ItemModel('Double Bed', '5.5 * 6.15 ft with 2 lamps', 'items/bed.png', 6500),
    ItemModel('Sofa', ' 3 seat', 'items/sofa_yellow.png', 3000),
    ItemModel('Sofa', ' Single Seat Gray in Color', 'items/sofa_white.png', 1500),
    ItemModel('Dinner Table', ' 4 seater', 'items/dinner_table.png', 10000),
    ItemModel('Dinner Table', ' 6 Seater', 'items/dinner_table2.png', 20000),
    ItemModel('Dinner Table', ' Modern Look with 4 seat', 'items/dinner_table3.png', 30000),
    ItemModel('PC Table', ' Sleek and Modern Look', 'items/pc_table.png', 5000),
    ItemModel('Table', 'Wooden Foldable table', 'items/table.png', 1000),
    ItemModel('Sofa', ' Green Single Seat', 'items/sofa_uk.png', 2000),
    ItemModel('Wooden Chair', ' Single Lawn Chair', 'items/chair_wooden.png', 1700),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(child: Column(children: [
        SizedBox(height: 20,),
        Padding(padding: EdgeInsets.all(24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Furniture Available', style: TextStyle(fontSize : 37, color: Colors.white,)),
          ],
        ),
        ),
        Expanded(child: Padding(padding: EdgeInsets.all(24),
        child: Container(
          padding: EdgeInsets.only(top:6, left:20, right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30),),color: Colors.white,
            ),
          child: ListView.separated(
           itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                        onTap: (){
                        Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => ARviewScreen(
                            itemImg: items[index].pic,
                          ))
                        );
                        },
                        child: Row(
                          children: [
                            SizedBox(
                              height: 80,
                              width: 80,
                              child: Image.asset('${items[index].pic}', width: 60,),
                            ),
                            Expanded(child: Column(
                              children: [
                                Text(items[index].name, style: TextStyle(fontSize: 16, color: Colors.black),),
                                Text(items[index].details, style: TextStyle(fontSize: 10, color: Colors.black87),),
                              ],
                            )),
                            Container(
                              width: 60,
                              child: Text(items[index].price.toString(), style: TextStyle(fontSize: 14, color: Colors.black,),),
                            ),
                          ],
                        ),
                      );
           },
           separatorBuilder: (BuildContext context, int index ) => Divider(), 
           itemCount: items.length,
           ),
           ),
          ),
        )  
      ],
      )
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main()
{
  runApp(MaterialApp(
    home: demo(),
  ));
}

class demo extends StatefulWidget {
  const demo({Key? key}) : super(key: key);

  @override
  _demoState createState() => _demoState();
}

class _demoState extends State<demo> {


  bool item1= false;
  int mrp1=300;
  int total1 = 0;

  i1()
  {
    if(item1==true)
    {
      total1=mrp1;
    }
    else
    {
      total1=0;
    }
  }

  bool item2= false;
  int mrp2=450;
  int total2 = 0;

  i2()
  {
    if(item2==true)
    {
      total2=mrp2;
    }
    else
    {
      total2=0;
    }
  }

  bool item3= false;
  int mrp3=120;
  int total3 = 0;

  i3()
  {
    if(item3==true)
    {
      total3=mrp3;
    }
    else
    {
      total3=0;
    }
  }

  bool item4= false;
  int mrp4=150;
  int total4 = 0;

  i4()
  {
    if(item4==true)
    {
      total4=mrp4;
    }
    else
    {
      total4=0;
    }
  }

  bool item5= false;
  int mrp5=500;
  int total5 = 0;

  i5()
  {
    if(item5==true)
    {
      total5=mrp5;
    }
    else
    {
      total5=0;
    }
  }

  int tot =0;
  void payment()
  {
    tot = total1+total2+total3+total4+total5;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("check box"),
      ),
      body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                'select item',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black54),
              ),
            ),
            CheckboxListTile(title : Text("chocolate cookie ",style: TextStyle(fontSize: 20)),value: item1, onChanged: (value) {
              print(value);

              setState(() {
                item1 = value!;
                i1();
                payment();
              });
            },),
            Expanded(
                child: Container(
                  child: Text(
                      "    price = 300",
                      style: TextStyle(fontSize: 20)
                  ),
                  alignment: Alignment.topLeft,
                )),

            CheckboxListTile(title : Text("ferrero rocher ",style: TextStyle(fontSize: 20)),value: item2, onChanged: (value) {
              print(value);

              setState(() {
                item2 = value!;
                i2();
                payment();
              });
            },),
            Expanded(
                child: Container(
                  child: Text(
                      "    price = 450",
                      style: TextStyle(fontSize: 20)
                  ),
                  alignment: Alignment.topLeft,
                )),
            CheckboxListTile(title : Text("chocolate milk ",style: TextStyle(fontSize: 20)),value: item3, onChanged: (value) {
              print(value);

              setState(() {
                item3 = value!;
                i3();
                payment();
              });
            },),
            Expanded(
                child: Container(
                  child: Text(
                      "    price = 120",
                      style: TextStyle(fontSize: 20)
                  ),
                  alignment: Alignment.topLeft,
                )),
            CheckboxListTile(title : Text("cadbury dairy milk",style: TextStyle(fontSize: 20)),value: item4, onChanged: (value) {
              print(value);

              setState(() {
                item4 = value!;
                i4();
                payment();
              });
            },),
            Expanded(
                child: Container(
                  child: Text(
                      "    price = 150",
                      style: TextStyle(fontSize: 20)
                  ),
                  alignment: Alignment.topLeft,
                )),
            CheckboxListTile(title : Text("oreo milksheke ",style: TextStyle(fontSize: 20)),value: item5, onChanged: (value) {
              print(value);

              setState(() {
                item5 = value!;
                i5();
                payment();
              });
            },),
            Expanded(
                child: Container(
                  child: Text(
                      "    price = 500",
                      style: TextStyle(fontSize: 20)
                  ),
                  alignment: Alignment.topLeft,
                )),

            Expanded(
                child: Column(
                    children: [
                      Expanded(
                        child: InkWell(
                            onTap: (
                                ) {},
                            child: Container(
                              alignment: Alignment.topRight,
                              child: Text(
                                "   chocolate cookie = ${total1}  ",
                                style: TextStyle(fontSize: 20),
                              ),
                            )),
                      ),
                    ]
                )),
            Expanded(
                child: Column(
                    children: [
                      Expanded(
                        child: InkWell(
                            onTap: (
                                ) {},
                            child: Container(
                              alignment: Alignment.topRight,
                              child: Text(
                                "   ferrero rocher = ${total2}  ",
                                style: TextStyle(fontSize: 20),
                              ),
                            )),
                      ),
                    ]
                )),
            Expanded(
                child: Column(
                    children: [
                      Expanded(
                        child: InkWell(
                            onTap: (
                                ) {},
                            child: Container(
                              alignment: Alignment.topRight,
                              child: Text(
                                "   chocolate milk = ${total3}  ",
                                style: TextStyle(fontSize: 20),
                              ),
                            )),
                      ),
                    ]
                )),
            Expanded(
                child: Column(
                    children: [
                      Expanded(
                        child: InkWell(
                            onTap: (
                                ) {},
                            child: Container(
                              alignment: Alignment.topRight,
                              child: Text(
                                "   cadbury dairy milk = ${total4}  ",
                                style: TextStyle(fontSize: 20),
                              ),
                            )),
                      ),
                    ]
                )),
            Expanded(
                child: Column(
                    children: [
                      Expanded(
                        child: InkWell(
                            onTap: (
                                ) {},
                            child: Container(
                              alignment: Alignment.topRight,
                              child: Text(
                                "   oreo milksheke = ${total5}  ",
                                style: TextStyle(fontSize: 20),
                              ),
                            )),
                      ),
                    ]
                )),
            Expanded(
                child: Column(
                    children: [
                      Expanded(
                        child: InkWell(
                            onTap: () {},
                            child: Container(
                              alignment: Alignment.topRight,
                              child: Text(
                                "   Total = ${tot}  ",
                                style: TextStyle(fontSize: 20),
                              ),
                            )),
                      ),]
                )
            )
          ]
      ),
    );
  }
}

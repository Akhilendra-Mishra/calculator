import 'package:flutter/material.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        useMaterial3: false,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {

  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();

  var result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic Calculator'),
      ),
      body: Container(
        color: Colors.indigo.shade100,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no1Controller,
                  decoration: InputDecoration(
                  labelText: 'Enter first number',
                  border: OutlineInputBorder(),
                ),
                ),
                SizedBox(height: 20),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no2Controller,
                  decoration: InputDecoration(
                    labelText: 'Enter second number',
                    border: OutlineInputBorder(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(onPressed: (){

                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2Controller.text.toString());
                        var sum = no1+no2;

                        result = "The sum of $no1 and $no2 is $sum";
                        setState(() { });

                      }, child: Text('Add')),

                      ElevatedButton(onPressed: (){

                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2Controller.text.toString());

                        var diff = no1 - no2;

                        result = "The sub of $no1 and $no2 is $diff";
                        setState(() { });

                      }, child: Text('Sub')),

                      ElevatedButton(onPressed: (){
                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2Controller.text.toString());

                        var mul = no1 * no2;

                        result = "The mul of $no1 and $no2 is $mul";
                        setState(() { });
                      }, child: Text('Mult')),

                      ElevatedButton(onPressed: (){
                        var no1 = int.parse(no1Controller.text.toString());
                        var no2 = int.parse(no2Controller.text.toString());

                        var div = no1 / no2;

                        result = "The div of $no1 and $no2 is $div";
                        setState(() { });
                      }, child: Text('Div')),
                    ],

                  ),
                ),
                Padding(padding: EdgeInsets.all(25),
                child: Text(result, style: TextStyle(fontSize: 20),),)
              ],
            ),
          ),
        ),
      ),
    );

  }
}

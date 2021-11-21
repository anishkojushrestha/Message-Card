import 'package:flutter/material.dart';

void main(){
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Message Card App",
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: CardApp(),
    );
  }
}

class CardApp extends StatefulWidget {
  const CardApp({ Key? key }) : super(key: key);

  @override
  _CardAppState createState() => _CardAppState();
}

class _CardAppState extends State<CardApp> {
  TextEditingController controller= TextEditingController();
  String message = "Welcome";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text ("Message App"),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 400.0,
                  height: 260.0,
                  color: Colors.deepPurple,
                  child: Center(
                    child: Text(
                      message,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        
                      ),
                      
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: controller,
                  maxLength: 60,
                  onChanged: (String newValue){
                    setState(() {
                      message = newValue;
                    });
                  },
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                     hintText: "Your Message",
                     helperText: "You can write your Message",
                     border: OutlineInputBorder(),
                     suffixIcon: Icon(Icons.edit),
                   ),
                ),
              ),
              // ignore: deprecated_member_use
              Padding(
                padding: const EdgeInsets.all(8.0),
                // ignore: deprecated_member_use
                child: RaisedButton(
                  elevation: 20.0,
                  onPressed: () {
                    controller.clear();
                  },
                  color: Colors.deepPurple,
                  child: Text("Clear",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
                  ),
              )
            ],
          ),
          )
          
        );
  }
}
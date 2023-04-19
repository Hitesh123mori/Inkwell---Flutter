import 'package:flutter/material.dart' ;

void main()
{
  runApp(MyApp()) ;
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
            fontSize: 23 ,
            fontWeight: FontWeight.bold,
          ),
          backgroundColor: Colors.red,
        ),
      ),
      debugShowCheckedModeBanner: false,
        home: Scaffold(
        backgroundColor: Colors.deepOrangeAccent,
        appBar: AppBar(
        title: Text("Inkwell"),

        ),
          body: InkWell(
            onTap: (){
              print("hello") ;
            },
            child: Center(
              child: Container(
                width:300 ,
                height: 100,
                child: Center(child: InkWell(
                  onTap: (){
                    print("bye") ;
                  },
                    child: Text("Click Here",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 34),))),
                decoration: BoxDecoration(
                  color: Colors.blue ,
                  borderRadius: BorderRadius.only(topLeft : Radius.circular(45)) ,
                  border: Border.all(
                    width: 2 ,
                  ) ,
                  )
                ),
            ),
          ),
          ),
    ) ;
  }
}

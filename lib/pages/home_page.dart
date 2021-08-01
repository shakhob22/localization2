import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Center(
                child: Text("about").tr(),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: (){
                      context.locale = Locale('en', 'US');
                    },
                    color: Colors.green,
                    child: Text("English", style: TextStyle(color: Colors.white),),
                  ),
                ),
                SizedBox(width: 5,),
                Expanded(
                  child: MaterialButton(
                    onPressed: (){
                      context.locale = Locale('ko', 'KR');
                    },
                    color: Colors.red,
                    child: Text("Korean", style: TextStyle(color: Colors.white)),
                  ),
                ),
                SizedBox(width: 5,),
                Expanded(
                  child: MaterialButton(
                    onPressed: (){
                      context.locale = Locale('ja', 'JP');
                    },
                    color: Colors.blue,
                    child: Text("Japanese", style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}

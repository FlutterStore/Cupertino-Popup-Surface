import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cupertino Popup Surface",style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),),
        backgroundColor: CupertinoColors.systemGreen,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
            style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.green)),
            onPressed: () {
              showCupertinoModalPopup(
                context: context,
                barrierColor: Colors.black.withOpacity(0.3),
                // anchorPoint: Offset(10, 5),
                // barrierDismissible: true,
                // filter: ImageFilter.blur(),
                // routeSettings: RouteSettings(),
                // semanticsDismissible: true,
                // useRootNavigator: false,
                builder: (BuildContext builder) {
                  return CupertinoPopupSurface(
                    isSurfacePainted: true,
                    child: Container(
                      padding: const EdgeInsetsDirectional.all(20),
                      color: CupertinoColors.white,
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).copyWith().size.height * 0.35,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const FlutterLogo(style: FlutterLogoStyle.horizontal,size: 100,),
                          const Material(
                            child: Text(
                              "Are You Flutter Developer?",
                              style: TextStyle(
                                color: CupertinoColors.black,
                                fontSize: 18,
                              ),
                            )
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.green)),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text("NO")
                              ),
                              ElevatedButton(
                                style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.green)),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text("YES")
                              ),
                            ]
                          ),
                        ],
                      )
                    ),
                  );
                }
              );
            },
            child: const Text("Show Cupertino Popup Surface"),
          ),
        ]
          ),
      ),
    );
  }
}
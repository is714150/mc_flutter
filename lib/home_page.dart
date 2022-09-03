import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool b1Color = false;
  bool b2Color = false;
  bool b3Color = false;
  bool b4Color = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Mc Flutter'),
        ),
        body: Container(
          margin: const EdgeInsets.all(15.0),
          padding: const EdgeInsets.all(3.0),
          decoration: BoxDecoration(
            border: Border.all(),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  minLeadingWidth: 50,
                  leading: Icon(
                    Icons.person_sharp,
                    size: 50,
                  ),
                  title: Text(
                    'Flutter McFlutter',
                    style: TextStyle(fontSize: 22),
                  ),
                  subtitle: Text('Experienced app developer'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("123 Main Street"),
                    Text("(415) 555-0198"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      color: b1Color ? Colors.indigo : Colors.grey,
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Únete a un club con otras personas"),
                          ),
                        );
                        b1Color = !b1Color;
                        setState(() {});
                      },
                      icon: Icon(Icons.man_sharp),
                    ),
                    IconButton(
                      color: b2Color ? Colors.indigo : Colors.grey,
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                                "Cuenta regresiva para el evento: 31 días"),
                          ),
                        );
                        b2Color = !b2Color;
                        setState(() {});
                      },
                      icon: Icon(Icons.timer),
                    ),
                    IconButton(
                      color: b3Color ? Colors.indigo : Colors.grey,
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Llama al número 4155550198"),
                          ),
                        );
                        b3Color = !b3Color;
                        setState(() {});
                      },
                      icon: Icon(Icons.phone_android_outlined),
                    ),
                    IconButton(
                      color: b4Color ? Colors.indigo : Colors.grey,
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Llama al celular 3317865113"),
                          ),
                        );
                        b4Color = !b4Color;
                        setState(() {});
                      },
                      icon: Icon(Icons.phone_iphone_rounded),
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

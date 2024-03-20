import 'package:flutter/material.dart';
import 'package:chavez0336/pantallas0336/panel0336/widgets0336/item_cel.dart';

class PanelPantalla0336 extends StatelessWidget {
  const PanelPantalla0336({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff0a0550),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu, color: Colors.white),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 25),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://raw.githubusercontent.com/isaacChavezzz/img_IOS/main/ull%20act1/IconTelcel.png"),
              ),
            )
          ],
          title: const Text('TELCEL Chavez0336',
              style: TextStyle(color: Colors.white)),
        ),
        body: Column(
          children: <Widget>[
            Container(
                margin: const EdgeInsets.all(15),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xffffffff),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 5),
                          color: Theme.of(context)
                              .colorScheme
                              .primary
                              .withOpacity(.1),
                          spreadRadius: 5,
                          blurRadius: 5)
                    ]),
                child: const TextField(
                  decoration: InputDecoration(
                      hintText: "que quieres ver",
                      hintStyle: TextStyle(fontWeight: FontWeight.w500),
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search, color: Color(0xff0d8b6f))),
                )),
            Container(
              height: 180,
              margin: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://raw.githubusercontent.com/isaacChavezzz/img_IOS/main/telcel/telcel3.jpg"))),
            ),
            ListTile(
              title: Text("top Celulares"),
              titleTextStyle: Theme.of(context).textTheme.titleLarge,
              trailing: Icon(Icons.filter_list_off_outlined),
            ),
            Expanded(
                child: GridView.count(
              padding: EdgeInsets.all(15),
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 15,
              children: [for (int i = 1; i < 10; i++) const Itemcel0336()],
            ))
          ],
        ));
  }
}

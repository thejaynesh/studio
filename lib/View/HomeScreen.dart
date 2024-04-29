import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int screenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(

          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      height: 200,
                      decoration: const BoxDecoration(

                        borderRadius: BorderRadius.all(Radius.circular(20))

                      ),

                        child: Image.network("https://firebasestorage.googleapis.com/v0/b/studio-jb12.appspot.com/o/portfolio-img.jpg?alt=media&token=e947ff21-dff9-49e4-aedc-e01180aa6f7b")),
                    Text("Jaynesh Bhandari"),

                  ],
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(

          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.blueAccent,

          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.format_list_bulleted),label: "Projects"),
            BottomNavigationBarItem(icon: Icon(Icons.quick_contacts_mail_outlined),label: "Contact Me")
          ],
          onTap: (int i){
            setState(() {
              screenIndex = i;
            });
          },
          currentIndex: screenIndex,
          type: BottomNavigationBarType.shifting,
        ),
      ),
    );
  }
}

import 'package:contactlist_flutter/screens/contact_list.screen.dart';
import 'package:flutter/material.dart';

const String imgSrc = 'images/logo.webp';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            heightFactor: 2.2,
            child: SizedBox(
                child: ColorFiltered(
                    child: Image.asset(imgSrc),
                  colorFilter: ColorFilter.mode(Colors.blueAccent, BlendMode.color),
                ),
                height: 280,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24.0, 0, 0, 16.0),
            child: Material(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blueAccent,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ContactList())
                  );
                },
                child: Container(
                  height: 100,
                  width: 140,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.perm_contact_calendar_outlined, color: Colors.white,),
                      Text('Contacts',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

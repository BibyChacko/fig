import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/my_preference_page.dart';

class ProfileFragment extends StatefulWidget {
  @override
  _ProfileFragmentState createState() => _ProfileFragmentState();
}

class _ProfileFragmentState extends State<ProfileFragment> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, top: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Profile",
            style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey),
          ),
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://football-italia.net/wp-content/uploads/2022/08/Cristiano-Ronaldo-tongue-703x400.jpg"),
                radius: 40,
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "John Doe",
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueGrey),
                  ),
                  Text(
                    "@johncars",
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.blueGrey),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(6)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 2, horizontal: 6),
                      child: Row(
                        children: [
                          Icon(
                            Icons.ac_unit_rounded,
                            color: Colors.white,
                          ),
                          Text("14 WINS",
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white)),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 80,
          ),
          Text(
            "Settings",
            style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey),
          ),
          Card(
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    "My Preferences",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return MyPreferencePage();
                    }));
                  },
                ),
                Divider(
                  indent: 16,
                  endIndent: 16,
                ),
                ListTile(
                  title: Text(
                    "My Preferences",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                ),
                Divider(
                  indent: 16,
                  endIndent: 16,
                ),
                ListTile(
                  title: Text(
                    "My Preferences",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                ),
                Divider(
                  indent: 16,
                  endIndent: 16,
                ),
                ListTile(
                  title: Text(
                    "My Preferences",
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                ),
                Divider(
                  indent: 16,
                  endIndent: 16,
                )
              ],
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Center(
            child: Text('''Please feel free to contact us  \n for any  queries,complainces and feedback ''',
              textAlign: TextAlign.center,),
          )
        ],
      ),
    );
  }
}

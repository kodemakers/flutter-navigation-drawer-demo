import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:navigationdrawer/model/drawer_item_class.dart';

import 'package:navigationdrawer/values/utility.dart';

class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  final line = Types.LINE;
  List<DrawerItem> list = [
    DrawerItem(
        icon: FontAwesomeIcons.calendarAlt,
        text: 'Important Dates',
        type: Types.NORMAL),
    DrawerItem(
        icon: FontAwesomeIcons.pen, text: 'Add Leads', type: Types.NORMAL),
    DrawerItem(
        icon: FontAwesomeIcons.stickyNote, text: 'Notes', type: Types.NORMAL),
    DrawerItem(icon: FontAwesomeIcons.walking, text: 'Steps', type: Types.LINE),
    DrawerItem(
        icon: FontAwesomeIcons.user, text: 'Authors', type: Types.NORMAL),
    DrawerItem(
        icon: FontAwesomeIcons.handsHelping,
        text: 'Ask for help',
        type: Types.NORMAL),
    DrawerItem(
        icon: FontAwesomeIcons.idCard, text: 'Contacts', type: Types.LINE),
    DrawerItem(icon: Icons.stars, text: 'Useful Links', type: Types.NORMAL),
    DrawerItem(
        icon: Icons.bug_report, text: 'Report an issue', type: Types.NORMAL),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          navigationHeader(),
          Expanded(
            child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (BuildContext context, int index) {
                  return widgetListDrawerItem(index);
                }),
          ),
        ],
      ),
    );
  }

  Widget widgetListDrawerItem(int index) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Fluttertoast.showToast(msg: '${list[index].text}');
          },
          child: ListTile(
            title: Row(
              children: <Widget>[
                Icon(
                  list[index].icon,
                  size: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(list[index].text),
                ),
              ],
            ),
          ),
        ),
        list[index].type == line
            ? Divider(
                color: Colors.black,
                thickness: 0.3,
              )
            : Container()
      ],
    );
  }

  Widget navigationHeader() {
    return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/header_background.jpg'))),
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 12.0,
            left: 16.0,
            child: Text(
              "Flutter Navigation Drawer",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

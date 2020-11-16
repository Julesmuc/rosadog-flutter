import 'package:flutter/material.dart';
import 'package:rosadog/widgets/settingsView.dart';
import 'package:url_launcher/url_launcher.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  static const menuItems = [
    {'name': 'Settings', 'route': SettingsView.routeName},
    {'name': 'Sign Out', 'route': '/sign out'},
    {'name': 'Contact', 'route': 'https://www.rosadog.de/kontakt/'}
  ];
  const MainAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: SizedBox(
        height: 50,
        child: Image.asset(
          'assets/images/rosadog-logo.png',
          fit: BoxFit.cover,
        ),
      ),
      actions: [
        PopupMenuButton<String>(
          icon: Icon(
            Icons.settings,
            color: Theme.of(context).accentColor,
          ),
          onSelected: (e) {
            choiceAction(
              context,
              e,
            );
          },
          itemBuilder: (context) {
            return menuItems
                .map((e) => PopupMenuItem(
                      child: Text(e['name']),
                      value: e['route'],
                    ))
                .toList();
          },
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

void choiceAction(context, String e) {
  if (e.contains("https")) {
    print("URL");
    _launchURL(e);
  } else {
    Navigator.of(context).pushNamed(e);
  }
}

_launchURL(url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

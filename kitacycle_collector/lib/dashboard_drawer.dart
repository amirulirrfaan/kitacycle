import 'package:flutter/material.dart';

class DrawerFb1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.lightGreen[600],
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              margin: EdgeInsets.all(8),
              accountName: const Text(
                'Roger Ng',
                textScaleFactor: 2.0,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  shadows: [
                    Shadow(
                      offset: Offset(2.0, 2.0),
                      blurRadius: 3.0,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              accountEmail: Text(
                'roger_ng@hotmail.com',
                style: TextStyle(
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      offset: Offset(2.0, 2.0),
                      blurRadius: 3.0,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              currentAccountPictureSize: Size(80, 80),
              currentAccountPicture: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.lightGreen[100]!,
                      width: 4,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    child: ClipOval(
                      child: Image.asset(
                        'assets/uncle_roger.png',
                        fit: BoxFit.cover,
                        width: 110,
                        height: 110,
                      ),
                    ),
                  ),
                ),
              ),
              decoration: const BoxDecoration(),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              child: Column(
                children: [
                  const SizedBox(height: 12),
                  MenuItem(
                    text: 'Payment',
                    icon: Icons.credit_card,
                    onClicked: () => selectedItem(context, 0),
                  ),
                  const SizedBox(height: 5),
                  MenuItem(
                    text: 'Help',
                    icon: Icons.headset_mic_outlined,
                    onClicked: () => selectedItem(context, 1),
                  ),
                  const SizedBox(height: 5),
                  MenuItem(
                    text: 'Share',
                    icon: Icons.share,
                    onClicked: () => selectedItem(context, 2),
                  ),
                  const SizedBox(height: 5),
                  MenuItem(
                    text: 'Feedback',
                    icon: Icons.help,
                    onClicked: () => selectedItem(context, 3),
                  ),
                  MenuItem(
                    text: 'Updates',
                    icon: Icons.update,
                    onClicked: () => selectedItem(context, 3),
                  ),
                  MenuItem(
                    text: 'Terms & Conditions',
                    icon: Icons.description,
                    onClicked: () => selectedItem(context, 3),
                  ),
                  const SizedBox(height: 8),
                  Divider(
                    color: Colors.white70,
                    thickness: 1,
                  ),
                  const SizedBox(height: 8),
                  MenuItem(
                    text: 'Notifications',
                    icon: Icons.notifications_outlined,
                    onClicked: () => selectedItem(context, 5),
                  ),
                  MenuItem(
                    text: 'Settings',
                    icon: Icons.settings,
                    onClicked: () => selectedItem(context, 6),
                  ),
                  MenuItem(
                    text: 'Logout',
                    icon: Icons.logout_outlined,
                    onClicked: () => selectedItem(context, 6),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Scaffold(), // Page 1
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Scaffold(), // Page 2
        ));
        break;
    }
  }
}

class MenuItem extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback? onClicked;
  final Color? color;

  const MenuItem({
    required this.text,
    required this.icon,
    this.onClicked,
    this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(
        icon,
        color: color,
        size: 30,
      ),
      title: Text(text,
          style: TextStyle(
            color: color,
            shadows: [
              Shadow(
                offset: Offset(2.0, 2.0),
                blurRadius: 3.0,
                color: Colors.grey,
              ),
            ],
          ),
          textScaleFactor: 1.3),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }
}

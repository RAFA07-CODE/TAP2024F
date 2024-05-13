import 'package:day_night_switcher/day_night_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tap2024/settings/value_listener.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('Topicos Avanzados'),),
      drawer: menuLateral(context),
    );
  }

 Widget menuLateral(BuildContext context){
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/goku.png')
                )
        ),     
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://i0.wp.com/queboleta.com/wp-content/uploads/2021/04/IMG_20210423_125702.jpg?w=475&ssl=1'),
              ),
              accountName: Text('Rafael Alonso Villegas Bedolla'),
             accountEmail: Text('20030838@itcelaya.edu.mx')
            ),
            ListTile(
              tileColor: Colors.greenAccent,
              title: Text('Login'),
              subtitle: Text('Direccion de Youtube'),
              leading: Icon(Icons.key),
              trailing: Icon(Icons.chevron_right),
              onTap:()=>Navigator.pushNamed(context, "/login2")
            ),
              ListTile(
              tileColor: Colors.greenAccent,
              title: Text('Intenciones'),
              subtitle: Text('Acciones implicitas'),
              leading: Icon(Icons.abc),
              trailing: Icon(Icons.chevron_right),
              onTap:()=>Navigator.pushNamed(context, "/intent")
            ),
                          ListTile(
              tileColor: Colors.greenAccent,
              title: Text('Registro'),
              subtitle: Text('Acciones implicitas'),
              leading: Icon(Icons.abc),
              trailing: Icon(Icons.chevron_right),
              onTap:()=>Navigator.pushNamed(context, "/intent2")
            ),
            DayNightSwitcher(
              isDarkModeEnabled: ValueListener.isDark.value,
              onStateChanged: ((isDarkModeEnabled){
                ValueListener.isDark.value = isDarkModeEnabled;
              }))
          ],
        ),
      ),
    );
  }
}

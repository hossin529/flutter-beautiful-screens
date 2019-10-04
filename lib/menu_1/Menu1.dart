import 'package:flutter/material.dart';

class Menu1 extends StatefulWidget {
  @override
  _Menu1State createState() => _Menu1State();
}

class _Menu1State extends State<Menu1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xFF1f3c65), Color(0xFF4b6cb7)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Text('Menu',
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ),
              new Expanded(child: grid()),
            ],
          ),
        ),
      ),
    );
  }
}

Widget grid() {
  return Container(
      child: GridView.count(
    crossAxisCount: 2,
    children: List.generate(choices.length, (index) {
      return item(choices[index]);
    }),
  ));
}

Widget item(Choice choice) {
  return Padding(
    padding: const EdgeInsets.all(12),
    child: Container(
        // padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: Stack(
          children: <Widget>[
            Positioned(
              bottom: -25,
              right: -25,
              child: Icon(
                choice.icon,
                size: 150,
                color: choice.color.withOpacity(.1),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Icon(
                          choice.icon,
                          size: 88,
                          color: choice.color,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        choice.title,
                        style: TextStyle(
                          color: Colors.black.withOpacity(.7),
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        )),
  );
}

const List<Choice> choices = const <Choice>[
  const Choice(
      title: 'Car', icon: Icons.directions_car, color: Color(0xFF50C58F)),
  const Choice(
      title: 'Bicycle', icon: Icons.directions_bike, color: Color(0xFFF5A623)),
  const Choice(
      title: 'Boat', icon: Icons.directions_boat, color: Color(0xFF5BB9E8)),
  const Choice(
      title: 'Bus', icon: Icons.directions_bus, color: Color(0xFF8ACF21)),
  const Choice(
      title: 'Walk', icon: Icons.directions_walk, color: Color(0xFFFE412E)),
  const Choice(
      title: 'Railway',
      icon: Icons.directions_railway,
      color: Color(0xFF1977B7)),
];

class Choice {
  const Choice({this.title, this.icon, this.color});

  final String title;
  final IconData icon;
  final Color color;
}

import 'package:animative/index.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 0.2, 1.0],
            colors: <Color>[
              Colors.blue[900],
              Colors.blue[700],
              Colors.blue[50],
            ],
          ),
        ),
        child: Center(
          child: Text('test'),
        ),
      ),
    );
  }
}

import 'package:animative/index.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
    _controller.forward();
  }

  void _toggle() {
    _controller.isDismissed
        ? _controller.forward()
        : _controller.reverse();
  }

  @override
  Widget build(BuildContext context) {
    print(_controller.value);
    return Scaffold(
      body: GestureDetector(
        onTap: _toggle,
        child: Container(
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
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                double scale = 0.2 + (0.8 * _controller.value);
                return Transform.scale(
                  scale: scale,
                  child: Text(
                    'scale',
                    style: TextStyle(fontSize: 40),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

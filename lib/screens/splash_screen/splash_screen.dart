import 'package:animative/index.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _opacityAnimation;
  Animation _paddingAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 2000),
    );

    _opacityAnimation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.0, 1.0),
      ),
    );

    _paddingAnimation = EdgeInsetsTween(
      begin: EdgeInsets.only(top: 64),
      end: EdgeInsets.only(top: 10.0),
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeOutBack,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //AnimationControllerのforward()が呼ばれ、アニメーションが開始される
    _controller.forward();
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.0, 0.2, 0.4, 0.9, 1.0],
              colors: <Color>[
                Colors.blue[900],
                Colors.blue[700],
                Colors.blueAccent,
                Colors.orangeAccent,
                Colors.orange,
              ]),
        ),
        child: AnimatedBuilder(
          animation: _paddingAnimation,
          child: Center(
            child: FadeTransition(
              opacity: _opacityAnimation,
              child: Text(
                'Animative',
                style: TextStyleCustom.splashText,
              ),
            ),
          ),
          builder: (context, child) {
            return Padding(
              padding: _paddingAnimation.value,
              child: child,
            );
          },
        ),
      ),
    );
  }
}

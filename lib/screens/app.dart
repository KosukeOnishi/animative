import 'package:animative/index.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'animative',
      theme: theme,
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        //TODO:ここで初期化処理を行う
        future: Future.delayed(Duration(milliseconds: 3000)),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting ||
              snapshot.connectionState == ConnectionState.active ||
              snapshot.connectionState == ConnectionState.none) {
            return SplashScreen();
          } else {
            return HomeScreen();
          }
        },
      ),
    );
  }
}

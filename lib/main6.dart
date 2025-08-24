import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyAppName4()));
}

class MyAppName4 extends StatefulWidget {
  const MyAppName4({super.key});

  @override
  State<MyAppName4> createState() => _MyAppName4State();
}

class _MyAppName4State extends State<MyAppName4>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    _animation = Tween<double>(
      begin: 10,
      end: 200,
    ).animate(_controller as Animation<double>);
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,title: Text("AnimationController + Tween"),),
      body: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                gradient: LinearGradient(
                  colors: [Color(0xff1020094), Color(22898828)],
                ),

              ),
              width: _animation.value,
              height: _animation.value,

            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage()
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // Use this controller to get what the user typed
  final _textController = TextEditingController();

  // Store user text input into a variable
  String userPost = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // Display Text
            Expanded(
               child: Center(child: Text(userPost, style: const TextStyle(fontSize: 30))),
            ),

            // Text Input
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                hintText: 'What\'s on your mind?',
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                    onPressed: () {
                      // Clear whats currently in the text field
                      _textController.clear();
                    },
                    icon: const Icon(Icons.clear)
                )
              )
            ),

            // Post Button
            MaterialButton(
              onPressed: () {
                setState(() {
                  // Update our string variable to get the new user input
                  setState(() {
                    userPost = _textController.text;
                  });
                });
              },
              color: Colors.blue,
              child: const Text('Post', style: TextStyle(color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }
}
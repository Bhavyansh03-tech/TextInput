# Flutter Demo App

This is a simple Flutter demo app that allows users to input text and display it on the screen. Users can type their thoughts in the text field, and upon pressing the "Post" button, their input will be displayed on the home page.

## Features

- Text input field
- Clear button to reset the input
- Display user input in real-time

## Preview
<img src="https://github.com/user-attachments/assets/b9bc6fce-b2bb-40e1-99a2-1ef5f3c073ec" alt="First Screenshot" style="width: 200px; height: auto; margin-right: 10px;">

## Code Snippet

Here is the code for the `HomePage` widget:

```dart
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
                      // Clear what's currently in the text field
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
                  userPost = _textController.text;
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
```

## Getting Started

To run this project on your local machine:

1. Clone the repository and open it in your IDE:
   ```bash
   git clone https://github.com/Bhavyansh03-tech/PageView.git
   ```
2. Run the project on an emulator or a physical device.
   ```bash
   flutter run
   ```

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request for any improvements or bug fixes.

1. Fork the repository.
2. Create your feature branch (`git checkout -b feature/your-feature`).
3. Commit your changes (`git commit -am 'Add some feature'`).
4. Push to the branch (`git push origin feature/your-feature`).
5. Create a new Pull Request.

## Contact

For questions or feedback, please contact [@Bhavyansh03-tech](https://github.com/Bhavyansh03-tech) on GitHub or connect with me on [LinkedIn](https://www.linkedin.com/in/bhavyansh03/).

---

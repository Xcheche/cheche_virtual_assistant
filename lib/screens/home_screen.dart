import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController userInputTextEditingController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Image.asset('images/sound.png'),
        ),
      ),
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.purpleAccent.shade100,
                Colors.deepPurple,
              ],
            ),
          ),
        ),
        title: Image.asset(
          'images/logo.png',
          width: 140,
        ),
        titleSpacing: 10,
        elevation: 2,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 4, top: 4),
            child: InkWell(
              child: Icon(
                Icons.chat,
                size: 40,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 8, left: 4),
            child: InkWell(
              child: Icon(
                Icons.image,
                size: 40,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Center(
                child: InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'images/assistant_icon.png',
                    height: 300,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.0),
                      child: TextField(
                        controller: userInputTextEditingController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'How can i help you?',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      print('Send');
                    },
                    child: AnimatedContainer(
                      padding: const EdgeInsets.all(15),
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.deepPurpleAccent,
                      ),
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.bounceInOut,
                      child: const Icon(
                        Icons.send,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

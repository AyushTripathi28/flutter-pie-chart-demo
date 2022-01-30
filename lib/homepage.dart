import 'package:flutter/material.dart';
import 'package:phera_assignment/outputpage.dart';
import 'package:phera_assignment/utils/custom_textfield.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _catererController = TextEditingController();

  final TextEditingController _decoratorController = TextEditingController();

  final TextEditingController _photographerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              const Text(
                "Enter expenditure amount:",
                style: TextStyle(fontSize: 30),
              ),
              const Spacer(),
              CustomTextField(text: "Caterer", controller: _catererController),
              CustomTextField(
                  text: "Decorator", controller: _decoratorController),
              CustomTextField(
                  text: "Photographer", controller: _photographerController),
              const Spacer(),
              OutlinedButton(
                child: const Text('Show Result'),
                onPressed: () {
                  FocusManager.instance.primaryFocus!.unfocus();
                  // print();
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => OutputPage(
                        catererValue: _catererController.text != ""
                            ? int.parse(_catererController.text)
                            : 0,
                        decoratorValue: _decoratorController.text != ""
                            ? int.parse(_decoratorController.text)
                            : 0,
                        photographerValue: _photographerController.text != ""
                            ? int.parse(_photographerController.text)
                            : 0,
                      ),
                    ),
                  );
                },
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

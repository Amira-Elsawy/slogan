import 'package:flutter/material.dart';
import 'package:slogan_app/models/drawer.dart';
import 'package:slogan_app/models/models.dart';

class CaloriesCalc extends StatefulWidget {
  const CaloriesCalc({super.key});

  @override
  State<CaloriesCalc> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CaloriesCalc> {
  final _formKey = GlobalKey<FormState>();
  String _age = '';
  String _weight = '';
  String _height = '';
  String _selectedGender = 'Male';
  num _result = 0;

  void _calculateCalories() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      final int age = int.parse(_age);
      final int weight = int.parse(_weight);
      final int height = int.parse(_height);

      CalorieCalculator calculator = CalorieCalculator(
        age: age,
        sex: _selectedGender,
        weigthKG: weight,
        height: height,
      );

      setState(() {
        _result = calculator.calculateBMR();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:const MyDrawer(),
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "SLOGAN",
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Expanded(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Spacer(flex: 1),
              TextFormField(
                keyboardType: TextInputType.number,
                onSaved: (newValue) => _age = newValue!,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your age';
                  }
                  return null;
                },
                style: const TextStyle(
                  color: Color(0xFFE3E3E3),
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  labelText: "Age",
                  labelStyle: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                onSaved: (newValue) => _weight = newValue!,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your weight';
                  }
                  return null;
                },
                style: const TextStyle(
                  color: Color(0xFFE3E3E3),
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  labelText: "Weight in Kilograms",
                  labelStyle: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              const Spacer(flex: 1),
              TextFormField(
                keyboardType: TextInputType.number,
                onSaved: (newValue) => _height = newValue!,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your height';
                  }
                  return null;
                },
                style: const TextStyle(
                  color: Color(0xFFE3E3E3),
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  labelText: "Height in Cm",
                  labelStyle: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              const Spacer(flex: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedGender = 'Male';
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          _selectedGender == 'Male' ? Colors.blue : Colors.white,
                      foregroundColor:
                          _selectedGender == 'Male' ? Colors.white : Colors.black,
                      minimumSize: const Size(90, 40),
                    ),
                    child: const Text(
                      "Male",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,
                      fontFamily: 'SpaceMono',
                      fontStyle: FontStyle.italic),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _selectedGender = 'Female';
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _selectedGender == 'Female'
                          ? Colors.pink
                          : Colors.white,
                      foregroundColor: _selectedGender == 'Female'
                          ? Colors.white
                          : Colors.black,
                      minimumSize: const Size(90, 40),
                    ),
                    child: const Text(
                      "Female",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15,
                      fontFamily: 'SpaceMono',
                      fontStyle: FontStyle.italic
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(flex: 1),
              ElevatedButton(
                onPressed: _calculateCalories,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                ),
                child: const Text(
                  "Calculate the calories you needed in a day",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "The Calories you needed are ",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 13),
                    ),
                    Text(
                      "$_result",
                      style: const TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
              const Spacer(flex: 3),
            ],
          ),
        ),
      ),
    );
  }
}


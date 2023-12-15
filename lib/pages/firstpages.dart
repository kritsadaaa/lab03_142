import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final _loginFormkey = GlobalKey<FormState>();
  final TextEditingController _usernameCtrl = TextEditingController();
  final TextEditingController _passwordctrl = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 8, 216, 243),
      appBar: AppBar(
        title: const Text("krit.com"),
        backgroundColor: Color.fromARGB(255, 7, 205, 255),
      ),
      body: Form(
        key: _loginFormkey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter your username. ";
                  }
                  return null;
                },
                controller: _usernameCtrl,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    labelText: "Username",
                    prefixIcon: Icon(Icons.person),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 241, 14, 14))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 14, 29, 241)))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter your Password ";
                  }
                  return null;
                },
                controller: _passwordctrl,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    labelText: "Password",
                    prefixIcon: Icon(Icons.lock),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 241, 14, 14))),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 14, 29, 241)))),
                obscureText: true,
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
                onPressed: () {
                  print("onPeressed");
                  if (_loginFormkey.currentState!.validate()) {
                    print("Complie");
                  }
                },
                child: Text(" Login")),
            //Text(_usernameCtrl.text)
          ],
        ),
      ),
    );
  }
}

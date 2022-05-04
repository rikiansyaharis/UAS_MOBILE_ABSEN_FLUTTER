import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  @override
  _BelajarFormState createState() => _BelajarFormState();
}

class _BelajarFormState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool rememberMe = false;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Image.asset("assets/images/login.png"),
              Container(
                height: 330,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 10),
                    Text(
                      "Sign In",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 15.0, left: 8.0, right: 8.0, bottom: 8.0),
                            child: TextFormField(
                              controller: _usernameController,
                              decoration: InputDecoration(
                                labelText: "Username",
                                hintText: "Masukkan Username",
                                prefixIcon: Icon(Icons.person),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                              validator: (String? value) {
                                if (value!.isEmpty) {
                                  return 'username cannot be empty';
                                }
                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        obscureText: true,
                        controller: _passwordController,
                        decoration: InputDecoration(
                          labelText: "Password",
                          hintText: "Masukkan Password",
                          prefixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'Password cannot be empty';
                          }
                          return null;
                        },
                      ),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          onChanged: (value) => setState(() {
                            if (rememberMe) {
                              rememberMe = false;
                            } else {
                              rememberMe = true;
                            }
                          }),
                          value: rememberMe,
                          checkColor: Colors.white,
                          activeColor: Colors.blue,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 3.0),
                          child: Text('Remember Me'),
                        ),
                      ],
                    ),
                    RaisedButton(
                      child: Container(
                        width: 250,                          
                            alignment: Alignment.center,
                            child: const Text('Sign In', textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
                          ),
                      color: Colors.blue,
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            _checkStatusLogin(context, _usernameController.text, _passwordController.text);
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  static _checkStatusLogin(
      BuildContext context, String username, String password) {
    if (username == 'admin' && password == '12345') {
      Navigator.pop(context);
      Navigator.pushNamed(context, '/home');
    } else {
      _alert(context, "Username or Password doesn't match.");
    }
  }

  static _alert(BuildContext context, String message) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(SnackBar(
        content: Row(children: [
      const Icon(Icons.close_rounded, color: Colors.red),
      const SizedBox(width: 5.0),
      Text(message),
    ])));
  }
}

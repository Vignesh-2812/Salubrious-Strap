import 'package:flutter/material.dart';
import 'package:healthapp/addedsuccess.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Addnewpatient()));
}

//Store this globally

// Create a corresponding State class. This class holds data related to the form.
class Addnewpatient extends StatelessWidget {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    // Build a Form widget using the _formKey created above.
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
              backgroundColor: Colors.blueGrey[50],
              body: Padding(
                  padding: EdgeInsets.fromLTRB(20, 50, 20, 50),
                  child: ListView(
                    children: <Widget>[
                      Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'New Entry',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.w500,
                                fontSize: 30),
                          )),
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: const Icon(Icons.person),
                          hintText: 'Enter your name',
                          labelText: 'Name',
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: const Icon(Icons.phone),
                          hintText: 'Enter a phone number',
                          labelText: 'Phone',
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: const Icon(Icons.calendar_today),
                          hintText: 'Enter your date of birth',
                          labelText: 'Dob',
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: const Icon(Icons.home),
                          hintText: 'Address',
                          labelText: 'Address',
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: const Icon(Icons.bloodtype_outlined),
                          hintText: 'Eg:B+',
                          labelText: 'BloodGroup',
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: const Icon(Icons.contact_phone),
                          hintText: 'Emergency contact number',
                          labelText: 'Emergency No',
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: const Icon(Icons.mail_outline_outlined),
                          hintText: 'Email',
                          labelText: 'Mail.ID',
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: const Icon(Icons.watch),
                          hintText: 'ID',
                          labelText: 'BandD No',
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: const Icon(Icons.verified_user),
                          hintText: 'Usename',
                          labelText: 'Username',
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: const Icon(Icons.password_outlined),
                          hintText: 'Suggest strong password',
                          labelText: 'Password',
                        ),
                      ),
                      Container(
                          height: 50,
                          padding: EdgeInsets.fromLTRB(10, 25, 10, 0),
                          child: RaisedButton(
                            textColor: Colors.white,
                            color: Colors.black87,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40)),
                            child: Text(

                              'Add Patient',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Addsuccess()),
                              );
                            },
                          )),
                    ],
                  )))),
    );
  }
}

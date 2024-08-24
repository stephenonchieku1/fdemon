import 'package:flutter/material.dart';

class myForm extends StatefulWidget {
  const myForm({super.key});

  @override
  State<myForm> createState() => _myFormState();
}

class _myFormState extends State<myForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
            if(_formKey.currentState!.validate()){
              print('form submitted');
            }
      },
      child: const Text("Forms"),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email',
              ), 
                onChanged: (String newValue){
                  },
                validator: (String? submittedValue){
                  if(submittedValue!.isEmpty || submittedValue == null){

                    return ' Email cannot be empty ';
                  }
                  return null;
                } ,              
            ),
            TextFormField(),
          ],
        ),
      ) ,
    );
  }
}                              
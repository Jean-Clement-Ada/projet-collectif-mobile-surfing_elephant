import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State <FormPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Form(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Nom du spot',
                  hintText: 'Entre le nom du spot',
                  border: OutlineInputBorder(),
                ),
                validator: (value){
                  if (value == null || value.isEmpty){
                  return "il manque des informations";
                  }
                  return null;
               },
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: (){}, 
                child: Text("Envoyer")
              ),
            ),
          ],
        ),
      ),
    );
  }
}
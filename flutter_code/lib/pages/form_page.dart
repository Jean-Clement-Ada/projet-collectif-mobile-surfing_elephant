import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State <FormPage> {

  final _formkey = GlobalKey<FormState>();

  final nameSpotController = TextEditingController();
  final placeSpotController = TextEditingController();
  final difficultySpotController = TextEditingController();
  final seasonSpotController = TextEditingController();
  DateTime? selectedDate = DateTime.now();

  @override
  void dispose() {
    super.dispose();
    nameSpotController.dispose();
    placeSpotController.dispose();
    difficultySpotController.dispose();
    seasonSpotController.dispose();

  }


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Form(
        key:_formkey,
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
                  return "Il manque des informations";
                  }
                  return null;
               },
                controller: nameSpotController,
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Lieu du spot',
                  hintText: 'Entre le nom du lieu',
                  border: OutlineInputBorder(),
                ),
                validator: (value){
                  if (value == null || value.isEmpty){
                    return "Il manque des informations";
                  }
                  return null;
                },
                controller: placeSpotController,
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Difficulté ',
                  hintText: 'Entre la  difficulté du spot',
                  border: OutlineInputBorder(),
                ),
                validator: (value){
                  if (value == null || value.isEmpty){
                    return "Il manque des informations";
                  }
                  return null;
                },
                controller: difficultySpotController,
              ),
            ),

            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: DateTimeFormField(
                decoration: const InputDecoration(
                  labelText: 'Date de début de saison',
                ),
                firstDate: DateTime.now().add(const Duration(days: 10)),
                lastDate: DateTime.now().add(const Duration(days: 40)),
                initialPickerDateTime: DateTime.now().add(const Duration(days: 20)),
                onChanged: (DateTime? value) {
                  setState(() {
                    selectedDate = value;
                  });
                },
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: (){
                  if (_formkey.currentState!.validate()){
                    final nameSpot = nameSpotController.text;
                    final placeSpot = placeSpotController.text;
                    final difficulty = difficultySpotController.text;
                    final season = seasonSpotController.text;

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Envoi en cours"))
                    );
                    FocusScope.of(context).requestFocus(FocusNode());

                    print("Ajout de $nameSpot situé à/en $placeSpot. La difficulté est de $difficulty et on peut y surfer du $season");
                  }
                },
                child: Text("Envoyer")
              ),
            ),
          ],
        ),
      ),
    );
  }
}
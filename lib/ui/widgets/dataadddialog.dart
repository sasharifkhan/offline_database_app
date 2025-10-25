import 'package:flutter/material.dart';

class Dataadddialog extends StatelessWidget {

  final Function(String, String) callback;  

  const Dataadddialog({super.key, required this.callback});

  @override
  Widget build(BuildContext context) {
    var inputTitle = TextEditingController();
    var inputSubTitle = TextEditingController();

    return AlertDialog(shadowColor: Colors.black, backgroundColor: Colors.white, title: Text("Add Data"),  content: SizedBox( height: 120,
      child: Column(children: [
        TextField(controller: inputTitle, decoration: InputDecoration(labelText: "Title", fillColor: const Color.fromARGB(255, 241, 236, 236), filled: true,
        disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide(color: Colors.transparent)),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide(color: Colors.transparent)),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide(color: Colors.transparent)),
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide(color: Colors.transparent))),),
        SizedBox(height: 20,),
        TextField(controller: inputSubTitle, decoration: InputDecoration(labelText: "Subtitle", fillColor: const Color.fromARGB(255, 241, 236, 236), filled: true,
        disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide(color: Colors.transparent)),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide(color: Colors.transparent)),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide(color: Colors.transparent)),
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide(color: Colors.transparent))),),
      ],),
    ), actions: [
      Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        SizedBox(width: 120, height: 40, child: ElevatedButton(onPressed: (){
          if (inputTitle.text.isEmpty == false && inputSubTitle.text.isEmpty ==  false){
            callback(inputTitle.text,inputSubTitle.text);
            Navigator.pop(context);
          }
        }, child: Text("Add",style: TextStyle(fontSize: 18),))),
        CloseButton()
      ],)
    ],);
  }
}
import 'package:flutter/material.dart';
import 'package:todolist/ui/widgets/dataadddialog.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  List<Map<String, dynamic>> datalist= [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(onPressed: (){
        showDialog(context: context, builder: (context) => Dataadddialog( callback: () {
        },),);
      },child: Icon(Icons.add),),
      body: ListView.separated(separatorBuilder: (context, index) => Divider(height: 2,color: Colors.grey,thickness: 1.5,), scrollDirection: Axis.vertical, itemCount: 2,  itemBuilder: (context, index) {
        return Dismissible(key: Key("Remove"), child: ListTile(tileColor: Colors.white, trailing: IconButton(onPressed: (){}, icon: Icon(Icons.remove_circle_outline_sharp)), leading: Checkbox(value: true, onChanged: null), title: Text("Title"),subtitle: Text("Subtitle"), ));
      },),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/logic/providerData.dart';
import 'package:todolist/ui/widgets/dataadddialog.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {

    List<Map<String,dynamic>> data =  context.read<Providerdata>().datalist();
    
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(onPressed: (){
        showDialog(context: context, builder: (context) => Dataadddialog( callback: (title,subtitle) {
          Map<String,dynamic>data = {
            'title' :title,
            'subtitle':subtitle
          };
          context.read<Providerdata>().addnewdata(data);
        },),);
      },child: Icon(Icons.add),),
      body: Consumer<Providerdata>(builder: (ctx, provider, child) => ListView.separated(separatorBuilder: (context, index) => Divider(height: 2,color: Colors.grey,thickness: 1.5,), scrollDirection: Axis.vertical, itemCount: provider.datalist().length,  itemBuilder: (context, index) {
        return Dismissible(onDismissed: (direction) {
          // List<Map<String,dynamic>> data =  provider.datalist();
          provider.removedata(data[index]);
        }, key: Key(data[index].toString()), child: ListTile(tileColor: Colors.white, trailing: IconButton(onPressed: (){
          // List<Map<String,dynamic>> data =  provider.datalist();
          provider.removedata(data[index]);
        }, icon: Icon(Icons.remove_circle_outline_sharp)), leading: Checkbox(value: false, onChanged: null), title: Text(provider.datalist()[index]['title']),subtitle: Text(provider.datalist()[index]['subtitle']), ));
      },),)
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_todo_class1/BLOC/todo_bloc.dart';
 class Todoscreen extends StatefulWidget {
   const Todoscreen({Key? key}) : super(key: key);
 
   @override
   State<Todoscreen> createState() => _TodoscreenState();
 }
 
 class _TodoscreenState extends State<Todoscreen> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(

       floatingActionButton: FloatingActionButton(
           backgroundColor: Colors.green,
           onPressed: (){
         showDialog(context: context, builder:  (_){
          return AlertDialog(

            content: SingleChildScrollView(
              child: Column(
                children: [

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(

                      controller: context.read<TodoBloc>().controlleR,

                      decoration: InputDecoration(
                        labelText: "text",
                        hintText: "enter your num",
                         border: OutlineInputBorder(),
                      ),
                    ),
                  ),


                  ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.red,),
                      onPressed:  (){

                        context.read<TodoBloc>().add(All_data());

                         Navigator.pop(context);

                      }, child: Text("Submit")),


                ],
              ),
            ),


          ) ;
         });
       },child: Icon(Icons.add_box)),



       appBar: AppBar(),

      body:  BlocBuilder<TodoBloc,TodoState>(
          builder: (context, state) {

         if(state is add_Task){
           return ListView.builder(
             primary: false,
             shrinkWrap: true,
             itemCount: state.fahadJson_data.length,
             itemBuilder: (BuildContext context, int index) {

        var data=state.fahadJson_data[index];

               return  ListTile(
                 title: Text( "${data.name}"),
               );


             },

           );
         }
         else{
           return Container();
         }

          },),

     );
   }
 }
 
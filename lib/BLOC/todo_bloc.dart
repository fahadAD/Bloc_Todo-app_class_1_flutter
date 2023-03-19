import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc_todo_class1/model_class.dart';
import 'package:meta/meta.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {

  List<FahadJson> fahad_Json_list=[];

  final TextEditingController controlleR=TextEditingController();

  TodoBloc() : super(TodoInitial()) {
    on<TodoEvent>((event, emit) {



fahad_Json_list.add(FahadJson(name: controlleR.text));

emit(add_Task(fahad_Json_list));



    });
  }
}

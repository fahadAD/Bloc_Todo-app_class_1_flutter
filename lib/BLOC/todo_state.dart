part of 'todo_bloc.dart';

@immutable
abstract class TodoState extends Equatable{}


class TodoInitial extends TodoState {
  @override

  List<Object?> get props =>  [];
}


class  add_Task extends TodoState{
  @override

List<FahadJson> fahadJson_data=[];

  add_Task(this.fahadJson_data);


  List<Object?> get props =>  [fahadJson_data];

}
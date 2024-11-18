class Todo{
  final int?id;
  //unique identity
  final String?title;
  //name of task'
  final bool isCompleted;

  Todo({required this.id,required this.title,this.isCompleted=false});

Todo onCompletion(){
  return Todo(id: id,
   title: title,
   isCompleted:!isCompleted);
}

}

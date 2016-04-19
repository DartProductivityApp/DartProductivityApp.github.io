import 'dart:html';



InputElement toDoInput;
UListElement monOutputList, tuesOutputList, outputList;
ButtonElement clearAll;


void main() {
  querySelector('#chgText').text = 'Lets Program in Dart!';

  toDoInput = querySelector('#addItem');
  outputList = querySelector('.dispalyList');
  monOutputList = querySelector('#monDisplayList');
  tuesOutputList = querySelector('#tuesDisplayList');


  //toDoInput.onChange.listen(toDoItemsList);
  clearAll = querySelector('#clearList');
  clearAll.onClick.listen((e) => outputList.children.clear());



  querySelector("#MonSelect").onClick.listen(monToDoList);
  querySelector("#TuesSelect").onClick.listen(tuesToDoList);
}

void tuesToDoList(Event e){
  var newToDo = new LIElement();
  newToDo.text = toDoInput.value;
  newToDo.onClick.listen((e) => newToDo.remove());
  toDoInput.value ='';
  tuesOutputList.children.add(newToDo);
}

void monToDoList(Event e){

  var newToDo = new LIElement();
  newToDo.text = toDoInput.value;
  newToDo.onClick.listen((e) => newToDo.remove());
  toDoInput.value ='';
  monOutputList.children.add(newToDo);

}

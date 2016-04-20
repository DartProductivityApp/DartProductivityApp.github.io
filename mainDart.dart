import 'dart:html';



InputElement toDoInput;
UListElement monOutputList, tuesOutputList, wedOutputList, thursOutputList, friOutputList, satOutputList, sunOutputList;
ButtonElement clearAll;


void main() {
  querySelector('#chgText').text = 'Lets Program in Dart!';

  toDoInput = querySelector('#addItem');

  monOutputList = querySelector('#monDisplayList');
  tuesOutputList = querySelector('#tuesDisplayList');
  wedOutputList = querySelector('#wedDisplayList');
  thursOutputList = querySelector('#thursDisplayList');
  friOutputList = querySelector('#friDisplayList');
  satOutputList = querySelector('#satDisplayList');
  sunOutputList = querySelector('#sunDisplayList');


  //toDoInput.onChange.listen(toDoItemsList);
  clearAll = querySelector('#clearList');
  clearAll.onClick.listen((e) => monOutputList.children.clear());
  clearAll.onClick.listen((e) => tuesOutputList.children.clear());
  clearAll.onClick.listen((e) => wedOutputList.children.clear());
  clearAll.onClick.listen((e) => thursOutputList.children.clear());
  clearAll.onClick.listen((e) => friOutputList.children.clear());
  clearAll.onClick.listen((e) => satOutputList.children.clear());
  clearAll.onClick.listen((e) => sunOutputList.children.clear());



  querySelector("#MonSelect").onClick.listen(monToDoList);
  querySelector("#TuesSelect").onClick.listen(tuesToDoList);
  querySelector("#WedSelect").onClick.listen(wedToDoList);
  querySelector("#ThursSelect").onClick.listen(thursToDoList);
  querySelector("#FriSelect").onClick.listen(friToDoList);
  querySelector("#SatSelect").onClick.listen(satToDoList);
  querySelector("#SunSelect").onClick.listen(sunToDoList);
}

void sunToDoList(Event e){
  var newToDo = new LIElement();
  newToDo.text = toDoInput.value;
  newToDo.onClick.listen((e) => newToDo.remove());
  toDoInput.value ='';
  sunOutputList.children.add(newToDo);
}

void satToDoList(Event e){
  var newToDo = new LIElement();
  newToDo.text = toDoInput.value;
  newToDo.onClick.listen((e) => newToDo.remove());
  toDoInput.value ='';
  satOutputList.children.add(newToDo);
}


void friToDoList(Event e){
  var newToDo = new LIElement();
  newToDo.text = toDoInput.value;
  newToDo.onClick.listen((e) => newToDo.remove());
  toDoInput.value ='';
  friOutputList.children.add(newToDo);
}

void thursToDoList(Event e){
  var newToDo = new LIElement();
  newToDo.text = toDoInput.value;
  newToDo.onClick.listen((e) => newToDo.remove());
  toDoInput.value ='';
  thursOutputList.children.add(newToDo);
}

void wedToDoList(Event e){
  var newToDo = new LIElement();
  newToDo.text = toDoInput.value;
  newToDo.onClick.listen((e) => newToDo.remove());
  toDoInput.value ='';
  wedOutputList.children.add(newToDo);
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

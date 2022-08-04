import 'package:bracit_task1/model/person.dart';

class Search {
  void searchPerson(String keyboardData){
    searchedList = [];
    for(int i=0; i<personList.length; i++){
      if(personList[i].name.toLowerCase().contains(keyboardData.toLowerCase())){
        searchedList.add(personList[i]);
      }
    }
  }
}
List<Person> searchedList = [];


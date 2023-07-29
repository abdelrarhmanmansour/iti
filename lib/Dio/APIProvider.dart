
import 'package:dio/dio.dart';
import 'package:untitled6/album/successStory.dart';



class APIProvider{

 Toos? toos;

  getUser() async{

    Response response = await Dio().get("https://jsonplaceholder.typicode.com/todos");
    toos =Toos.fromJson(response.data);

    return toos;
  }


}
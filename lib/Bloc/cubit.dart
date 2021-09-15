import 'package:bloc/bloc.dart';
import 'package:cubit_test/Models/post.dart';
import 'package:cubit_test/Models/story.dart';
import 'package:cubit_test/Models/user.dart';
import 'state.dart';
import '../Data/dummy_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class PostCubit extends Cubit<PostState>{
  PostCubit() : super(PostInitialState());
  static PostCubit get(context)=>BlocProvider.of(context);
  List <Post> POSTS=posts;
  //List <Story> STORIES=stories;
  User USERS=currentUser;
   List<String>images=['assets/image1.jpg','assets/image2.jpg','assets/image3.jpg','assets/image4.jpg','assets/image5.jpg','assets/image6.jpg'];
  List<String> firstPost = [];
  List<String> secondPost = [];
  List<String> thirdPost = [];
  List<String> fourthPost = [];
  List<String> fifthPost = [];

  Future myFutureAsType() async {
    await Future.delayed(Duration(seconds: 2));
    return Future.error('Error from return!');
  }
   addToFirstPost(value) {
    myFutureAsType().then((value) {
      firstPost.add(value);
    }, onError: (error) {
      print(error);
    });
  }
   addToSecondPost(value) {
    myFutureAsType().then((value) {
      secondPost.add(value);
    }, onError: (error) {
      print(error);
    });
  }
  void addToThirdPost(value) {
    myFutureAsType().then((value) {
      thirdPost.add(value);
    }, onError: (error) {
      print(error);
    });
  }
   addToFourthPost(value) {
    myFutureAsType().then((value) {
      fourthPost.add(value);
    }, onError: (error) {
      print(error);
    });
  }
   addToFifthPost(value) {
    myFutureAsType().then((value) {
      fifthPost.add(value);
    }, onError: (error) {
      print(error);
    });
  }
  }



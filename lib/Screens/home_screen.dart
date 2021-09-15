import 'package:carousel_slider/carousel_slider.dart';
import 'package:cubit_test/Comments/first_comment.dart';
import 'package:cubit_test/Data/dummy_data.dart';
import 'package:cubit_test/Models/post.dart';
import 'package:cubit_test/Widgets/circle_button.dart';
import 'package:cubit_test/Widgets/create_post.dart';
import 'package:cubit_test/Widgets/custom_text_field.dart';
import 'package:cubit_test/Widgets/post_layout1.dart';
import 'package:cubit_test/Widgets/profile_pic.dart';
import 'package:cubit_test/Widgets/side_panel1.dart';
import 'package:cubit_test/Widgets/side_panel2.dart';
import 'package:cubit_test/constants.dart';
import '../Bloc/cubit.dart';
import '../Bloc/state.dart';
import 'package:cubit_test/Widgets/post_layout3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => PostCubit(),
      child: BlocConsumer<PostCubit, PostState>(
        listener: (BuildContext context, state) {},
        builder: (BuildContext context,  state) {
          return Scaffold(
            backgroundColor: Palette.scaffold,
            // appBar: AppBar(
            //   backgroundColor: Palette.facebookBlue,
            // ),
            drawer: SidePanel2(),
            appBar: AppBar(
              brightness: Brightness.light,
              centerTitle: false,
              backgroundColor: Colors.white,
              title: Expanded(
                child: Text(
                  "Facebook",
                  style: const TextStyle(
                    color: Palette.facebookBlue,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -1.2,
                  ),

                ),
              ),
              actions: [
                CircleButton(
                  icon: Icons.search,
                  iconSize: 30,
                  onPressed: () => print('search'),
                ),
                CircleButton(
                  icon: Icons.message,
                  iconSize: 30,

                  onPressed: () => print('messenger'),
                ),
                SidePanel1()


              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  CreatePostContainer(currentUser: currentUser),
                  PostLayout1(
                    imagePost: '${PostCubit.get(context).POSTS[1].imagePost}',
                    imageUser:
                        '${PostCubit.get(context).POSTS[1].user.userImage}',
                    timeAgo: 34,
                    Caption: '${PostCubit.get(context).POSTS[1].caption}',
                    name: '${PostCubit.get(context).POSTS[1].user.name}',
                    comment: '${PostCubit.get(context).firstPost}',
                    count: PostCubit.get(context).firstPost.length,
                    onSubmitted: (value){
                      PostCubit.get(context).addToFirstPost(value);
                    },
                  ),

                  PostLayout1(
                    imagePost: '${PostCubit.get(context).POSTS[2].imagePost}',
                    imageUser:
                        '${PostCubit.get(context).POSTS[2].user.userImage}',
                    timeAgo: 34,
                    Caption: '${PostCubit.get(context).POSTS[2].caption}',
                    name: '${PostCubit.get(context).POSTS[2].user.name}',
                    comment: '${PostCubit.get(context).secondPost}',
                    count: PostCubit.get(context).secondPost.length,
                    onSubmitted: (value){
                      PostCubit.get(context).addToSecondPost(value);
                    },


                  ),
                  PostLayout3(
                    imageUser:
                    '${PostCubit.get(context).POSTS[3].user.userImage}',
                    timeAgo: 34,
                    count: PostCubit.get(context).thirdPost.length,
                    comment:'${PostCubit.get(context).thirdPost}' ,
                    Caption: '${PostCubit.get(context).POSTS[3].caption}',
                    name: '${PostCubit.get(context).POSTS[3].user.name}',
                    onSubmitted: (value){
                      PostCubit.get(context).addToThirdPost(value);
                    },
                  ),
                  PostLayout3
                    (
                    imageUser:
                    '${PostCubit.get(context).POSTS[4].user.userImage}',
                    timeAgo: 34,
                    Caption: '${PostCubit.get(context).POSTS[4].caption}',
                    name: '${PostCubit.get(context).POSTS[4].user.name}',
                      count: PostCubit.get(context).fourthPost.length,
                      comment:'${PostCubit.get(context).fourthPost}',
                      onSubmitted: (value){
                      PostCubit.get(context).addToFourthPost(value);
                    },
                  ),
                 Card(
                  child: Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: Row(
                         children: [
                           ProfilePic(imageAssets: '${PostCubit.get(context).POSTS[2].user.userImage}'),
                           const SizedBox(
                             width: 8,
                           ),
                           Expanded(
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text('${PostCubit.get(context).POSTS[4].user.name}',
                                     style:  TextStyle(
                                       fontWeight: FontWeight.w600,
                                     )),
                                 Row(
                                   children: [
                                     Text(
                                       "${PostCubit.get(context).POSTS[4].timeAgo}  ",
                                       style: TextStyle(
                                         color: Colors.grey[600],
                                         fontSize: 12,
                                       ),
                                     ),
                                     Icon(
                                       Icons.public,
                                       color: Colors.grey[400],
                                       size: 12,
                                     ),
                                   ],
                                 )
                               ],
                             ),
                           ),
                           IconButton(
                             icon: const Icon(Icons.more_horiz),
                             onPressed: () => print("More Pressed"),
                           )
                         ],
                       ),
                     ),
                     CarouselSlider(items: [
                       ListView.builder(itemCount: PostCubit.get(context).images.length,itemBuilder: (context,index){
                         return Column(
                           children: [

                             Image.asset('${PostCubit.get(context).images[index]}'),
                           ],
                         );
                       },)
                     ]
                       , options: CarouselOptions(
                         height: 180.0,
                         enlargeCenterPage: true,
                         autoPlay: true,
                         aspectRatio: 16 / 9,
                         autoPlayCurve: Curves.easeInCirc,
                         enableInfiniteScroll: true,
                         autoPlayAnimationDuration: Duration(milliseconds: 800),
                         viewportFraction: 0.8,
                       ),
                     ),
                     Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: TextField(
                         decoration: InputDecoration(
                             hintText: 'write a comment',
                             border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(15),
                             )
                         ),
                         onSubmitted: (value){
                           PostCubit.get(context).addToFourthPost(value);

                         },


                       ),
                     ),
                   ],
                 ),
               )
                  //
                    // ],
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

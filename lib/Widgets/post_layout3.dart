
import 'package:cubit_test/Models/post.dart';
import 'package:cubit_test/Widgets/profile_pic.dart';
import 'package:cubit_test/constants.dart';
import 'package:flutter/material.dart';

class PostLayout3 extends StatelessWidget {
  final String imageUser;
  final String name,Caption;
  final int timeAgo;
  final int count;
  final String comment;
  final FormFieldSetter<String> onSubmitted;

  const PostLayout3({required this.count,required this.comment,required this.onSubmitted,required this.imageUser,required this.Caption,  required this.name, required this.timeAgo}) ;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Card(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                ProfilePic(imageAssets: imageUser),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                          )),
                      Row(
                        children: [
                          Text(
                            "${timeAgo}  ",
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
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(Caption,style: Palette.caption,),
                  ],
                ),
              ),

            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: InkWell(
                onTap: (){
                  showDialog(context: context,
                      builder: (context){
                        return AlertDialog(
                          //title: new Text("Alert Dialog title"),
                          content: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15))
                            ),
                            child: SizedBox(
                              width: width,
                              height: height,
                              child: ListView.builder(

                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Comments : ",
                                        style: TextStyle(fontSize: 40, color: Colors.black),
                                      ),

                                      Text(

                                        comment
                                        ,
                                        style: TextStyle(fontSize: 25),
                                      )
                                    ],
                                  );
                                },
                                itemCount: count,
                              ),
                            ),
                          ),

                        );
                      });

                },
                child: Text('View Comments')),
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [

                  Icon(Icons.thumb_up_alt_sharp ,color: Palette.colorIcon,),
                  SizedBox(width: 5,),
                  Text('like'),
                ],
              ),
              Row(
                children: [


                  Icon(Icons.mode_comment_outlined,color: Palette.colorIcon,),
                  SizedBox(width: 5,),
                  Text('comment'),
                ],
              ),

            ],
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'write a comment',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  )
              ),
              onSubmitted: onSubmitted,


            ),
          ),

        ],
      ),
    );
  }
}
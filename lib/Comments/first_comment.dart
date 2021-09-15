import 'package:cubit_test/Bloc/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FirstComment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return BlocProvider(

      create: (BuildContext context) =>PostCubit(),
      child: Scaffold(
          appBar: AppBar(
            title: Text("First Post Page"),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: width * 0.03, vertical: height * 0.03),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (index == 0)
                      Text(
                        "Comments : ",
                        style: TextStyle(fontSize: 40, color: Colors.red),
                      ),
                    if (index == 0) SizedBox(height: height * 0.05),
                    Text(
                      "",
                      style: TextStyle(fontSize: 25),
                    )
                  ],
                );
              },
              itemCount:2,
            ),
          )),
    );
  }
}

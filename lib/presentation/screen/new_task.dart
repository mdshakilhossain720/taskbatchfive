import 'package:flutter/material.dart';

import 'package:taskbatchfive/presentation/widgets/backgroundwidget.dart';

class NewTaskScreen extends StatelessWidget {
  const NewTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),),
      appBar: AppBar(
          backgroundColor: Colors.green,
          title: Row(
            children: [
              CircleAvatar(),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Shakil Hossain",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    Text(
                      "mdshakilhossain720@gmail.com",
                      style: TextStyle(fontSize: 13, color: Colors.black),
                    ),
                  ],
                ),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
            ],
          ),
        ),
      
      body: BackGrounWidget(
          child: Column(
        children: [
          taskcounter,
          ListView.builder(itemBuilder: (context,index){
             return Card(
               color: Colors.white,
               margin: EdgeInsets.symmetric(horizontal: 8,vertical: 5),
               child: Padding(padding: EdgeInsets.symmetric(horizontal: 12),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text("this is the best"),
                   Text("this is the bangladrsh is the best"),
                   Text("bangladrsh is the country name "),
                   Row(
                     children: [
                       Chip(label:Text("New") ),
                       Spacer(),
                       IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
                       IconButton(onPressed: (){}, icon: Icon(Icons.delete)),


                     ],
                   )

                 ],
               ),

               ),
             );
          })

        ],
      )),
    );
  }
  Widget get taskcounter{
    return ListView.separated(
      itemCount: 4,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return NewTaskAdd(
          amount: "New",
          taka: "50",
        );
      },
      separatorBuilder: (con, index) {
        return SizedBox(
          width: 8,
        );
      },
    );
  }
}

class NewTaskAdd extends StatelessWidget {
  const NewTaskAdd({super.key, this.amount, this.taka});

  final amount;
  final taka;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            children: [
              Text(
                amount,
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
              Text(
                taka,
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

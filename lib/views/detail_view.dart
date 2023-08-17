import 'package:flutter/material.dart';

class DetailView extends StatelessWidget{
  
  final int index;
  const DetailView(
    {
      super.key,
      required this.index,
      
    }
    
    );
    
    

  @override
  Widget build(BuildContext context) {
    
    print("${index} mahdi");

    return const SafeArea(child: Scaffold(
      
      body: Text("index"),));
  }


}
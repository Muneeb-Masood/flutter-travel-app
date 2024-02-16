import 'package:flutter/material.dart';

class Concept extends StatefulWidget {
  const Concept({super.key});

  @override
  State<Concept> createState() => _ConceptState();
}

class _ConceptState extends State<Concept> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body: Container(
     color:Colors.red,
     child: Column(
       children: [
         Container(

     color: Colors.green,
             child: Column(
               children: [Expanded(child: Text("Mai Text hoon"))],
             ),

         )
       ],
     ),
   ),
    );
  }
}

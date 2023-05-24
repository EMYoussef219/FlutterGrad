import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage('https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_250,q_auto:good,w_250/v1/gcs/platform-data-dsc/events/IMG_4510_MdEL17t.jpg'),
            ),
            SizedBox(width: 15.0,),
            Text('Chats',
            style: TextStyle(
              color: Colors.black,
            ),),
          ],
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.blue,
                child: Icon(Icons.camera_alt,
                  size: 16.0,
                  color: Colors.white,
                    ),
              )),
          IconButton(
              onPressed: (){},
              icon: CircleAvatar(
                radius: 15.0,
                backgroundColor: Colors.blue,
                child: Icon(Icons.edit,
                  size: 16.0,
                  color: Colors.white,
                ),
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start  ,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.grey[300],
                ),
                padding: EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                    ),
                    SizedBox(width: 15.0,),
                    Text(
                        'Search'
                    ),
                  ],
                ),
              ),
              SizedBox(height:20.0 ,),
              Container(
                height:100.0 ,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                    itemBuilder: (context , index)=> buildStoryItem(),
                    separatorBuilder: (context,index)=>SizedBox(
                      width: 20.0,
                    ),
                  itemCount: 5 ,
                ),
              ),
              SizedBox(height:20.0 ,),
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                  itemBuilder: (context,index)=> buildChatItem(),
                  separatorBuilder: (context,index)=>SizedBox(
                    height: 20.0,
                  ),
                  itemCount: 15),
            ],
          ),
        ),
      ),
    );
  }

  // 1. Build item
   Widget buildChatItem() => Row (
     children: [
       Stack(
         alignment:AlignmentDirectional.bottomEnd ,
         children: [
           CircleAvatar(
             radius: 30.0,
             backgroundImage: NetworkImage('https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_250,q_auto:good,w_250/v1/gcs/platform-data-dsc/events/IMG_4510_MdEL17t.jpg'),
           ),
           CircleAvatar(
             radius: 7.2,
             backgroundColor: Colors.white,
           ),
           Padding(
             padding: const EdgeInsetsDirectional.only(
               bottom: 2.0,
               end: 2.0,
             ),
             child: CircleAvatar(
               radius: 7.0,
               backgroundColor: Colors.green,
             ),
           ),

         ],
       ),
       SizedBox(width: 20.0,),
       Expanded(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text('Abdullah Ahmed Mohamed ',
               maxLines: 1,
               overflow: TextOverflow.ellipsis,
               style: TextStyle(
                 fontSize: 16.0,
                 fontWeight: FontWeight.bold,
               ),),
             SizedBox(height: 5.0,),
             Row(
               children: [
                 Expanded(
                   child: Text(
                     'Hello my friend iam Abdullah ahmed i would like to thank you for the last night ',
                     maxLines: 2,
                     overflow: TextOverflow.ellipsis,
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal:10.0 ),
                   child: Container(
                     width: 6.0,
                     height: 6.0,
                     decoration: BoxDecoration(
                       color: Colors.blue,
                       shape: BoxShape.circle,
                     ),
                   ),
                 ),
                 Text(
                   '05:00 pm ',
                 ),
               ],
             ),
           ],
         ),
       ),

     ],
   );
   Widget buildStoryItem() => Container(
     width: 60.0,
     child: Column(
       children: [
         Stack(
           alignment:AlignmentDirectional.bottomEnd ,
           children: [
             CircleAvatar(
               radius: 30.0,
               backgroundImage: NetworkImage('https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_250,q_auto:good,w_250/v1/gcs/platform-data-dsc/events/IMG_4510_MdEL17t.jpg'),
             ),
             CircleAvatar(
               radius: 7.2,
               backgroundColor: Colors.white,
             ),
             Padding(
               padding: const EdgeInsetsDirectional.only(
                 bottom: 2.0,
                 end: 2.0,
               ),
               child: CircleAvatar(
                 radius: 7.0,
                 backgroundColor: Colors.green,
               ),
             ),

           ],
         ),
         SizedBox(height: 6.0,),
         Text(
           'Abdullah Mansour ali ahmed',
           maxLines: 2,
           overflow: TextOverflow.ellipsis,
           style: TextStyle(

           ),
         ),
       ],
     ),
   );
}

import 'package:bookingapp/utils/Constants/Const_Colors.dart';
import 'package:flutter/material.dart';

class Customdrawer extends StatelessWidget {
  const Customdrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 250,
            color: Tcolors.buttoncolor,
            child: Stack(
              children: [
                // Back button positioned at the top-right corner
                Positioned(
                  top: 20,
                  right: 20,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context); // Close the drawer
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 6,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Image(image: AssetImage('images/back.png')),
                    ),
                  ),
                ),

                // Profile Image
                Positioned(
                  top: 50,
                  left: 50,

                  bottom: 40,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('images/user.png'), // Profile image
                        radius: 50,
                        backgroundColor: Colors.white,
                        // Radius for the avatar
                      ),
                      SizedBox(height: 5,),
                      Text("Carson",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                      SizedBox(height: 5,),
                      Text("carson@mobility.com",style: TextStyle(color:Colors.white,fontSize: 15),),

                    ],
                  ),
                ),

                // Edit Icon inside a round container, positioned on the top-right of the profile image
                Positioned(
                  top: 50,
                  left:  30,
                  right: 50,
                  child: GestureDetector(
                    onTap: () {
                      // Handle profile edit logic here
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Tcolors.buttoncolor, // Background color for the edit icon
                        shape: BoxShape.circle,
                      ),
                      child:Image(image: AssetImage('images/edit.png'))
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40,),

          CustomText(text: 'RIDE HISTORY',),
          CustomText(text: 'PAYMENT',),
          CustomText(text: 'PROMOCODE',),
          CustomText(text: 'SUPPORT',),
          Spacer(),

          GestureDetector(
             onTap:  (){},// write you logout logic
            child: Padding(
              padding: const EdgeInsets.only(left: 50,bottom:40),
              child: Text('Sign out',style: TextStyle(color: Tcolors.buttoncolor),),
            ),
          )

          

        ],
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40,bottom: 40),
      child: Text(
        text,
        style: const TextStyle(
          color: Tcolors.AppbartitleColor,
          fontWeight:FontWeight.bold,// Using your custom blue color
          fontSize: 16,
        ),
      ),
    );
  }
}


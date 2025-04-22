import 'package:flutter/material.dart';
import '../../Widget/Custom_Headers.dart';
import '../../Widget/Draggablescroller.dart';
import '../../utils/Constants/Const_Colors.dart';
import 'CustomWidgets/AddressInputs.dart';
import 'CustomWidgets/RecentAddressList.dart';

class Selectaddresspage extends StatefulWidget {
  const Selectaddresspage({super.key});

  @override
  State<Selectaddresspage> createState() => _SelectaddresspageState();
}

class _SelectaddresspageState extends State<Selectaddresspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context); // Close the drawer
                    },
                    child: Container(
                      height: 50,
                      width: 50,
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
                  SizedBox(width: 30,),
                  headers(title: 'SelectAddress',)
                ],
              ),
            ),
            const SizedBox(height: 10), // Space from top
            Expanded(
              child: CustomdraggableScroller(
                initialsize: 0.9,
                maxchildsize: 1.0,
                minchildsize: 0.1,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(left: 150,top: 20,bottom: 40),
                        child: Container(
                          height: 5, width: 50,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(20)
                          ),
                        ),
                      ),

                      customAddressInput(),
                      Padding(
                        padding: const EdgeInsets.only(left: 20,top: 20,bottom: 20),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                alignment: PlaceholderAlignment.middle,
                                child: Image.asset(
                                  'images/ic_loc.png',

                                ),
                              ),
                              const TextSpan(
                                text: 'Show on map ',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 20,
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30,top: 10,bottom: 20),
                        child: Text("RECENT",
                          style:TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.bold),),
                      ),

                      Listile(title: 'Kings Cross Underground station',subtitle: 'new york',)
                      
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}






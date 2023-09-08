import 'package:flutter/material.dart';
import 'package:flutter_application/payment_view.dart';


class ProfileView extends StatelessWidget {
const ProfileView(
    {super.key});

@override

Widget build(BuildContext context) {
    return 
    Container(
      alignment: Alignment.topLeft,
      color: const Color.fromRGBO(224, 231, 255, 1),

      child: Padding(
          padding:  const EdgeInsets.all(15.0),
          child:  ListView(
            children:  [
      
             ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(15)), 
                    child: 

                    Container(
                      color: Colors.white,
                      padding: const EdgeInsets.all(16),
                      child:
                      
                       Row(children: [

                        
                        Column(
                          children: [
                          const Text("Your Photo", style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          )),

                                          const SizedBox(height: 20),
                          ClipRRect(
                                    borderRadius: const BorderRadius.all(Radius.circular(50)), 
                                    child: 
                                    Image.network(
                                        'https://fictionhorizon.com/wp-content/uploads/2023/01/gojo-4.jpg',
                                        height: 100,
                                        width: 100,
                                      )
                                    ),
                        ],
                      ),

                  const SizedBox(width: 17),

                   const Column(
                          children: [

                            SizedBox(height: 80),
                             SizedBox(
                      // width: double.infinity,
                      height: 48.0,
                      child: ClipRRect(borderRadius: BorderRadius.all(Radius.circular(24)),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll<Color>(Color.fromRGBO(245, 244, 244, 1)),
                              foregroundColor: MaterialStatePropertyAll<Color>(Colors.black),
                             ),
                              onPressed: null,
                              child: Row(children: [
                                Icon(Icons.camera_alt_rounded),
                                SizedBox(width: 7),
                                Text('Upload New',
                                          style: TextStyle(color: Colors.black, 
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                      )
                              ],)
                        ),
                    ),)]),
                    
                          const Spacer()
                      ],)
                  ) 
             ),

            const SizedBox(height: 20),

             ////// Second Item
             ///
                 ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(15)), 
                            child:   Container(
                                            alignment: Alignment.topLeft,
                                            color: Colors.white,
                                            padding:  const EdgeInsets.all(16),
                                            child:  Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                             
                                           const  Row(children: [ Text("Basic information",
                                               textAlign: TextAlign.left,
                                                            style: TextStyle(
                                                                fontSize: 16,
                                                                fontWeight: FontWeight.bold,
                                                                )
                                                              )],
                                                ),

            const SizedBox(height: 20),


                 ClipRRect(borderRadius: const BorderRadius.all(Radius.circular(5)), 
                          child:    Container(color: const Color.fromRGBO(245, 244, 244, 1), 
                          height: 48,
                          child: const TextField(autocorrect: true,
                                                            decoration: InputDecoration(
                                                               suffixIconColor: Colors.black,
                                                               prefixIconColor: Colors.black,
                                                               border: InputBorder.none,
                                                               hintText: 'Your Name',
                                                               prefixIcon: Icon(Icons.supervised_user_circle_outlined),
                                                               suffixIcon: Icon(Icons.cancel_sharp),
                                                               hintStyle: TextStyle(color: Colors.grey)
                                                            ),
                                                          )
                                              )
                 ),

            const SizedBox(height: 15),


            ClipRRect(borderRadius: const BorderRadius.all(Radius.circular(5)), 
                          child:    Container(color: const Color.fromRGBO(245, 244, 244, 1), 
                          height: 48,
                          child: const TextField(autocorrect: true,
                                                            decoration: InputDecoration(
                                                               prefixIconColor: Color.fromRGBO(79, 70, 229, 1),
                                                               border: InputBorder.none,
                                                               hintText: 'Website',
                                                               prefixIcon: Icon(Icons.account_box),
                                                               hintStyle: TextStyle(color: Colors.grey)
                                                            ),
                                                          )
                                              )
                 ),

            const SizedBox(height: 15),

             const CustomTextField(
              name: "UserName ", 
              prefixIcon: "assets/arroba.png",
              suffixIcon: ""),


            // ClipRRect(borderRadius: const BorderRadius.all(Radius.circular(5)), 
            //               child:    Container(color: const Color.fromRGBO(245, 244, 244, 1), 
            //               height: 48,
            //               child: const TextField(autocorrect: true,
            //                                                 decoration: InputDecoration(
            //                                                    suffixIconColor: Colors.green,
            //                                                    prefixIconColor: Colors.black,
            //                                                    border: InputBorder.none,
            //                                                    hintText: 'UserName',
            //                                                    prefixIcon: Icon(Icons.call_to_action_rounded),
            //                                                    suffixIcon: Icon(Icons.check_circle_outline),
            //                                                    hintStyle: TextStyle(color: Colors.grey)
            //                                                 ),
            //                                               )
            //                                   )
            //      ),


            const SizedBox(height: 5),


                const SizedBox(
                  child: Text(
                    "material.me/nedielee",
                    style:
                        TextStyle(color: Color.fromRGBO(148, 163, 184, 1), 
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ),


            const SizedBox(height: 15),


              ClipRRect(borderRadius: const BorderRadius.all(Radius.circular(5)), 
                          child:    Container(color: const Color.fromRGBO(245, 244, 244, 1), 
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          // height: 48,
                          child: const TextField(
                            autocorrect: true,
                            keyboardType: TextInputType.multiline,
                            minLines: 1,
                            maxLines: 5,
                                                            decoration: InputDecoration(
                                                              //  suffixIconColor: Colors.green,
                                                              //  prefixIconColor: Colors.black,
                                                               border: InputBorder.none,
                                                               hintText: 'About',
                                                              //  prefixIcon: Icon.new,
                                                              //  suffixIcon: Icon(Icons.check_circle_outline),
                                                               hintStyle: TextStyle(color: Colors.grey)
                                                            ),
                                                          )
                                              )
                 )

                                   
                                 ],)
                         )
                    ),



///// third section
///

const SizedBox(height: 20),



                const SocialLogin(),

                const SizedBox(height: 20),


                const PaymentMethod()




    ],
    )
    )
    );
  }
}


class HeaderLabel extends StatelessWidget {
   const HeaderLabel(
      {super.key,
      required this.name});
  
  final String name;
   
    @override

    Widget build(BuildContext context) =>
            Row(children: [ Text(name,
                                               textAlign: TextAlign.left,
                                                            style: const TextStyle(
                                                                fontSize: 16,
                                                                fontWeight: FontWeight.bold,
                                                                )
                                                              )],
                                                );
      
    }



  class CustomTextField extends StatelessWidget {
   const CustomTextField(
      {
        super.key,
        required this.name,
        required this.prefixIcon,
        required this.suffixIcon,
        this.suffixIconColor,
        this.prefixIconColor,
   
      });
  
  final String name;
  final String prefixIcon;
  final String suffixIcon;
  final Color? suffixIconColor;
  final Color? prefixIconColor;
   
    @override

    

    Widget build(BuildContext context) =>
            ClipRRect(borderRadius: const BorderRadius.all(Radius.circular(5)), 
                          child:    Container(color: const Color.fromRGBO(245, 244, 244, 1), 
                          height: 48,
                          child:  TextField(autocorrect: true,
                                                            decoration: InputDecoration(
                                                               suffixIconColor: suffixIconColor,
                                                               prefixIconColor: prefixIconColor,
                                                               border: InputBorder.none,
                                                               hintText: name,
                                                               prefixIcon: prefixIcon.isEmpty ? null : Image(image: AssetImage(prefixIcon)) ,
                                                               suffixIcon: suffixIcon.isEmpty ? null  : Image(image: AssetImage(prefixIcon)),
                                                               hintStyle: const TextStyle(color: Colors.grey)
                                                            ),
                                                          )
                                              )
                 );
      
    }


class SocialLogin extends StatelessWidget {
   const SocialLogin(
      {super.key});
  
   
    @override

    Widget build(BuildContext context) =>
             ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(15)), 
                            child:   Container(
                                            alignment: Alignment.topLeft,
                                            color: Colors.white,
                                            padding:  const EdgeInsets.all(16),
                                            child: const Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                             

                                            HeaderLabel(name: "Social accounts"),
                                           

             SizedBox(height: 20),

             CustomTextField(
              name: "Instagram ", 
              prefixIcon: "assets/instagram.png",
              suffixIcon: ""),

             SizedBox(height: 15),


             CustomTextField(
              name: "Facebook", 
              prefixIcon: "assets/facebook.png",
              suffixIcon: ""),
              

             SizedBox(height: 15),

             CustomTextField(
              name: "Linkedin", 
              prefixIcon: "assets/linked.png",
              suffixIcon: ""),

             SizedBox(height: 5)

                                   
                                 ],)
                         )
                    );
      
    }





class PaymentMethod extends StatelessWidget {
    const PaymentMethod(
        {super.key});
   
    @override
     Widget build(BuildContext context) =>
             ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(15)), 
                            child:   Container(
                                            alignment: Alignment.topLeft,
                                            color: Colors.white,
                                            padding:  const EdgeInsets.all(16),
                                            child: const Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                             

                                            HeaderLabel(name: "Payment Methods"),
                                           

             SizedBox(height: 20),


              // CustomTextField(
              // name: "Address ", 
              // prefixIcon: "",
              // suffixIcon: ""),


              SizedBox(height: 80, child: 
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                CardTextFields(),
                Text("Enter your bank card number",
                    style:
                        TextStyle(color: Color.fromRGBO(148, 163, 184, 1), 
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  )
              ],)
                        
                ),

                // const SizedBox(height: 5),





                SizedBox(height: 20),

                // SizedBox(height: 60, child: 
                //         CustomDropdownMenuExample(name: "love")
                // ),

// - assets/card.png
//     - assets/cancel.png
//     - assets/calendar.png


             CustomTextField(
              name: "mm/yyyy ", 
              prefixIcon: "assets/calendar.png",
              suffixIcon: ""),

          SizedBox(height: 5),

               SizedBox(
                  child: Text(
                    "Card expiration date",
                    style:
                        TextStyle(color: Color.fromRGBO(148, 163, 184, 1), 
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ),

             SizedBox(height: 15),
             


             CustomTextField(
              name: "000", 
              prefixIcon: "assets/card.png",
              suffixIcon: ""),
              

                       SizedBox(height: 5),

               SizedBox(
                  child: Text(
                    "Enter CVV code",
                    style:
                        TextStyle(color: Color.fromRGBO(148, 163, 184, 1), 
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ),

             SizedBox(height: 15),


             SizedBox(
                      // width: double.infinity,
                      height:32.0,
                      width: 160,
                      child: ClipRRect(borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll<Color>(Color.fromRGBO(22, 163, 74, 0.2)),
                              foregroundColor: MaterialStatePropertyAll<Color>(Colors.white),
                          ),
                            onPressed: null,
                            child: Row(children: [
                              
                              Icon(Icons.thumb_up, color: Colors.green),

                                SizedBox(width: 10),

                              Text('Autosaved', style: TextStyle(
                                color: Colors.green, 
                                fontSize: 16,
                                fontWeight: FontWeight.bold),)

                            ],)
                        ),
                    ),)


            //  CustomTextField(
            //   name: "Linkedin", 
            //   prefixIcon: "assets/linked.png",
            //   suffixIcon: ""),

            //  SizedBox(height: 5)

                                   
                                 ],)
                         )
                    );
      
    }

    // Widget build(BuildContext context) {

    //     return  
    //                  ClipRRect(
    //                   borderRadius: const BorderRadius.all(Radius.circular(15)), 
    //                   child:

        
        
    //     Container(
    //       color: Colors.white,
    //       margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
    //       child: const Padding(
    //       padding:  EdgeInsets.all(15.0),
    //       child: ClipRRect(
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             Text(
    //               "Payment Details",
    //               style: TextStyle(
    //                 fontSize: 16.0,
    //                 fontWeight: FontWeight.w600,
    //                 color: Colors.black,
    //               ),
    //             ),

    //              SizedBox(height: 25),

                

    //              SizedBox(height: 80, child: 
    //                     CardTextFields()
    //             ),

    //             SizedBox(height: 60, child: 
    //                     CustomDropdownMenuExample(name: "love")
    //             ),

    //             SizedBox(height: 10),

    //             SizedBox(height: 20),

    //               Text(
    //               "Billing Address",
    //               style: TextStyle(
    //                 fontSize: 16.0,
    //                 fontWeight: FontWeight.w600,
    //                 color: Colors.black,
    //               ),
    //             ),

    //                 SizedBox(height: 25),

    //             TextField(
    //               minLines: 2,
    //               maxLines: 5,
    //               keyboardType: TextInputType.multiline,
    //               decoration:  InputDecoration(
    //                                 enabledBorder:  OutlineInputBorder(
    //                                                       borderSide:  BorderSide(color: Colors.grey, width: 2.0),
    //                                                 ),
    //                                 focusedBorder: OutlineInputBorder(
    //                                 borderSide:  BorderSide(color: Color.fromRGBO(99, 102, 241, 1), width: 2.0),
    //                                 ),
    //                   // border: ...
    //                           ),
    //               ),

    //                 SizedBox(height: 40),
                    
    //                 SizedBox(
    //                   width: double.infinity,
    //                   height: 48.0,
    //                   child: ClipRRect(borderRadius: BorderRadius.all(Radius.circular(24)),
    //                     child: ElevatedButton(
    //                       style: ButtonStyle(
    //                           backgroundColor: MaterialStatePropertyAll<Color>(Color.fromRGBO(99, 102, 241, 1)),
    //                           foregroundColor: MaterialStatePropertyAll<Color>(Colors.white),
    //                       ),
    //                         onPressed: null,
    //                         child: Text('Submit',
    //                       style:
    //                     TextStyle(color: Colors.white, 
    //                     fontSize: 16,
    //                     fontWeight: FontWeight.bold),)
    //                     ),
    //                 ),
    //                 ),

    //             SizedBox(height: 15)

                    

    //           ],

              
    //         ),
    //       ),
    //       ),
          
            
    //     ));
    //   }
    // }
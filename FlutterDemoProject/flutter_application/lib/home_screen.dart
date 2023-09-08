    import 'package:flutter/material.dart';
import './payment_view.dart';  


    class HomeScreen extends StatelessWidget {
    const HomeScreen({super.key});
    

    @override  
    Widget build(BuildContext context) {  

// Color blueColor = HexColor("#EEF2FF");
      
        return ListView(children: const [ 
                    SingleChoice(),

                    ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(25)), 
                        child: ItemView()),

                      SizedBox(
                           child: Text(
                                   "By continuing, you are agreening to our Subscriber Terms. You will be automatically charged at the end of the Trial Period, including any applicable taxes.",
                                      style: TextStyle(color: Color.fromRGBO(148, 163, 184, 1), 
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                    )),

                    PaymentView(),
                     
                    Spacer()
          ],);


//       return ListView(
//           // color : blueColor,  
//           // child:  const Padding( padding:  EdgeInsets.all(15.0),
//           child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: ,
//         ))
          
// ,  
//         );  
    }  
    }  




    class SingleChoice extends StatefulWidget {
    const SingleChoice({super.key});

    @override
    State<SingleChoice> createState() => _SingleChoiceState();
    }


    enum Calendar { general, inbox, media, message }

    class _SingleChoiceState extends State<SingleChoice> {
    Calendar calendarView = Calendar.general;

    @override
    Widget build(BuildContext context) {
      return  const  Row(
                children: [
                    SegmentButtonView(name: "General"),
                    SegmentButtonView(name: "Inbox"),
                    SegmentButtonView(name:"Media & Data"),
                    SegmentButtonView(name: "Messages"),
                ],
            );
    }
    }


class MyClip extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return const Rect.fromLTWH(50, 0, 300, 300);
  }

  @override
  bool shouldReclip(oldClipper) {
    return false;
  }
}

    class ItemView extends StatelessWidget {
    const ItemView(
        {super.key});
   
    @override

    Widget build(BuildContext context) {

        return  Container(
          color: Colors.white,
          margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
          child: const Padding(
          padding:  EdgeInsets.all(15.0),
          child: ClipRRect(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Text(
                  "Billing",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),

                SizedBox(height: 25),

                SizedBox(height: 60, child: 
                  DropdownMenuExample()
                ),


                

                // TextField(
                //     decoration: InputDecoration(
                //       border: OutlineInputBorder(),
                //       hintText: 'Enter a search term',
                //     ),
                //   ),

                SizedBox(height: 10),

                Row(children: [
                  Text(
                    "Due in 30 days",
                    style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  )
                  ),

                Spacer(),

                  Text(
                    "99.95",
                    style:
                        TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  )
                  )
                ],),
                
                SizedBox(height: 10),

                Row(children: [
                  Text(
                    "Annual Savings",
                    style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.green,
                  )
                  ),

                Spacer(),

                  Text(
                    "12.95",
                    style:
                        TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.green,
                  )
                  )
                ],),


                   SizedBox(height: 10),


                Divider(
                    color: Color.fromRGBO(226, 232, 240, 1),
                  ),

                SizedBox(height: 10),


                Row(children: [
                  Text(
                    "Due Today",
                    style: TextStyle(
                      fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  )
                  ),

                Spacer(),

                  Text(
                    "00.95",
                    style:
                        TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  )
                  )
                ],),

                SizedBox(height: 10),

                SizedBox(
                  child: Text(
                    "Once you start your trial, you’ll have 30 days to use Premium Plan for free. After 30 days you’ll be charged based on your selected plan.",
                    style:
                        TextStyle(color: Color.fromRGBO(148, 163, 184, 1), 
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ),

                SizedBox(height: 20),


                    SizedBox(
                      width: double.infinity,
                      height: 48.0,
                      child: ClipRRect(borderRadius: BorderRadius.all(Radius.circular(24)),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll<Color>(Color.fromRGBO(99, 102, 241, 1)),
                              foregroundColor: MaterialStatePropertyAll<Color>(Colors.white),
                          ),
                            onPressed: null,
                            child: Text('Start Free Trial',
                          style:
                        TextStyle(color: Colors.white, 
                        fontSize: 16,
                        fontWeight: FontWeight.w500),)
                        ),
                    ),),

                SizedBox(height: 15)

                    

              ],

              
            ),
          ),
          ),
          
            
        );
      }
    }
      



class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      // ignore: prefer_interpolation_to_compose_strings
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}




class SegmentButtonView extends StatelessWidget {
const SegmentButtonView(
    {super.key,
    required this.name});

final String name;

@override

Widget build(BuildContext context) {
    return   SizedBox(
      height: 50,
      child:  Row(
      children: [
        TextButton(
            onPressed: null,
            child:  Text(
                          name,
                          style: const TextStyle(
                            color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                          )
                        ),
                        
          ),
const ColoredBox(color: Colors.amber),
          const Divider(
                  color: Colors.black,
                )

    ],
    )
    );
  }
}
  





//// TextField
///
///
///

class DropdownMenuExample extends StatefulWidget {
  const DropdownMenuExample({super.key});

  @override
  State<DropdownMenuExample> createState() => _DropdownMenuExampleState();
}

class _DropdownMenuExampleState extends State<DropdownMenuExample> {
  final TextEditingController colorController = TextEditingController();
  final TextEditingController iconController = TextEditingController();
  ColorLabel? selectedColor;
  IconLabel? selectedIcon;

  @override
  Widget build(BuildContext context) {
    final List<DropdownMenuEntry<ColorLabel>> colorEntries =
        <DropdownMenuEntry<ColorLabel>>[];
    for (final ColorLabel color in ColorLabel.values) {
      colorEntries.add(
        DropdownMenuEntry<ColorLabel>(
            value: color, label: color.label, enabled: color.label != 'Grey'),
      );
    }

    final List<DropdownMenuEntry<IconLabel>> iconEntries =
        <DropdownMenuEntry<IconLabel>>[];
    for (final IconLabel icon in IconLabel.values) {
      iconEntries
          .add(DropdownMenuEntry<IconLabel>(value: icon, label: icon.label));
    }

    return   DropdownMenu<ColorLabel>(
                      textStyle: const TextStyle(color: Color.fromRGBO(148, 163, 184, 1), 
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                      width: (MediaQuery.of(context).size.width - 30),
                      initialSelection: ColorLabel.green,
                      controller: colorController,
                      label: const Text('Plan', style: TextStyle(color: Colors.black, 
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
                      dropdownMenuEntries: colorEntries,
                      onSelected: (ColorLabel? color) {
                        setState(() {
                          //selectedColor = color;
                        });
                      },
                    );
  }
}

enum ColorLabel {
  blue('Annual Plan', Colors.blue),
  pink('Annual Plan', Colors.pink),
  green('Annual Plan', Colors.green),
  yellow('Annual Plan', Colors.yellow),
  grey('Annual Plan', Colors.grey);

  const ColorLabel(this.label, this.color);
  final String label;
  final Color color;
}

enum IconLabel {
  smile('Smile', Icons.sentiment_satisfied_outlined),
  cloud(
    'Cloud',
    Icons.cloud_outlined,
  ),
  brush('Brush', Icons.brush_outlined),
  heart('Heart', Icons.favorite);

  const IconLabel(this.label, this.icon);
  final String label;
  final IconData icon;
}
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PaymentView extends StatelessWidget {
    const PaymentView(
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
                  "Payment Details",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),

                 SizedBox(height: 25),

                

                 SizedBox(height: 80, child: 
                        CardTextFields()
                ),

                SizedBox(height: 60, child: 
                        CustomDropdownMenuExample(name: "love")
                ),


                

                // TextField(
                //     decoration: InputDecoration(
                //       border: OutlineInputBorder(),
                //       hintText: 'Enter a search term',
                //     ),
                //   ),

                SizedBox(height: 10),

                // Row(children: [
                //   Text(
                //     "Due in 30 days",
                //     style: TextStyle(
                //     fontWeight: FontWeight.w600,
                //     color: Colors.black,
                //   )
                //   ),

                // Spacer(),

                //   Text(
                //     "99.95",
                //     style:
                //         TextStyle(
                //     fontWeight: FontWeight.w600,
                //     color: Colors.black,
                //   )
                //   )
                // ],),
                
                // SizedBox(height: 10),

                // Row(children: [
                //   Text(
                //     "Annual Savings",
                //     style: TextStyle(
                //     fontWeight: FontWeight.w600,
                //     color: Colors.green,
                //   )
                //   ),

                // Spacer(),

                //   Text(
                //     "12.95",
                //     style:
                //         TextStyle(
                //     fontWeight: FontWeight.w600,
                //     color: Colors.green,
                //   )
                //   )
                // ],),


                //    SizedBox(height: 10),


                // Divider(
                //     color: Color.fromRGBO(226, 232, 240, 1),
                //   ),

                // SizedBox(height: 10),


                // Row(children: [
                //   Text(
                //     "Due Today",
                //     style: TextStyle(
                //       fontSize: 16,
                //     fontWeight: FontWeight.w600,
                //     color: Colors.black,
                //   )
                //   ),

                // Spacer(),

                //   Text(
                //     "00.95",
                //     style:
                //         TextStyle(
                //     fontSize: 16,
                //     fontWeight: FontWeight.w600,
                //     color: Colors.black,
                //   )
                //   )
                // ],),

                // SizedBox(height: 10),

                // SizedBox(
                //   child: Text(
                //     "Once you start your trial, you’ll have 30 days to use Premium Plan for free. After 30 days you’ll be charged based on your selected plan.",
                //     style:
                //         TextStyle(color: Color.fromRGBO(148, 163, 184, 1), 
                //         fontSize: 14,
                //         fontWeight: FontWeight.w400),
                //   ),
                // ),

              


                SizedBox(height: 20),

                  Text(
                  "Billing Address",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),

                // const TextFormField(),

                //  TextFormField(
                //   minLines: 2,
                //   maxLines: 5,
                //   keyboardType: TextInputType.multiline,
                //   decoration: InputDecoration(
                //     hintText: 'description',
                //     hintStyle: TextStyle(
                //       color: Colors.grey
                //     ),
                //     border: OutlineInputBorder(
                //       borderRadius: BorderRadius.all(Radius.circular(20.0)),
                //     ),
                //   ),
                // ) ,
                    SizedBox(height: 25),

                TextField(
                  minLines: 2,
                  maxLines: 5,
                  keyboardType: TextInputType.multiline,
                  decoration:  InputDecoration(
                                    enabledBorder:  OutlineInputBorder(
                                                          borderSide:  BorderSide(color: Colors.grey, width: 2.0),
                                                    ),
                                    focusedBorder: OutlineInputBorder(
                                    borderSide:  BorderSide(color: Color.fromRGBO(99, 102, 241, 1), width: 2.0),
                                    ),
                      // border: ...
                              ),
                  ),

                    SizedBox(height: 40),
                    
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
                            child: Text('Submit',
                          style:
                        TextStyle(color: Colors.white, 
                        fontSize: 16,
                        fontWeight: FontWeight.bold),)
                        ),
                    ),
                    ),

                SizedBox(height: 15)

                    

              ],

              
            ),
          ),
          ),
          
            
        );
      }
    }





class CustomDropdownMenuExample extends StatefulWidget {
  const CustomDropdownMenuExample({super.key,
  required this.name});

  final String name;

  @override
  State<CustomDropdownMenuExample> createState() => _CustomDropdownMenuExampleState();
}

class _CustomDropdownMenuExampleState extends State<CustomDropdownMenuExample> {
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

    return  
    
    Row(children: [

      DropdownMenu<IconLabel>(
                      textStyle: const TextStyle(color: Color.fromRGBO(148, 163, 184, 1), 
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                        width: (MediaQuery.of(context).size.width - 30)/3.2,
                      initialSelection: selectedIcon,
                      controller: colorController,
                      label: const Text("Month", style: TextStyle(color: Colors.black, 
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
                      dropdownMenuEntries: iconEntries,
                      onSelected: (IconLabel? color) {
                        setState(() {
                          selectedIcon = color;
                        });
                      },
                    ),

                    const Spacer(),

                    DropdownMenu<ColorLabel>(

                      textStyle: const TextStyle(color: Color.fromRGBO(148, 163, 184, 1), 
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                        width: (MediaQuery.of(context).size.width - 30)/3.2,
                      initialSelection: selectedColor,
                      
                      controller: colorController,
                      
                      label: const Text("Year", style: TextStyle(color: Colors.black, 
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
                      dropdownMenuEntries: colorEntries,
                      
                      onSelected: (ColorLabel? color) {
                        setState(() {
                          selectedColor = color;
                        });
                      },
                    ),

                    const Spacer(),

                    DropdownMenu<ColorLabel>(
                      textStyle: const TextStyle(color: Color.fromRGBO(148, 163, 184, 1), 
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                        width: (MediaQuery.of(context).size.width - 30)/3.2,
                      initialSelection: ColorLabel.green,
                      controller: colorController,
                      label: const Text("CVV", style: TextStyle(color: Colors.black, 
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
                      dropdownMenuEntries: colorEntries,
                      onSelected: (ColorLabel? color) {
                        setState(() {
                          //selectedColor = color;
                        });
                      },
                    )
    ],);
  }
}

enum MyColors {
   red,
   orange,
   yellow,
   green,
   blue,
   indigo,
   violet
}

enum ColorLabel {
  blue('2023', Colors.blue),
  pink('2024', Colors.pink),
  green('2025', Colors.green),
  yellow('2026', Colors.yellow);


  const ColorLabel(this.label, this.color);
  final String label;
  final Color color;
}

enum IconLabel {
    jan('Jan', Icons.sentiment_satisfied_outlined),
    feb('Feb', Icons.sentiment_satisfied_outlined),
    mar('Mar', Icons.sentiment_satisfied_outlined),
    apr('Apr', Icons.sentiment_satisfied_outlined),
    may('May', Icons.sentiment_satisfied_outlined),
    jun('Jun', Icons.sentiment_satisfied_outlined),
    jul('Jul', Icons.sentiment_satisfied_outlined),
    aug('Aug', Icons.sentiment_satisfied_outlined),
    sep('Sep', Icons.sentiment_satisfied_outlined),
    oct('Oct', Icons.sentiment_satisfied_outlined),
    nov('Nov', Icons.sentiment_satisfied_outlined),
    dec('Dec', Icons.sentiment_satisfied_outlined);

  const IconLabel(this.label, this.icon);
  final String label;
  final IconData icon;
}


class CardTextFields extends StatelessWidget {
  const CardTextFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        // horizontal: 20,
      ),
      child: TextFormField(
        cursorColor: Colors.black,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          CardNumberFormatter(),
        ],
        textInputAction: TextInputAction.done,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/Mastercard-logo.svg/800px-Mastercard-logo.svg.png',
              height: 20,
              width: 20,
            ),
          ),
          suffixIcon: const Padding(
            padding: EdgeInsets.all(.0),
            child: Icon(Icons.cancel_outlined),
          ),
          border: const OutlineInputBorder(),
          hintText: 'XXXX XXXX XXXX XXXX',
          labelText: 'Card Number',
          floatingLabelStyle: const TextStyle(color: Colors.black, 
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
          labelStyle: const TextStyle(color: Colors.black, 
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
          fillColor: const Color.fromARGB(255, 94, 26, 26),
          iconColor: Colors.grey,
          hintStyle: const TextStyle(color:  Color.fromRGBO(148, 163, 184, 1)),
          // focusColor: Colors.black,
          // hoverColor: Colors.black,
          // prefixIconColor: Colors.black,
          // suffixIconColor: Colors.black,
        ),
        maxLength: 19,
        onChanged: (value) {},
      ),
    );
  }
}



class CardNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue previousValue,
    TextEditingValue nextValue,
  ) {
    var inputText = nextValue.text;

    if (nextValue.selection.baseOffset == 0) {
      return nextValue;
    }

    var bufferString = StringBuffer();
    for (int i = 0; i < inputText.length; i++) {
      bufferString.write(inputText[i]);
      var nonZeroIndexValue = i + 1;
      if (nonZeroIndexValue % 4 == 0 && nonZeroIndexValue != inputText.length) {
        bufferString.write(' ');
      }
    }

    var string = bufferString.toString();
    return nextValue.copyWith(
      text: string,
      selection: TextSelection.collapsed(
        offset: string.length,
      ),
    );
  }
}
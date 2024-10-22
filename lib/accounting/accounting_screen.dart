import 'package:flutter/material.dart';
import 'package:workbuddy/accounting/income_widget.dart';
import 'package:workbuddy/accounting/expense_widget.dart';
import 'package:workbuddy/accounting/radio_button_accounting.dart';
import 'package:workbuddy/config/wb_colors.dart';

//   TextEditingController _anzahlController = TextEditingController();
//   TextEditingController _einheitController = TextEditingController();
//   TextEditingController _mwstController = TextEditingController();
//   TextEditingController _preisController = TextEditingController();

class AccountingScreen extends StatefulWidget {
  const AccountingScreen({super.key});

  @override
  State<AccountingScreen> createState() => _AccountingScreenState();
}

class _AccountingScreenState extends State<AccountingScreen> {
  //get groupValue => RadioButtonAccounting(onChange: (String newValue) { log("new value: $newValue");},);
  String groupValue = "Einnahme";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 242, 242),
      appBar: AppBar(
        title: const Text(
          'Ausgabe erfassen',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        //toolbarHeight: 60,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Image(
                //width: 120,
                //image: AssetImage("assets/workbuddy_logo.png"),
                image: AssetImage("assets/workbuddy_glow_schriftzug.png"),
                //width: 200,
              ),

              // -- Divider ---------------------------------------------
              const Divider(thickness: 3, height: 32, color: wbLogoBlue),

              //const RadioButtonAccounting(),

              Row(
                //    children: [
                children: [
                  //const RadioButtonInOutRed(), // funzt
                  // RadioButtonInOutGreen(), // funzt
                  //RadioButtonAccounting(),
                  RadioButtonAccounting(
                    onChange: (newValue) {
                      groupValue = newValue;
                      setState(() {});
                    },
                  )
                ],
                //        ],
              ),

              // -- Divider ---------------------------------------------
              const Divider(thickness: 3, height: 32, color: wbLogoBlue),
              if (groupValue == "Einnahme")
                const IncomeWidget()
              else
                const ExpenseWidget(),
              // const RadioButtonAccounting(),
              const SizedBox(height: 8),
              // -- Divider ---------------------------------------------
              const Divider(thickness: 3, height: 32, color: wbLogoBlue),
            ],
          ),
        ),
      ),
    );
  }
}

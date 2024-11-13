// import 'package:example/pagination.dart';
// import 'package:example/custom.dart';
// import 'package:example/dynamic_height.dart';
// import 'package:example/network_sample.dart';
// import 'package:example/pagination.dart';
import 'package:flutter/material.dart';
//import 'package:searchfield/searchfield.dart';
import 'package:workbuddy/config/wb_colors.dart';
import 'package:workbuddy/custom.dart';

// void main() {
//   runApp(const EMailScreen());
// }

class EMailScreen extends StatelessWidget {
  const EMailScreen({super.key});

//   /*--------------------------------- *** ---*/
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       /*--------------------------------- *** ---*/
//       // title: 'Flutter App',
//       /*--------------------------------- *** ---*/
//       // theme: ThemeData(
//       //   colorSchemeSeed: Colors.indigo,
//       //   useMaterial3: true,
//       //   brightness: Brightness.light,
//       // ),
//       /*--------------------------------- *** ---*/
//       // darkTheme: ThemeData(
//       //   colorSchemeSeed: Colors.blue,
//       //   useMaterial3: true,
//       //   brightness: Brightness.dark,
//       // ),
//       /*--------------------------------- *** ---*/
//       home: SearchFieldSample(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }
/*--------------------------------- *** ---*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //debugShowCheckedModeBanner: false,

      backgroundColor: const Color.fromARGB(255, 250, 242, 242),
      /*--------------------------------- *** ---*/
      appBar: AppBar(
        title: const Text(
          'E-Mail versenden',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
            color: Colors.black, // Schriftfarbe
          ),
        ),
        backgroundColor: wbColorBackgroundBlue, // Hintergrundfarbe
        foregroundColor: Colors.black, // Icon-/Button-/Chevron-Farbe
      ),

      body: const SearchFieldSample(),
      // debugShowCheckedModeBanner: false,
    );
  }
}

/*--------------------------------- *** ---*/
class SearchFieldSample extends StatefulWidget {
  const SearchFieldSample({super.key});

  @override
  State<SearchFieldSample> createState() => _SearchFieldSampleState();
}

class _SearchFieldSampleState extends State<SearchFieldSample> {
  @override
  void initState() {
    suggestions = [
      'United States',
      'Germany',
      'Canada',
      'United Kingdom',
      'France',
      'Italy',
      'Spain',
      'Australia',
      'India',
      'China',
      'Japan',
      'Brazil',
      'South Africa',
      'Mexico',
      'Argentina',
      'Russia',
      'Indonesia',
      'Turkey',
      'Saudi Arabia',
      'Nigeria',
      'Egypt',
    ];
    selected = suggestions[0];
    super.initState();
  }

  /*--------------------------------- *** ---*/
  int suggestionsCount = 12;
  // final focus = FocusNode();
  /*--------------------------------- *** ---*/
  // final dynamicHeightSuggestion = [
  //   'ABC\nABC\nABC\nABC',
  //   'DEF\nABC',
  //   'GHI',
  //   'JKL\nABC',
  //   'ABC',
  //   '123\n123',
  //   '123\n123',
  //   '123\n123',
  //   '123\n123',
  //   '123\n123',
  //   '123\n123',
  //   'àkajsddddddddddddddddddddddddddddddddddddddddddddddddddđ',
  //   'àkajsddddddddddddddddddddddddddddddddddddddddddddddddddđ',
  //   'àkajsddddddddddddddddddddddddddddddddddddddddddddddddddđ',
  //   'àkajsddddddddddddddddddddddddddddddddddddddddddddddddddđ',
  //   'àkajsddddddddddddddddddddddddddddddddddddddddddddddddddđ',
  // ];
  /*--------------------------------- *** ---*/
  final TextEditingController searchController = TextEditingController();
  var suggestions = <String>[];
  int counter = 0;
  var selected = '';
  /*--------------------------------- *** ---*/
  @override
  Widget build(BuildContext context) {
    
    // Widget searchChild(x, {bool isSelected = false}) => Padding(
    //       padding: const EdgeInsets.symmetric(horizontal: 12),
    //       child: Text(x,
    //           style: TextStyle(
    //               fontSize: 18,
    //               color: isSelected ? Colors.green : Colors.black)),
    //     );




    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('E-Mail versenden'),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: ListView(
          children: [
            /*--------------------------------- *** ---*/
            const UserSelect(),
            const SizedBox(
              height: 20,
            ),
            /*--------------------------------- *** ---*/
            //DynamicHeightExample(),
            /*--------------------------------- *** ---*/
            // const SizedBox(
            //   height: 20,
            // ),
            /*--------------------------------- *** ---*/
            // SearchField(
            //   hint: 'Basic SearchField',
            //   dynamicHeight: true,
            //   maxSuggestionBoxHeight: 300,
            //   initialValue: SearchFieldListItem<String>('ABC'),
            //   suggestions: dynamicHeightSuggestion
            //       .map(SearchFieldListItem<String>.new)
            //       .toList(),
            //   suggestionState: Suggestion.expand,
            // ),
            /*--------------------------------- *** ---*/
            // const SizedBox(
            //   height: 20,
            // ),
            /*--------------------------------- *** ---*/

            // TextFormField(
            //     autovalidateMode: AutovalidateMode.onUserInteraction,
            //     decoration: const InputDecoration(
            //       labelText: 'Flutter TextFormField',
            //     ),
            //     validator: (value) {
            //       if (value == null || value.length < 4) {
            //         return 'error';
            //       }
            //       return null;
            //     }),
            /*--------------------------------- *** ---*/
            // const SizedBox(
            //   height: 50,
            // ),

            /*--------------------------------- *** ---*/
            //Pagination(),
            /*--------------------------------- *** ---*/
            // const SizedBox(
            //   height: 50,
            // ),
            /*--------------------------------- *** ---*/




            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: SearchField<String>(
            //     maxSuggestionsInViewPort: 10,
            //     suggestionAction: SuggestionAction.unfocus,
            //     searchInputDecoration: SearchInputDecoration(
            //       hintText: 'Search',
            //       cursorColor: Colors.blue,
            //       border: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(10),
            //       ),
            //     ),
            //     onSuggestionTap: (SearchFieldListItem<String> item) {
            //       setState(() {
            //         selected = item.searchKey;
            //       });
            //     },
            //     suggestions: suggestions
            //         .map(
            //           (e) => SearchFieldListItem<String>(e,
            //               item: e,
            //               child: searchChild(e, isSelected: e == selected)),
            //         )
            //         .toList(),
            //   ),
            // ),





            /*--------------------------------- *** ---*/
            const SizedBox(
              height: 50,
            ),
            /*--------------------------------- *** ---*/
            //NetworkSample(),
            /*--------------------------------- *** ---*/
            // const SizedBox(
            //   height: 50,
            // ),
            /*--------------------------------- *** ---*/
            // SearchField(
            //   suggestionDirection: SuggestionDirection.flex,
            //   onSearchTextChanged: (query) {
            //     final filter = suggestions
            //         .where((element) =>
            //             element.toLowerCase().contains(query.toLowerCase()))
            //         .toList();
            //     return filter
            //         .map((e) =>
            //             SearchFieldListItem<String>(e, child: searchChild(e)))
            //         .toList();
            //   },
            //   initialValue: SearchFieldListItem<String>('United States'),
            //   controller: searchController,
            //   autovalidateMode: AutovalidateMode.onUserInteraction,
            //   validator: (value) {
            //     if (value == null || !suggestions.contains(value.trim())) {
            //       return 'Enter a valid country name';
            //     }
            //     return null;
            //   },
            //   onSubmit: (x) {},
            //   autofocus: false,
            //   key: const Key('searchfield'),
            //   hint: 'Search by country name',
            //   itemHeight: 50,
            //   onTapOutside: (x) {
            //     // focus.unfocus();
            //   },
            //   scrollbarDecoration: ScrollbarDecoration(
            //     thickness: 12,
            //     radius: const Radius.circular(6),
            //     trackColor: Colors.grey,
            //     trackBorderColor: Colors.red,
            //     thumbColor: Colors.orange,
            //   ),
            //   suggestionStyle:
            //       const TextStyle(fontSize: 18, color: Colors.black),
            //   suggestionItemDecoration: BoxDecoration(
            //     // color: Colors.grey[100],
            //     // borderRadius: BorderRadius.circular(10),
            //     border: Border(
            //       bottom: BorderSide(
            //         color: Colors.grey.shade200,
            //         width: 1,
            //       ),
            //     ),
            //   ),
            //   searchInputDecoration: SearchInputDecoration(
            //     searchStyle:
            //         const TextStyle(fontSize: 18, color: Colors.black),
            //     hintStyle: const TextStyle(fontSize: 18, color: Colors.grey),
            //     focusedBorder: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(24),
            //       borderSide: const BorderSide(
            //         width: 1,
            //         color: Colors.orange,
            //         style: BorderStyle.solid,
            //       ),
            //     ),
            //     border: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(24),
            //       borderSide: const BorderSide(
            //         width: 1,
            //         color: Colors.black,
            //         style: BorderStyle.solid,
            //       ),
            //     ),
            //     contentPadding: const EdgeInsets.symmetric(
            //       horizontal: 20,
            //     ),
            //   ),
            //   suggestionsDecoration: SuggestionDecoration(
            //       // border: Border.all(color: Colors.orange),
            //       elevation: 8.0,
            //       selectionColor: Colors.grey.shade100,
            //       hoverColor: Colors.purple.shade100,
            //       gradient: const LinearGradient(
            //         colors: [
            //           Color(0xfffc466b),
            //           Color.fromARGB(255, 103, 128, 255)
            //         ],
            //         stops: [0.25, 0.75],
            //         begin: Alignment.topLeft,
            //         end: Alignment.bottomRight,
            //       ),
            //       borderRadius: const BorderRadius.only(
            //         bottomLeft: Radius.circular(10),
            //         bottomRight: Radius.circular(10),
            //       )),
            //   suggestions: suggestions
            //       .map((e) =>
            //           SearchFieldListItem<String>(e, child: searchChild(e)))
            //       .toList(),
            //   focusNode: focus,
            //   suggestionState: Suggestion.expand,
            //   onSuggestionTap: (SearchFieldListItem<String> x) {},
            // ),
            /*--------------------------------- *** ---*/
            // const SizedBox(
            //   height: 50,
            // ),
            /*--------------------------------- *** ---*/
            // SearchField(
            //   enabled: false,
            //   hint: 'Disabled SearchField',
            //   suggestions: ['ABC', 'DEF', 'GHI', 'JKL']
            //       .map(SearchFieldListItem<String>.new)
            //       .toList(),
            //   suggestionState: Suggestion.expand,
            // ),
            /*--------------------------------- *** ---*/
            // const SizedBox(
            //   height: 50,
            // ),
            /*--------------------------------- *** ---*/

            // NetworkSample(),
            /*--------------------------------- *** ---*/
            Text(
              'Counter: $counter',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            /*--------------------------------- *** ---*/
          ],
        ),
      ),
    );
  }
}








// import 'package:dropdown_search/dropdown_search.dart';
// import 'package:flutter/material.dart';
// import 'package:workbuddy/config/wb_colors.dart';
// import 'package:workbuddy/shared/widgets/navigation_bar_green_neon.dart';
// // import 'package:workbuddy/shared/widgets/wb_textfield_standard_entry.dart';

// // import 'package:dio/dio.dart';
// // import 'package:dropdown_search/dropdown_search.dart';
// // import 'package:example/bottom_sheets.dart';
// // import 'package:example/dialogs.dart';
// // import 'package:example/menus.dart';
// // import 'package:example/modals.dart';
// // import 'package:example/user_model.dart';
// // import 'package:flutter/material.dart';

// class EMailScreen extends StatefulWidget {
//   const EMailScreen({super.key});

//   @override
//   State<EMailScreen> createState() => _EMailScreen();
// }

// class _EMailScreen extends State<EMailScreen> {
//     final dropDownKey = GlobalKey<DropdownSearchState>();


// // Future<List<UserModel>> getData(filter) async {
// //   var response = await Dio().get(
// //     "https://63c1210999c0a15d28e1ec1d.mockapi.io/users",
// //     queryParameters: {"filter": filter},
// //   );

// //   final data = response.data;
// //   if (data != null) {
// //     return UserModel.fromJsonList(data);
// //   }

// //   return [];
// // }







//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // den gesamten Hintergrund einfärben:
//       backgroundColor: Colors.blue,
//       /*--------------------------------- AppBar ---*/
//       appBar: AppBar(
//         title: const Text(
//           'E-Mail versenden',
//           style: TextStyle(
//             fontSize: 30,
//             fontWeight: FontWeight.w900,
//             color: Colors.white,
//           ), // Schriftfarbe
//         ),
//         foregroundColor: Colors.white,
//         backgroundColor: wbColorAppBarBlue, // dunkles Blau
//         shadowColor: Colors.black87, // Schatten
//         elevation: 20, // graue Zone für den Schatten unter der AppBar
//       ),
//       /*--------------------------------- *** ---*/
//       // body: Listview(
//       //   child: Column(
//       //     children: [

        
//         // DropdownSearch()
        
        
        
//         //               // WbTextfieldStandardEntry(
//         //               //     headlineText: "E-Mail-Adresse",
//         //               //     hintText: "Bitte E-Mail-Adresse eingeben",
//         //               //     wbTextFieldWidth: 398),
        
//         //               // Image(
//         //               //     image: AssetImage(
//         //               //   "assets/workbuddy_patch_and_slogan.png",
//         //               // )),
//         //               /*--------------------------------- Buttons ---*/
//         //               // Column(
//         //               //   children: [
//         //               //     Row(
//         //               //       mainAxisAlignment: MainAxisAlignment.center,
//         //               //       children: [ButtonAccounting(), ButtonCommunication()],
//         //               //     ),
//         //               //     Row(
//         //               //       mainAxisAlignment: MainAxisAlignment.center,
//         //               //       children: [ButtonCustomer(), ButtonCompanies()],
//         //               //     ),
//         //               //   ],
//         //               // ),
        
        
        
        
//         //             ],
//         //           ),
//         //         ),
//         //       ),
//         //       /*--------------------------------- NavigationBar ---*/
//         //       bottomNavigationBar: const NavigationBarGreenNeon(),
//         //     );
//         //   }
//         // }
        
        
//         // import 'package:dropdown_search/dropdown_search.dart';
//         // import 'package:flutter/material.dart';
        
//         // void main() => runApp(EMailScreen());
        
//         // Future<List<UserModel>> getData(filter) async {
//         //   var response = await Dio().get(
//         //     "https://63c1210999c0a15d28e1ec1d.mockapi.io/users",
//         //     queryParameters: {"filter": filter},
//         //   );
        
//         //   final data = response.data;
//         //   if (data != null) {
//         //     return UserModel.fromJsonList(data);
//         //   }
        
//         //   return [];
//         // }
        
//         // class EMailScreen extends StatelessWidget {
//         //   @override
//         //   Widget build(BuildContext context) {
//         //     return MaterialApp(
//         //       title: 'dropdownSearch Demo',
//         //       //enable this line if you want test Dark Mode
//         //       //theme: ThemeData.dark(),
//         //       home: MyHomePage(),
//         //     );
//         //   }
//         // }
        
//         // class MyHomePage extends StatelessWidget {
//         //   final dropDownKey = GlobalKey<DropdownSearchState>();
        
//           // @override
//           // Widget build(BuildContext context) {
//           //   return Scaffold(
//           //     appBar: AppBar(title: Text('examples mode')),





//         //       body: ListView(
//         //         padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
//         //         children: [
//         // Row(
//         //   children: [
//         //     Expanded(
//         //       child: DropdownSearch<String>(
//         //         key: dropDownKey,
//         //         selectedItem: "Menu",
//         //         items: (filter, infiniteScrollProps) =>
//         //             ["Menu", "Dialog", "Modal", "BottomSheet"],
//         //         decoratorProps: const DropDownDecoratorProps(
//         //           decoration: InputDecoration(
//         //             labelText: 'Examples for: ',
//         //             border: OutlineInputBorder(),
//         //           ),
//         //         ),
//         //         popupProps: const PopupProps.menu(
//         //             fit: FlexFit.loose, constraints: BoxConstraints()),
//         //       ),
//         //     ),
//         //     const Padding(padding: EdgeInsets.only(right: 16)),
//         //     FilledButton(
//         //       onPressed: () {
//         //         switch (dropDownKey.currentState?.getSelectedItem) {
//         //           case 'Menu':
//         //             Navigator.push(
//         //                 context,
//         //                 MaterialPageRoute(
//         //                     builder: (context) => MenuExamplesPage()));
//         //             break;
//         //           case 'Modal':
//         //             Navigator.push(
//         //                 context,
//         //                 MaterialPageRoute(
//         //                     builder: (context) => ModalsExamplesPage()));
//         //             break;
//         //           case 'BottomSheet':
//         //             Navigator.push(
//         //                 context,
//         //                 MaterialPageRoute(
//         //                     builder: (context) => BottomSheetExamplesPage()));
//         //             break;
//         //           case 'Dialog':
//         //             Navigator.push(
//         //                 context,
//         //                 MaterialPageRoute(
//         //                     builder: (context) => DialogExamplesPage()));
//         //             break;
//         //         }
//         //       },
//         //       child: const Text("Go"),
//         //     )
//         //   ],
//         // ),
//         // const Padding(padding: EdgeInsets.all(8)),
//         // RichText(
//         //   text: const TextSpan(
//         //     style: TextStyle(fontSize: 14.0, color: Colors.black),
//         //     children: [
//         //       TextSpan(text: 'we used '),
//         //       TextSpan(
//         //           text: 'fit: FlexFit.loose',
//         //           style: TextStyle(fontWeight: FontWeight.bold)),
//         //       TextSpan(text: ' and '),
//         //       TextSpan(
//         //           text: 'constraints: BoxConstraints() ',
//         //           style: TextStyle(fontWeight: FontWeight.bold)),
//         //       TextSpan(
//         //           text:
//         //               'to fit the height of menu automatically to the length of items'),
//         //     ],
//         //   ),
//         // ),
//         // const Padding(padding: EdgeInsets.only(top: 20)),
//         // const Text(
//         //   'DropdownSearch Anatomy',
//         //   style: TextStyle(
//         //       fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
//         //   textAlign: TextAlign.center,
//         // ),
//         // Image.asset('assets/images/anatomy.png',
//         //     alignment: Alignment.topCenter, height: 1024)
//         //         ],






//         //       ),
//         //     );
//         //   }
//         // }
        
        
//           ],
//         ),
//       ),
//       /*--------------------------------- NavigationBar ---*/
//       bottomNavigationBar: const NavigationBarGreenNeon(),
//     )
//   }
// }

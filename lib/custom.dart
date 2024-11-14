// Custom Suggestions

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';
import 'package:workbuddy/user_model.dart';

import 'user_data.dart';

class UserSelect extends StatefulWidget {
  const UserSelect({super.key});

  @override
  State<UserSelect> createState() => _UserSelectState();
}

class _UserSelectState extends State<UserSelect> {
  final TextEditingController searchFieldController = TextEditingController();
  final List<UserModel> users = [];

  @override
  void initState() {
    super.initState();
    for (var element in usersData) {
      users.add(UserModel.fromJson(element));

      int counter = users.length;
      log("0028_custom $counter");

      // void clearSearchField() {
      //   searchFieldController.clear();
      // }
    }
    //     void clearSearchField() {
    //   searchFieldController.clear();
    // }
  }

  // final TextEditingController searchFieldController = TextEditingController();
  void clearSearchField() {
    searchFieldController.clear();
  }

  @override
  Widget build(BuildContext context) {
    /*--------------------------------- E-Mail-Adresse ---*/
    // return TextFormField(
    //   style: const TextStyle(
    //     fontSize: 28,
    //     fontWeight: FontWeight.w900,
    //     color: wbColorButtonDarkRed,
    //   ),
    //   textAlign: TextAlign.left,
    //   textInputAction: TextInputAction.next,
    //   //obscureText: visibilityPassword,
    //   decoration: InputDecoration(
    //     filled: true,
    //     fillColor: Colors.white,
    //     contentPadding: const EdgeInsets.all(16),
    //     errorStyle: const TextStyle(
    //       fontSize: 18,
    //       fontWeight: FontWeight.bold,
    //       color: Colors.red,
    //       backgroundColor: Colors.yellow,
    //     ),

    //     /*--------------------------------- labelStyle ---*/
    //     labelText: 'E-Mail-Adresse',
    //     labelStyle: const TextStyle(
    //       fontSize: 28,
    //       fontWeight: FontWeight.bold,
    //       backgroundColor: Colors.white,
    //     ),

    //     /*--------------------------------- prefixIcon ---*/
    //     prefixIcon: const Padding(
    //       padding: EdgeInsets.all(16),
    //       child: Icon(
    //         size: 40,
    //         Icons.smartphone_outlined,
    //       ),
    //     ),

    //     /*--------------------------------- hintText ---*/
    //     hintText: "Bitte E-Mail eingeben",
    //     hintStyle: const TextStyle(
    //       fontSize: 18,
    //       fontWeight: FontWeight.w900,
    //       color: Colors.black38,
    //     ),

    //     /*--------------------------------- suffixIcon ---*/
    //     suffixIcon: GestureDetector(
    //       onTap: () {
    //         setState(() {
    //           // Hilfetext anzeigen:
    //         });
    //       },
    //       child: const Padding(
    //         padding: EdgeInsets.all(16.0),
    //         child: Icon(
    //           size: 40,
    //           Icons.help_outline,
    //         ),
    //       ),
    //     ),

    //     /*--------------------------------- border ---*/
    //     border: const OutlineInputBorder(
    //       borderRadius: BorderRadius.all(Radius.circular(16)),
    //     ),
    //   ),
    // );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SearchField<UserModel>(
        maxSuggestionsInViewPort: 5,
        itemHeight: 120,
        /*--------------------------------- SearchInputDecoration ---*/
        searchInputDecoration: SearchInputDecoration(
          //prefixIcon: const Icon(Icons.mail_outline),

          suffixIcon: GestureDetector(
            child: const Icon(Icons.close_outlined),
            onTap: () {
              log("0116_custom");
              // dieses TextFeld löschen:
              //clearSearchField; // funzt nicht
              clearSearchField();
              // searchFieldController.clear();

              //   setState(() {
              //     //searchFieldControllerText();
              //     searchFieldController.clear();
              //   });
              //   //SearchField<UserModel>;
            },
          ),
          searchStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue[900],
              overflow: TextOverflow.visible),
          filled: true,
          fillColor: Colors.black12,
        ),

        // searchInputDecoration: SearchInputDecoration(
        //   filled: true,
        //   fillColor: Colors.grey.withOpacity(0.2),
        //   focusedBorder: OutlineInputBorder(
        //     borderSide: const BorderSide(
        //       color: Colors.white,
        //       width: 2.0,
        //     ),
        //     borderRadius: BorderRadius.circular(16.0),
        //   ),
        //   border: const OutlineInputBorder(),
        // ),

        /*--------------------------------- *** ---*/
        //marginColor: Colors.black,
        hint: 'Suche nach E-Mail-Adressen',

        suggestionsDecoration: SuggestionDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),

          // borderRadius: const BorderRadius.only(
          //   bottomLeft: Radius.circular(16),
          //   bottomRight: Radius.circular(16),
          // ),

          border: Border.all(
            color: Colors.black, //Colors.grey.withOpacity(0.5),
          ),
        ),

        /*--------------------------------- *** ---*/
        // initialValue: SearchFieldListItem<UserModel>(
        //   users[2].name,
        //   child: Container(
        //     color: Colors.red,
        //     width: 100,
        //     alignment: Alignment.center,
        //     child: Text(
        //       users[2].name,
        //       style: const TextStyle(color: Colors.white),
        //     ),
        //   ),
        // ),
        /*--------------------------------- *** ---*/
        suggestionItemDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            shape: BoxShape.rectangle,
            border: Border.all(
                color: Colors.transparent,
                style: BorderStyle.solid,
                width: 1.0)),

        // searchInputDecoration: SearchInputDecoration(
        //   filled: true,
        //   fillColor: Colors.grey.withOpacity(0.2),
        //   focusedBorder: OutlineInputBorder(
        //     borderSide: const BorderSide(
        //       color: Colors.white,
        //       width: 2.0,
        //     ),
        //     borderRadius: BorderRadius.circular(16.0),
        //   ),
        //   border: const OutlineInputBorder(),
        // ),

        marginColor:
            Colors.grey.shade300, //nColors.black, //Colors.grey.shade300,
        suggestions: users
            .map(
              (userModel) => SearchFieldListItem<UserModel>(
                // diese Daten werden in das "SearchFieldListItem" beim Anklicken übergeben:
                userModel.email,

                child: UserTile(
                  user: userModel,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

class UserTile extends StatelessWidget {
  final UserModel user;

  const UserTile({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // minTileHeight: 10,
      leading: CircleAvatar(
        radius: 60,
        backgroundImage: NetworkImage(user.avatar),
      ),
      title: Text(user.name),
      subtitle: Text(user.email),
      //status: Text(user.status),
    );
  }
}

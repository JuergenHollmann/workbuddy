// Custom Suggestions

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';
import 'package:workbuddy/config/wb_colors.dart';
import 'package:workbuddy/user_model.dart';

import 'user_data.dart';

class UserSelect extends StatefulWidget {
  const UserSelect({super.key});

  @override
  State<UserSelect> createState() => _UserSelectState();
}

class _UserSelectState extends State<UserSelect> {
  final List<UserModel> users = [];

  @override
  void initState() {
    super.initState();
    /*--------------------------------- *** ---*/
    // durch alle Elemente in der Liste iterieren:
    for (var element in usersData) {
      users.add(UserModel.fromJson(element));
      // nur zur Kontrolle: zeigt bei JEDEM Durchgang die Anzahl aus "users.length" an:
      // int searchFieldCounter = users.length;
      // log("0028_custom Counter: $searchFieldCounter");

      // String searchFieldItems = "$firstName $lastName $email";
      // log("0056 $searchFieldItems");
    }
    /*--------------------------------- *** ---*/
    // die Gesamt-Anzahl der User in der Liste zeigen (NACH Iterierung NUR EINE Zahl zeigen):
    int searchFieldCounter = users.length;
    log("0037_custom Counter: $searchFieldCounter");
    /*--------------------------------- *** ---*/
    // die gefundene Anzahl der User in der Liste zeigen:
    int? searchFieldFoundCounter = usersData.length;
    log("0245 - user_select - Counter: $searchFieldFoundCounter");
    /*--------------------------------- *** ---*/
  }

  final TextEditingController searchFieldController = TextEditingController();
  void clearSearchField() {
    searchFieldController.clear();
  }
  /*--------------------------------- searchFieldItems generieren ---*/
  /* Welche Felder sollen in die Suche miteinbezogen  werden (Daten aus "user_data")?
  1) Vorname = firstName 
  2) Nachname = lastName
  3) E-Mail-Adresse = email */

  // void searchFieldItems(String searchFieldItems) {
  //   String searchFieldItems = "$firstName $lastName $email";
  //   log("0056 $searchFieldItems");
  // }

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
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
      child: SearchField<UserModel>(
        // maxLength: 10, // maximale Anzahl der Ziffern für die Suche
        // dynamicHeight: true,
        // maxSuggestionBoxHeight: 200,
        controller: searchFieldController,
        maxSuggestionsInViewPort: 5,
        itemHeight: 110,
        /*--------------------------------- SearchInputDecoration - Suchfeld ---*/
        searchInputDecoration: SearchInputDecoration(
          cursorHeight: 30,
          cursorWidth: 3,
          filled: true,
          fillColor: wbColorBackgroundBlue,
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
          prefixIcon: const Padding(
            padding: EdgeInsets.all(8),
            child: Icon(
              Icons.search_outlined,
              size: 48,
            ),
          ),
          suffixIcon: GestureDetector(
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Icon(
                Icons.cancel_rounded,
                size: 40,
              ),
            ),
            onTap: () {
              log("0144_custom");
              setState(() {
                /*--------------------------------- *** ---*/
                // diesen Text kann man auf 3 Arten löschen:
                /*--------------------------------- *** ---*/
                searchFieldController.clear(); // funzt!
                // clearSearchField(); // funzt auch!
                // searchFieldController.text = ""; // funzt auch!
                /*--------------------------------- *** ---*/
              });
            },
          ),
          searchStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue[900],
              overflow: TextOverflow.visible),
        ),
        hint: 'Suche nach E-Mails',
        /*--------------------------------- SuggestionDecoration - Suchliste ---*/
        suggestionsDecoration: SuggestionDecoration(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(16),
            bottomRight: Radius.circular(16),
          ),
          border: Border.all(
            color: Colors.black, width: 2, //Colors.grey.withOpacity(0.5),
          ),
        ),
        /*--------------------------------- *** ---*/
        suggestionItemDecoration: BoxDecoration(
          // gradient: const LinearGradient(
          //   colors: Colors.primaries,
          //   begin: Alignment.topCenter,
          //   end: Alignment.topRight,
          // ),
          shape: BoxShape.rectangle,
          border: Border.all(
            color: Colors.black,
            style: BorderStyle.solid,
            width: 1,
          ),
        ),
        marginColor: Colors.black, //Colors.grey.shade300,
        /*--------------------------------- *** ---*/
        // das hier gibt eine Fehlermeldung!
        // initialValue: SearchFieldListItem<UserModel>(
        //   users[2].firstName,
        //   child: Container(
        //     color: Colors.red,
        //     width: 100,
        //     alignment: Alignment.center,
        //     child: Text(
        //       users[2].firstName,
        //       style: const TextStyle(color: Colors.white),
        //     ),
        //   ),
        // ),
        /*--------------------------------- *** ---*/
        suggestions: users
            .map(
              (userModel) => SearchFieldListItem<UserModel>(
                // todo: Wie kann ich hier nach mehreren Kriterien suchen oder filtern?
                // diese Daten werden in das "SearchFieldListItem" beim Anklicken übergeben:
                userModel.email,
                /*--------------------------------- *** ---*/
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
    /*--------------------------------- ListTile ---*/
    return ListTile(
      visualDensity: const VisualDensity(horizontal: -4, vertical: 4),
      isThreeLine: true,
      autofocus: true,
      dense: false,
      selectedColor: Colors.redAccent,
      tileColor: wbColorBackgroundBlue, // Hintergrundfarbe
      contentPadding: const EdgeInsets.all(0),
      // minTileHeight: 10,
      // minLeadingWidth: 50,
      leading: CircleAvatar(
        radius: 48,
        backgroundImage: NetworkImage(user.avatar),
      ),
      /*--------------------------------- Name ---*/
      title: Text(
        "${user.firstName} ${user.lastName}",
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w900,
        ),
      ),
      /*--------------------------------- Status 1 + 2 + Kategorie + Alter + Job ---*/
      subtitle: Text(
        "${user.status2}-${user.status1} (${user.age})\n💼 ${user.role}", // \n${user.email}",
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      /*--------------------------------- ListTile ---*/
      trailing: Text(
        "[${user.category}]  ",
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      /*--------------------------------- ListTile - ENDE ---*/
    );
  }
}

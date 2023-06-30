import 'package:flutter/material.dart';
import 'package:mon_blog/theme/app_style.dart';

class ContactDetailWidget extends StatelessWidget {
  ContactDetailWidget({super.key});

  final ContactInfo contactInfo = ContactInfo(
      emailAdress: "marieliserenzema@gmail.com",
      phoneNumber: "06 35 17 90 73",
      socialListUrl: <IconData, String>{
        Icons.linked_camera_outlined: "marieliserenzema@gmail.com",
        Icons.gite: "marieliserenzema@gmail.com",
        Icons.format_textdirection_l_to_r_outlined: "marieliserenzema@gmail.com",
      });

  List<IconData> get _iconsList => contactInfo.socialListUrl.keys.toList();
  List<String> get _socialUrlList => contactInfo.socialListUrl.values.toList();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
            child: ListTile(
          tileColor: Colors.red,
          leading: const Icon(
            Icons.mail,
          ),
          title: Text(contactInfo.emailAdress, style: contactDetailsStyle),
        )),
        ListTile(
          leading: const Icon(
            Icons.phone,
          ),
          title: Text(
            contactInfo.phoneNumber,
            style: contactDetailsStyle,
          ),
        ),
        ListView.builder(
            shrinkWrap: true,
            itemCount: contactInfo.socialListUrl.values.length,
            itemBuilder: (_, int index) {
              return ListTile(
                leading: Icon(_iconsList[index]),
                title: Text(
                  _socialUrlList[index],
                  style: contactDetailsStyle,
                ),
              );
            })
      ],
    );
  }
}

class ContactInfo {
  ContactInfo({
    required this.emailAdress,
    required this.phoneNumber,
    this.socialListUrl = const <IconData, String>{},
  });

  final String emailAdress;
  final String phoneNumber;
  final Map<IconData, String> socialListUrl;
}

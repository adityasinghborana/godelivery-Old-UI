import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart/util/images.dart';
import 'package:sixam_mart/util/styles.dart';
import 'package:sixam_mart/view/screens/chat/chat_screen.dart';
import 'package:sixam_mart/view/screens/chat/conversation_screen.dart';

class ChatListTile extends StatefulWidget {
  const ChatListTile({Key key}) : super(key: key);

  @override
  State<ChatListTile> createState() => _ChatListTileState();
}

class _ChatListTileState extends State<ChatListTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(ConversationScreen());
      },
      child: Container(
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                          width: 2, color: Theme.of(context).cardColor),
                      color: Theme.of(context).cardColor,
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        Images.icPlaceholder,
                        height: 45,
                        width: 44,
                      ),
                    ),
                  ),
                  SizedBox(width: 13),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "James Barton",
                        style: robotoRegular.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff09323e)),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "hi, my name is Harry Doe",
                        style: robotoRegular.copyWith(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff000000).withOpacity(0.75)),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Text(
              "12:40 PM",
              style: robotoRegular.copyWith(
                  fontSize: 9,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000000).withOpacity(0.75)),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:ai_app_flutter/core/app_export.dart';
import 'package:flutter/material.dart';

import '../../chat_screen/models/chat_model.dart';

class SongsLyricsOneController extends GetxController {
  TextEditingController groupthirtynineController = TextEditingController();

  RxBool chatList = false.obs;

  RxList<ChatModel> listChat = [
    ChatModel("How can I find a name of a song?", 1),
    ChatModel(
        "‘’Shazam will identify any song in seconds. Discover artists, lyrics, videos & playlists, all for free. Over 1 billion installs and counting!maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.\nBut don't give up, don't lose your hope\nYou'll find love again, it's not a joke\nTake a deep breath, let it all out\nYou'll get through this, without a doubt\n\nOutro:\nIt's not the end, it's just the start\nOf a new beginning, a brand new heart\nYou'll love again, and it'll be true\nJust trust in yourself, you'll make it through.",
        0),
  ].obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupthirtynineController.dispose();
  }
}

import 'package:shared_preferences/shared_preferences.dart';

final String KEY_DISMISSED_MESSAGE_IDS = 'KEY_DISMISSED_MESSAGE_IDS';

class OnLaunchDataStore {
  Future<List<int>> getDismissedMessagesIds() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs
            .getStringList(KEY_DISMISSED_MESSAGE_IDS)
            ?.map((id) => int.parse(id))
            .toList() ??
        [];
  }

  void addDismissedMessageId(int messageId) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (!prefs.containsKey(KEY_DISMISSED_MESSAGE_IDS)) {
      await prefs.setStringList(KEY_DISMISSED_MESSAGE_IDS, []);
    }

    final dismissedMessageIds =
        prefs.getStringList(KEY_DISMISSED_MESSAGE_IDS) ?? [];
    dismissedMessageIds.add(messageId.toString());

    await prefs.setStringList(KEY_DISMISSED_MESSAGE_IDS, dismissedMessageIds);
  }
}

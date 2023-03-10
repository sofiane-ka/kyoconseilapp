class ChatMessage {
  ChatMessage({required this.text});
  final String text;
}

class MailMessage {
  MailMessage(
      {required this.object, required this.content, required this.sender});
  final String object;
  final String content;
  final String sender;
}

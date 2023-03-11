class ChatMessage {
  ChatMessage({required this.text, required this.sender});
  final String text;
  final String sender;
}

class MailMessage {
  MailMessage(
      {required this.object, required this.content, required this.sender});
  final String object;
  final String content;
  final String sender;
}

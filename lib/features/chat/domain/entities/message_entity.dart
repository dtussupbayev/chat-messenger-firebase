class MessageEntity {
  MessageEntity({
    required this.messageId,
    required this.messageText,
    required this.sendBy,
    required this.timestamp,
  });

  final String messageId;
  final String messageText;
  final String sendBy;
  final DateTime timestamp;
}

import 'package:dart_telegram_bot/dart_telegram_bot.dart'; 
import 'package:dart_telegram_bot/telegram_entities.dart'; 
 void main(List<String> arguments) { 
  final token = "7617453680:AAGok4bJ32am9vUpIFchetlVM-Fo6sCh2gg"; 
  Bot( 
    token: token, 
    onReady: (bot) => bot.start(clean: true), 
  ).onUpdate((bot, update) async { 
    bot.forwardMessage( 
      ChatID(7230985702), 
      ChatID(update.message!.chat.id), 
      update.message!.messageId 
    ); 
  }); 
}
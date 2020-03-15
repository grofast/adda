import telebot
import random
from telebot import types
bot = telebot.TeleBot("893368079:AAGfBJ9eU2t6WSSOHiwMQWVd1BkRZpurgzo")
 
@bot.message_handler(commands=['start'])
def welcome(message):
    # keyboard
    markup = types.ReplyKeyboardMarkup(resize_keyboard=True)
    item1 = types.KeyboardButton('Привет👊')
    item2 = types.KeyboardButton('Что ты делаешь🙌?')
    item3 = types.KeyboardButton('Гарантии👌')
    item4 = types.KeyboardButton('💲Цены💲')
 
    markup.add(item1,item2,item3,item4)
 
    bot.send_message(message.chat.id, "Добро пожаловать, {0.first_name}!\nЯ - <b>{1.first_name}</b>😎, я делаю, ботов😇.".format(message.from_user, bot.get_me()),
        parse_mode='html', reply_markup=markup)
 
@bot.message_handler(content_types=['text'])
def lalala(message):

	if message.text == 'Привет👊':
		bot.send_message(message.chat.id, "Здраствуй!")

	if message.text == 'Что ты делаешь🙌?':
    		bot.send_message(message.chat.id, "Я делаю разных ботов🤖 в телеграме!")
    		bot.send_message(message.chat.id, "1)Информационыйℹ️ бот (как этот)")
    		bot.send_message(message.chat.id, "2)Эхо бот (бот будет повторять 🦜всё что напишут)")
    		bot.send_message(message.chat.id, "3)Бот с обратной связью (что напишут, будет у вас👀)")
    		bot.send_message(message.chat.id, "И много других ботов!Обговорить всё можем в инстаграме 👉 @unwritable 👈 !")
   
	if message.text == 'Гарантии👌':
    			bot.send_message(message.chat.id, "Чистота на высшем уровне👌! Инстаграм аккаунт с отзывами @unwritable 👍🤩! Делаю без предоплаты😊! Оплата только после получения🤤! Ну что закажем что-то😉?")

	if message.text == '💲Цены💲':
    	 bot.send_message(message.chat.id, "Такой же бот как этот👆 - 45руб\n Для других ботов цену обсудим в инстаграме! @unwritable" )
    


 
# RUN
bot.polling(none_stop=True)
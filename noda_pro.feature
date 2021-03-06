#language:ru
Функционал: Вывод средств со счета

  Контекст: Исходные данные
    Дано Баланс 122000 токенов

  Сценарий: Вывод в пределах баланса
    Когда пользователь вводит в поле Вывести 100 коинов
    Когда Вывести все не выбрано
    Тогда при нажатии на кнопку Вывести
    Тогда выводится сообщение Токены списано 10000, осталось 102000

  Сценарий: Вывести все
    Когда  пользователь выставляет флажок Вывести все
    Тогда поле Вывести заполняется значением 1220 коинов
    Тогда при нажатии на кнопку Вывести
    Тогда выводится сообщение Токены списано 122000, осталось 0

  Структура сценария: Попытка вывода недействительной суммы
    Когда пользователь вводит в поле Вывести <bad_sum> коинов
    Когда Вывести все <all_flag>
    Тогда при нажатии на кнопку Вывести
    Тогда выводится сообщение Недостаточно средств
    Примеры:
      | bad_sum | all_flag   | message                                        |
      | 1221    | не выбрано | Недостаточно средств                           |
      | -1      | не выбрано | Введеное кол-во коинов должно быть больше 0    |
      | null    | не выбрано | value-error:Поле должно содержать только цифры |

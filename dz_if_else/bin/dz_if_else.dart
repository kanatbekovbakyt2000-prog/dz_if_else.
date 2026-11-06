// Три задачи без консольного ввода:
// 1) проверка имени и должности; 2) калькулятор скидок; 3) операторы || и &&.
void main() {
  print('===== Задача №1: Имя и статус =====');
  String name = 'Айбек';
  String status = 'студент';
  if (name == 'Айбек' && status == 'студент') {
    print('Данные подтверждены: $name, $status');
  } else if (name == 'Айбек' || status == 'студент') {
    print('Совпадает только часть данных');
  } else {
    print('Данные не совпадают');
  }
  switch (status) {
    case 'студент':
    case 'ученик':
      print('Категория: учится');
      break;
    case 'рабочий':
    case 'продавец':
      print('Категория: работает');
      break;
    default:
      print('Категория не определена');
  }
  String result = (status == 'студент' || status == 'ученик') ? 'Да' : 'Нет';
  print('Учится ли $name: $result');
  print('');

  print('===== Задача №2: Калькулятор скидок =====');
  double sum = 3000;
  double discountPercent;
  if (sum >= 5000) {
    discountPercent = 30;
  } else if (sum >= 3000) {
    discountPercent = 25;
  } else {
    discountPercent = 0;
  }
  double total = sum - sum * discountPercent / 100;
  print('Сумма покупки: $sum сом');
  print('Скидка: $discountPercent%');
  print('Итого к оплате: $total сом');
  print('');

  print('===== Задача №3: Операторы || и && =====');
  int age = 20;
  bool hasTicket = true;
  bool hasVipPass = false;
  if (age >= 18 && (hasTicket || hasVipPass)) {
    print('Доступ разрешён: возраст $age, билет есть');
  } else {
    print('Доступ запрещён');
  }
}
const mainuser = {
    username: 'admin',
    password: 'BlackOverlord'
};

const user = prompt('Enter User name: ');
if (!null) {
    alert('Login canceled');
} else {
    if (user === mainuser.username) {
        alert('password');
    } else {
        alert('Unknown user');
    }
}

console.log(user);






/*
Задание 3
Напишите программу, которая будет запрашивать логин пользователя, а затем его пароль. Предполагаем, что у нас есть только один пользователь "admin".
Если посетитель вводит "admin", то спрашивать пароль, если нажал "Cancel" (Отмена) или ввел пустую строку – выводить "Login canceled", если вводит что-то другое – "Unknown user".
Пароль проверять так. Если введен пароль "BlackOverlord", то выводить "Welcome!", иначе – "Wrong Password!". Если нажата отмена - "Login canceled".

Указания:
Если пользователь нажмет "отмена" в prompt, то результат будет равен null. Мы поговорим про null немного позднее, но данное значение является "ложным". 
То есть, при его использовании в if, мы получим аналог значения false. С помощью оператора "отрицание" мы можем проверить, что значение является ложным:

     if (!null) {
      alert('Always here');
    }
Использовать prompt и alert для ввода-вывода информации
Сдавать в виде HTML-файла*/
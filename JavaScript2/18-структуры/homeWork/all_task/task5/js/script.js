Задание:
(2 < 3) && (3 > 4) || true
Упрощение:
1- true && false = false ((2 < 3) && (3 > 4))
2- false || true = true
Ответ: true
console.log((2 < 3) && (3 > 4) || true);

Задание:
(2 < 3) && (3 > 4) || true
Упрощение:
1- !true = false
2- 100 != 5 * 5 = true
3- (!true || 100 != 5 * 5) = true
4- !true && true = false
Ответ: false
console.log(!true && (!true || 100 != 5 * 5));

Задание:
("123" == 123) || ((10 <= 10) && ('' === false))
Упрощение:
1- ("123" == 123)  = true
2- (10 <= 10) = true
3- ('' === false) = false
4- ((10 <= 10) && ('' === false)) = false
5- true || false = true
Ответ: false
console.log(("123" == 123) || ((10 <= 10) && ('' === false)));

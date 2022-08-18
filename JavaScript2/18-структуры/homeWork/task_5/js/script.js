/*Написать в текстовом документе, чему равны следующие булевые выражения в JavaScript. Сделать последовательное упрощение к булевым величинам.
    (2 < 3) && (3 > 4) || true
    !true && (!true || 100 != 5 * 5)
    ("123" == 123) || ((10 <= 10) && ('' === false))

Пример выполнения задания
Задание:
true && (false || (2 < 3))
Упрощение:
    true && (false || (2 < 3))
    true && (false || true)
    true && true
    true
Ответ: true
*/

console.log(2 < 3);
console.log(3 > 4);
console.log((2 < 3) && (3 > 4));
console.log(false || true);
console.log((2 < 3) && (3 > 4) || true);





/*

console.log(!true && (!true || 100 != 5 * 5));
console.log(("123" == 123) || ((10 <= 10) && ('' === false)));

*/
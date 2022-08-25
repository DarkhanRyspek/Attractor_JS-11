const numberMin = 1;
const numberMax = 10;

let firstNumber = Math.floor((Math.random() * (numberMax - numberMin) + numberMin));
let secondNumber = 0;
let rezult = 0;

while (secondNumber === firstNumber || secondNumber === 0) {
    secondNumber = Math.floor((Math.random() * (numberMax - numberMin) + numberMin));
}

rezult = firstNumber * secondNumber;

userAnswer = +prompt(`What is ${firstNumber} * ${secondNumber}?`);

if (userAnswer === null || userAnswer != rezult) {
    alert('You are not answering correctly!')
} else {
    alert('You are correct!')
}

/*
Задание 7
Напишите программу, которая проверяет ваше знание таблицы умножения. 
Сначала, она должна вывести на экран пример, который должен быть сгенерирован случайным образом, для двух чисел от 1 до 9. 
При этом пользователь должен написать ответ. Если ответ верный, программа должна вывести сообщение "You are correct!". 
Если не верный или пустой, сообщение "You are wrong".*/
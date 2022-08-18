//task-2
alert("Задание-2");
const userAge = +prompt("How old are you?");
if (!Number.isInteger(userAge)) {
    alert('You are entering incorrect data, please check!');
} else {
    if (userAge > 1 && userAge < 14) {
        alert('The lion king');
    } else if (userAge > 13 && userAge < 18) {
        alert('Pirates of the caribbean');
    } else if (userAge >= 18 && userAge < 123) {
        alert('Requiem for a Dream');
    } else if (userAge >= 123) {
        alert('Error_404');
    }
}
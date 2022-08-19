//tast-3
alert("Задание-3");
const userDrinkType = prompt("What is your favorite drink?").toLowerCase();
switch (userDrinkType) {
    case 'beer':
    case 'vodka':
        alert("You will die alone and without money, like a bitch!!!");
        break;
    case 'coffee':
        alert("Come on, boy, you don't have a second heart!!!");
        break;
    case 'water':
        alert("Good job, my boy!!!");
        break;
    default:
        alert('You need to choose WATER!!!');
}
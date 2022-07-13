"use strict";
// 1 часть 
// function pow(x ,n) {
//     let res = 1;
//     for (let i = 0; i < n; i++){
//         res *= x;
//     }
//     return res;
// };


// console.log(pow(4,5));

// function pow2(x, n) {
//     if (n === 1){
//         return x;
//     } else {
//         return x * pow2(x, n - 1);
//     }
// };

// console.log(pow2(4,5));

// 2 часть
let  student = {
    js: [{
        name: 'John',
        progress: 100
        }, 
        {
        name: 'Ivan',
        progress: 60
        }   
    ],

    html: {
        basic: [{
            name: 'Peter',
            progress: 20
        },{
            name: 'Ann',
            progress: 18
        }],

        pro: [{
            name: 'Sam',
            progress: 10
        }],

        semi: {
            student: [{
                name: 'Kairat',
                progress: 100
            }]
        }
    }
};

//olb version of function
// function getTotalProgressByItaration(data){
//     let total = 0;
//     let student = 0;

//     for (let course of Object.values(data)){
//         if (Array.isArray(course)){
//             student += course.length;
//             for (let i = 0; i < course.length; i++){
//                 total += course[i].progress;
//             }
//         } else {
//     for (let subCourse of Object.values(course)){
//         student += subCourse.length;
//         for (let i = 0; i < subCourse.length; i++){
//             total += subCourse[i].progress;
//         }
//     }
// }
// }
// return total / student;
//     };

// console.log(getTotalProgressByItaration(student));


function getTotalProgressByRec(data) {
    if (Array.isArray(data)){
        let total =0;
        
        for (let i = 0; i < data.length; i++){
            total += data[i].progress;
            }
    return [total, data.length];
    } else {
        let total = [0, 0];
        for (let subData of Object.values(data)) {
            const subDataArr =  getTotalProgressByRec(subData);
        total[0] += subDataArr[0];
        total[1] += subDataArr[1];
        }
        return total;
    }
};

const result = getTotalProgressByRec(student) 

console.log(getTotalProgressByRec(student),result[0]/result[1]);

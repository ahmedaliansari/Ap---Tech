// Convert Sting To Object JSON.parse

var data1 = '{"name":"Ahmed","age":"21","course":"Dism"}';

console.log(data1);

var data2 = JSON.parse(data1);

console.log(data2);

// Convert Sting To Object JSON.stringfy

var data3 = {
  name: "Ahmed",
  age: 21,
  course: "Dism",
};

console.log(data3);

var data4 = JSON.stringify(data3);

console.log(data4);

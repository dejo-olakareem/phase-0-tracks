var colors = ["blue","red","green","black"];
var names = ["bob","jack","jane","romaro"];



colors.push("white");
names.push("ricardo");

console.log(colors);
console.log(names);


var horse = {};
for(var i = 0;i < colors.length;i++){
  horse[names[i]] = colors[i];  
}
console.log(horse);

function Car (maxSpeed,color,isAutomatic){
  
  this.maxSpeed = maxSpeed;
  this.color = color;
  this.isAutomatic = isAutomatic;

  this.brightLight = function(a) {
    console.log("shine bright like a diamond:" + a);
  };
  
  
}

var car1 = new Car(80, "red", false);
console.log(car1);
car1.brightLight(8);

var car2 = new Car(35, "rust", true);
console.log(car2);
car2.brightLight(0);


var car3 = new Car(150, "white", false);
console.log(car3);
car3.brightLight(10);


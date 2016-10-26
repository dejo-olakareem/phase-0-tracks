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



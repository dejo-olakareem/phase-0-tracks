// Create a function
// Function should take in Array as input
// Iterate through each Array index
// we want to store the length of the first index
// if index is the longest, print index




function take_in_array(arr){
	stored = ""
	for(i = 0;i < arr.length; i++){
		if (arr[i].length > stored.length ){
				stored = arr[i]
		}
	}
	return stored
}
wale = ["long phrase","longest phrase","longer phrase"]
console.log(take_in_array(wale))


// Create a function that takes in two input
// iterate over each key
// check to see if this inputs shares a key
// print the key that is shared
obj1 = {name: 66,age: 30,bath : 506};

obj2 = {name: 66,age: 30,bath : 506};


 function object_comparism(obj1,obj2){
 	for (var i in obj2){
 	if (obj1[i] == obj2[i]){
 		 v = true;
 	}else 
 		v = false;
 	
 }	
 return v 
}


blake = {name: "Steven", age: 54}
drakula = {name: "Tamir", age: 54}

// object_comparism(blake,drakula)
object_comparism(obj1,obj2)


function get_random_letter() {
	var alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"];
	var alphabet1 = alphabet.join("");
	var value = Math.random() * (25 - 0) + 0; 
	var random_value = Math.round(value); 
	var random_letter = alphabet1[random_value]; 
	return random_letter;
}



function random_string_builder() {
	var random_string = "";
	var length_value = Math.random() * (10 - 1) + 1; 
	length_value = Math.round(length_value);
	for (var i = 0; i < length_value; i++){
		 random_string += get_random_letter();
	}

	return random_string;
}

function array_builder(integer) {
	var arr = [];
		for(var i = 0; i < integer; i++){
			arr.push(random_string_builder());
			
			
		}
		return arr 
}


var wal = array_builder(10);
console.log(wal)
console.log(take_in_array(wal));
 
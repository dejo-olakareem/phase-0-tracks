// Create a function
// Function should take in Array as input
// Iterate through each Array index
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
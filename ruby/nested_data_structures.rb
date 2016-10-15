wellsfargo = {
	retail:{
		stores:["private_bankers","personalbankers"],
		support: "regional consultant"
	},
	mortgage:{
		home_equity:["consultant","assitant"],
		private_home:{}
	},
	risk:{
		storeinvst:["rgc team","internal"],
		qaa:[]
	}

}

# this will give insert this data to qaa

wellsfargo[:risk][:qaa].push"detective"
wellsfargo[:risk][:qaa].push"auditor"

# this will select "regional consultant"
wellsfargo[:retail][:support]


#this will insert key senior and values to it
wellsfargo[:mortgage][:private_home][:senior] = ["specialist","PCA"]



#this will insert key value EVP to wellsfargo
wellsfargo[:EVP] = ["senior evp","assitant evp"]





# # create an empty object to input all information
int_des = {}
 
# Ask the client's name, age, number of children, decor theme
 
p "what is your name"
int_des[:name] = gets.chomp
p "what is your age"
int_des[:age] = gets.chomp.to_i
p "how many kids do you have"
int_des[:kids] = gets.chomp.to_i
p "what is decor theme do you want"
int_des[:decor_theme] = gets.chomp


p int_des
 
#ask if client forgot or missed any thing
 
p "what will you like to change?name,age,number of kids or decor theme, if nothing type none"
f_ans = gets.chomp
if f_ans == "none"
        p int_des
        elsif f_ans == "name"
        p "what is your name"
        name = "name".to_sym
        int_des[name]= gets.chomp
        # p name = "name".to_sym
        elsif f_ans == "age"
        p "what is your age"
        age = "age".to_sym
        int_des[age] = gets.chomp
        elsif f_ans == "number of kids"
        p "how many kids do you have"
        kids = "kids".to_sym
        int_des[kids] = gets.chomp
        elsif f_ans == "decor theme"
        p "what is the decor theme you want"
        decor_theme = "decor_theme".to_sym
        int_des[decor_theme] = gets.chomp
        else p "I do not understand"
end
p int_des
 
pizza_order_func <- function (){
   
 order_again <- 1
  pizza <- as.character()
  sizes <- as.integer()
  prices <- as.integer()

  # order pizza type
  while(order_again == 1){
    print("1.Hawaiian 🍍 2.Seafood 🦪 3.Ham & Cheese 🧀 ")
    print("Please, order in number")
    action <- readLines(con="stdin", n=1)
    
    
    if(action==1){
      pizza_type <- "Hawaiian 🍍"
    }else if(action==2){
      pizza_type <- "Seafood 🦪"
    }else  if(action==3){
      pizza_type <- "Ham & Cheese 🧀"
    } else{
      print("Please try again. Select from 1 to 3")
    }
    pizza <-append(pizza, as.character(pizza_type))
    
    #order pizza size
    print("What is the size of pizza that you prefer?")
    print("M for Medium, L for Large, XL for Extra Large")
    pizza_size <- readLines(con="stdin", n=1)
    sizes <- append(sizes, as.character(pizza_size))
    if (tolower(pizza_size) == "m"){
        print("Size M = 399 ฿")
        pizza_price <- 399
     }else if (tolower(pizza_size) =="l"){ 
      print("Size L =  500 ฿") 
        pizza_price <- 500
      }
    else if (tolower(pizza_size) =="xl"){ 
          print("Size XL =  600 ฿")
        pizza_price <- 600
      } else{
      print("Please try again. Select M, L or XL")
    }
    # order more pizza?
    prices <- append(prices, as.integer(pizza_price))
    print("Do you want to order more?")
    print("ํType:1, if you would love to order more!")
    print("ํType:2, if you are finish with you order")
    order_again <- readLines(con="stdin", n=1)
    
  } 
  # order status
  print("---------Please type---------")
  print("Type: 1, if you would love to dine in 🏬")
  print("Type 2, if you would take away 🏡")
  orderstatus <- readLines(con="stdin", n=1)
  if(orderstatus==1)
    {
      orderstatus <- "Dine In"
    }else if(orderstatus==2){
      orderstatus <- "Take Away"
    } else{
    print("Please select 1 or 2")
    }
    pizza_df <- data.frame(pizza,sizes,prices)

  print("===================Order summary===================")
  print(paste("Customer name  :",user_name))
  print(paste("Order : ",orderstatus))
  print("---------------------------------------------------")
  print(pizza_df)
  total_amount <- sum(pizza_df$prices)
  print("---------------------------------------------------")
  print(paste("Total Amount = ",total_amount,"฿."))
  print ("===================================================")
print ("Thanks for your order!")
  print ("===================================================")
 }

print("🍕 🍕 🍕 Welcome to Pizza Aroi Mak's app! 🍕 🍕 🍕")
print("Hello There!")
#question 1
print("What's your name?")
user_name <- readLines(con="stdin", n=1)
print(paste("Hi", user_name, ", Welcome to Pizza Aroi Mak!"))
#question 2
print("What would you like to order today?")
pizza_order_func()

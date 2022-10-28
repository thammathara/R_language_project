#input
input <- c(1,2,3)
names(input)<- c("Rock", "Paper", "Scissors")

#Greeting
print("-+-+-+-+-+-+-+- Hello Challenger -+-+-+-+-+-+-+-")
print("Welcome to my Rock 👊 ,Paper ✋ ,Scissors ✌ Game")
print("What's your name?")
user_name <- readLines(con="stdin", n=1)
print(paste("Hi",user_name,", are you ready for the battle!!!"))
print("                              ")
print("o(*￣▽￣*)ブ  Rules  👊 ✋ ✌  ")
print("                              ")
print("Type: 1 for Rock, 2 for Paper ")
print("and 3 for Scissors            ")
print("                              ")
print("Rock     wins against Scissors")
print("Paper    wins against Rock    ")
print("Scissors wins against Paper   ")
print("==============================")
print("        PRESS Q to quit       ")
print("==============================")

# Game
counts <- 0
tied <- 0
user_win <- 0
user_lose <- 0

repeat{
  print("Please select Rock [1], Paper [2] or Scissors [3] ?")
  bot <- function(){
  rps <- c("Rock 👊 ", "Paper ✋ ", "Scissors ✌ ")
    sample(rps,1)
  }
user_item <- readLines(con= "stdin", n=1)
bot_input <- bot()
print(paste("Computer choose: ",bot_input))
  
  result <- if (
    (user_item == 1 & bot_input == "Rock 👊 ") ||
    (user_item == 2 & bot_input == "Paper ✋ ") ||
    (user_item == 3 & bot_input == "Scissors ✌ ")) {
  "TIE"
  } else if (
    (user_item == 1 & bot_input == "Paper ✋ ") ||
    (user_item == 2 & bot_input == "Scissors ✌ ") ||
    (user_item == 3 & bot_input == "Rock 👊 ")) {
  "DEFEAT"
  } else if (
    (user_item == 1 & bot_input == "Scissors ✌ ") ||
    (user_item == 2 & bot_input == "Rock 👊 ") || 
    (user_item == 3 & bot_input == "Paper ✋ ")) {
  "VICTORY"
  }   
  print(result)
  if (result == "VICTORY") {
    user_win <- user_win + 1
  } else if (result == "TIE") {
    tied <- tied + 1
  } else if (result == "DEFEAT") {
    user_lose <- user_lose + 1
  }
    print("===== Do you want to play again? =====")
  print("Type: A3nything, if you want to play again!!!")
  print("Type: Q, if you want to quit           ")
  decision <- readLines("stdin", n=1)
  if (tolower(decision) == "q") {
    break
  }  
}
  #summary
print("================================")
print("         GAME SUMMARY           ")
print("================================")
print(paste("Win:", user_win))
print(paste("Lose:", user_lose))
print(paste("Draw:", tied))
print("================================")
print("     THANK YOU FOR PLAYING     ")
break}
}
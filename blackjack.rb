# Blackjack Terminology
# 	dealers bank 
# 	discard rack
# 	the shoe - four deck, six deck etc
# 	face holds cards in place
# 	cards, shuffle

# Use at least four decks of cards

# 1. first cycle each player gets one card, dealer gets one card facing down
# 2. second cycle each player gets one card, dealer gets one card facing down
# 3. dealer card on second round is revealed on top of the first cycle dealer card

# Definitions
# 	Hard Hands have firm value
# 	Soft Hands have face cards
# 	Double down = bet equal to the original bet where you get a third card
# 	D = Double down
# 	H = Hit
# 	S = Stand

# Player Best Practices
# 	Always hit hard cards
# 	Always stand on hard two cards that total 17 or more except for double 9s
# 	Stand on 13 - 16 when dealer has numbers 2 - 6
# 	Always Hit when dealer has 7 - 10 up cards and you have hard cards
# 	Bust occurs when player or dealer reaches a value greater than 21 

# Pseudo Code

# computer deals player two cards from the 4 deck shoe
# loop while
# if player hits, computer deals one card from the shoe
# end if the sum of player's cards is greater than 21 or if
# player reaches exactly 21 or if player chooses to stay

# begin computer's turn
# computer deals card one card from the shoe until 17 is met
# loop while winning_condition 
# 	if dealer busts
# 		"Puts Dealer busts - you win"
# 	else higher_value_wins
# end
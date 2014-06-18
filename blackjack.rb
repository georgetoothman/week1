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

# card_deck contains many cards 
# cards contain suits
# suits contain (diamonds, hearts, spades, and clubs)
# each suit has cards with values 1..9 and the face cards plus an ace
# the shoe_box contains four card_decks
# computer randomly orders shoe_box
# computer assigns two cards to player and to dealer
# cards assigned to dealer are dealer_hand
# cards assigned to player are player_hand
# dealer reveals one card
# player types 'hit' or 'stay'
# if 'hit' computer assigns player one additional card
# if 'stay' computer assigns dealer one additional card
# while loop calculates the value of player_hand and dealer_hand
# blackjack is met when player or dealer reach value of 21

# table is initialized
# => add four card_decks to shoe_box
# => shuffle shoe_box
# => assign player1 to player_hand
# => assign player2 to dealer_hand
# => add two cards from shoe_box to player_hand and dealer_hand

# loop until theres a winner or bust
# => score checks if 21 or bust is met 
# => player_picks_actions
# => if 'hit', computer_deals_card_to_player(shoe_box) into player_hand
# => if 'pass', computer enters dealer_condition
# => in dealer_condition dealer_hand value must be 17 else 
## => computer_deals_card_to_dealer(shoe_box)


# def initialize_table
# 	t = {}
# 	(1..4).each {|position| t[position] = ' '}
# 	t
# end

suits = { hearts: [2,3,4,5,6,7,8,9], diamonds: [2,3,4,5,6,7,8,9],
				 	clubs: [2,3,4,5,6,7,8,9], spades: [2,3,4,5,6,7,8,9] }

suits.each do |key, value| 
	puts "#{value[0]} of #{key} #{value[1]} of #{key} #{value[2]} of #{key} #{value[3]} of #{key} #{value[4]} of #{key} #{value[5]} of #{key} #{value[6]} of #{key} #{value[7]} of #{key}" 
end


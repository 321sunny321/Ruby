puts "最初はグー、じゃんけん..."
puts "[0]:グー\n[1]:チョキ\n[2]:パー"

your_hand = gets.to_i

while your_hand != 1 && your_hand != 2 && your_hand != 0 do
	puts "入力された値は無効です"
	your_hand = gets.to_i
end



janken = ["グー", "チョキ" ,"パー"]

enemy_hand = rand(3)

puts "あなたの手:#{janken[your_hand]}, 相手の手:#{janken[enemy_hand]}"

if your_hand ==  enemy_hand
	puts "あいこです"
elsif your_hand == 0 && enemy_hand == 1
	puts "あなたの勝ちです"
elsif your_hand == 1 && enemy_hand == 2
	puts "あなたの勝ちです"
elsif your_hand == 2 && enemy_hand == 0
	puts "あなたの勝ちです"
else
	puts "あなたの負けです"
end


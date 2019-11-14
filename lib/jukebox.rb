require 'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.strip
  
    if (1..9).include?(user_input.to_i)
     # user_input.to_i >= 1 && user_input.to_i <= songs.length
     
      puts "Playing #{songs[user_input.to_i-1]}"
      elsif songs.include?(user_input)
      puts "Playing #{user_input}"
    else
      puts "Invalid input, please try again"
  end
end

def list(songs)
  songs.each_with_index do |music, index|
  new_index = index + 1
  puts "#{new_index}. #{music}"

  end
end

def exit_jukebox
  puts "Goodbye"
end

def run
  puts "Please enter a command:"
  user_input = get.strip
  while user_input.include?("list" || "play" || "help" || "exit") do
  
  if user_input == "list"
    list
  elsif user_input == "play"
    play
  else user_input == "help"
    help
   until user_input == "exit"
    exit_jukebox
      
      end
    end
  end
  user_input
end









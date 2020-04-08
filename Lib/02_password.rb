$password = "mrrobot"

def sign_up
  puts "You would like to register a new password"
  print "What's the password: "
  $password = String(gets.chomp)

  puts "New password set... Wait until we save it to the database..."
  sleep(2)
  welcome_screen
end

def login
  puts "You would like to login to your session"
  print "What's the password: "
  pass = String(gets.chomp)

  if pass == $password
    success_login
  else
    puts "Wrong password! Try again!"
    login
  end
end

def success_login
  puts "Welcome on the NSA database panel!"
end

def welcome_screen
  puts "password: #{$password}"
  puts "What do you would like to do ?"
  puts "1 - Sign up"
  puts "2 - Login"

  print "❯ "
  user_choice = Integer(gets.chomp)

  if user_choice == 1
    sign_up
  elsif user_choice == 2
    login
  else
    puts "Choose between 1 and 2!"
    welcome_screen
  end
end

welcome_screen
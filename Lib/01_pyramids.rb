def ask_etage
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    print "> "
    etage = gets.chomp.to_i
end
  

def full_pyramid(etage)
    niveau = 1
    puts "#{etage}"
    puts "Voici la pyramide :"
        etage.times do
        	puts ("#" * niveau).center(etage * 2)
        	niveau = niveau + 2
        end
    wtf_pyramid(etage)
end

def wtf_pyramid(etage)
	niveau = etage * 2 -1
    etage.times do
        puts ("#" * niveau).center(etage * 2) if niveau != etage * 2 - 1
        niveau = niveau - 2
    end
end

def action
    etage = ask_etage
    full_pyramid(etage)
end

action

def ask_etage
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    print "> "
    etage = gets.chomp.to_i
<<<<<<< HEAD
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

=======
    return etage
  end
  

def full_pyramid(etage)
    pyramide = []
    ct = 0
    boucle = 0
    print "#{etage}"
    puts "Voici la pyramide :"
    loop do
        var2 = '#' * (etage - boucle)
        var1 = ' ' * (etage/2 - ct)
        var3 = ' ' * (etage/2 - ct)
        pyramide << var1 + var2 + var2 + var3
        ct -= 1
        boucle += 1
        if boucle == etage
            break
        end
    end
    puts pyramide.reverse
end

def action
    etages = ask_etage
    full_pyramid(etages)
  end
>>>>>>> 36c65c7eaa97476b73024ae46c634fbc9b662527
action
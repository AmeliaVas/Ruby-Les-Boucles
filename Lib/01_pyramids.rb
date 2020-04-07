def ask_etage
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    print "> "
    etage = gets.chomp.to_i
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
action
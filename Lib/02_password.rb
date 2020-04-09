def sign_up
	puts "Veuillez choisir un mot de passe : "
	$password = gets.chomp

	puts "Votre mot de passe a bien été enregistré."
	accueil
end

def accueil
	puts "Bienvenue sur votre écran d'accueil !"
	puts "Vous souhaitez :"
	puts "1 - Vous connecter"
	puts "2 - Vous inscrire"
	connexion = gets.chomp.to_i

	if connexion == 1
		login
	elsif connexion == 2
		sign_up
	else
		puts "Entrez 1 ou 2"
		accueil
	end
end

def login
	puts "Vous tentez de vous connecter à votre espace personnel."
	print "Mot de passe : "
	mdp = gets.chomp

	if mdp == $password
		puts "Authentification réussie"
		welcome_screen
	else
		puts "Mot de passe incorrect, essayez encore !"
		login
	end
end

def welcome_screen
	puts "Bienvenue dans votre espace personnel."
	puts "Vous avez 3 nouveaux messages."
	puts "Entrez 'Lire' ou 'Suivant'"
	message = gets.chomp

	if message = "Lire"
		puts "Message de Sarah : << Salut, j'ai fini ton appli ! Je te l'envoie ce soir >>"
		puts "Message de Maman : << Ton frère vient dîner ce soir, ne sois pas en retard. Bisous >>"
		puts "Message de 0615215993 : << SFR vous informe que votre facture téléphonique est disponible sur votre espace client.>>"
	elsif message = "Suivant"
		puts "Pas d'autres notifications."
	else
		puts "Erreur"
		welcome_screen
	end
end

accueil



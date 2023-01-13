#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

@matrice1 = [43, 34, 6, 73, 7, 33, 73, 87, 443, 7, 32, 8, 442, 6, 2, 5, 0, 44, 3, 4, 342, 66, 554, 7, 56]
@matrice2 = [473, 7, 33, 4, 342, 66, 554, 7, 56, 73, 87, 443, 7, 32, 8, 4423, 34, 6, 9, 2, 5, 0, 44, 64, 3]

puts(@matrice1.first)
puts(@matrice1[0])


valeur = @matrice1.first + @matrice2.first
puts(valeur, "__") #Les "__" sont pour separer les reponses quand ils sont imprimees dans le console


valeur2 = @matrice1.max + @matrice2.max 
puts(valeur2, "__")


valeur3 = @matrice1.min + @matrice2.min 
puts(valeur3, "__")


valeur4 = @matrice1.min 
puts(valeur4, "__")


valeur5 = @matrice2.min 
puts(valeur5, "__")


joined = @matrice1 + @matrice2
puts(joined, "__")
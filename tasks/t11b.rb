#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

@matrice1 = [43, 34, 6, 73, 7, 33, 73, 87, 443, 7, 32, 8, 442, 6, 2, 5, 0, 44, 3, 4, 342, 66, 554, 7, 56]
@matrice2 = [473, 7, 33, 4, 342, 66, 554, 7, 56, 73, 87, 443, 7, 32, 8, 4423, 34, 6, 9, 2, 5, 0, 44, 64, 3]


sum = @matrice1.sum 
puts(sum, "__") #Les "__" sont pour separer les reponses quand ils sont imprimees dans le console

average = @matrice1.sum / @matrice1.length
puts(average, "__")

dernier5_1 = @matrice1.slice(-5 , 5)
puts(dernier5_1, "__")

dernier5_2 = @matrice2.slice(-5, 5)
puts(dernier5_2, "__")

addvalues = @matrice1.each 
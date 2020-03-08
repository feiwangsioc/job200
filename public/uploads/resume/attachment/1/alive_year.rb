def alive_year(arr)

   # initial setup the birth year and the death year
   min_birth = arr[0][0]
   max_death = arr[0][1]
   # to find out earliest birth year and the latest death year
    (1...arr.size).each do |i|
   	 min_birth = arr[i][0] < min_birth ? arr[i][0] : min_birth 
   	 max_death = arr[i][1] > max_death ? arr[i][1] : max_death
   end 
# create a hash to record year and the number of alive people in this year 
   h_year = {}
   
   # scan every year
   (min_birth..max_death).each do |a_year|
    h_year[a_year] = 0
    #scan every person
     for j in 0...arr.size do 
       if arr[j][0] <= a_year && arr[j][1] >= a_year
         h_year[a_year] = h_year[a_year] + 1
       end 
     end 
   end 

# create a empty array to record years with most people alive 
   a_y = []

# h_m is the number of most people alive
   h_m = h_year.values.max

# to find out all the keys(years) 
   h_year.each do |k, v|
     a_y << k if v == h_m
   end 

   
   return a_y
   

end 


arr1 = [[1910, 1950], [1900, 1951], [1945, 2000]]
puts alive_year(arr1)

puts "-------------"

arr2 = [[1910,1950],[1900,1951],[1945,2000],[2001,2005]]

puts alive_year(arr2)

puts "-------------"

arr3 = [[1914, 1955], [1906, 1988], [1945, 2000], [1957, 2009], [1958, 1999]]
puts alive_year(arr3)




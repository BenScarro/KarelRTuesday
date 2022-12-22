#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


def rangen
  randnum = rand(0.. 20)

  puts"gen1"

  puts "#{randnum}"
end

def rangen2
  randnum2 = rand(0.. 20)

  puts"gen2"

  puts "#{randnum2}"

  if randnum2 > 10
    puts "number is bigger than 10"
  end

  if randnum2 < 10 
    puts "number is smaller than 10"
  end

  if randnum2 == 10
    puts "number is equal to 10"
  end
end

def rangen3 
  randnum3 = rand(0.. 20)
  randnum4 = rand(0.. 20)

  puts"gen3"

  puts "#{randnum3}"
  puts "#{randnum4}"

  if randnum3 > randnum4
    puts"#{randnum3} is bigger than #{randnum4}"
  end

  if randnum3 < randnum4
    puts"#{randnum3} is smaller than #{randnum4}"
  end
end

rangen
rangen2
rangen3
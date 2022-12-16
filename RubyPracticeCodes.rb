#Static Variables

#String
name="Ragul"

#Numbers
int_num=125
float_num=12.5

#Boolean
flag=true

puts(name,int_num,float_num,flag)

#Dynamic Inputs

#String
user_name=gets
puts(user_name)

#Numbers
user_int=gets.to_i
user_float=gets.to_f

puts(user_name,user_float,user_int)

#If else statement

N=10
if(N<20)
    puts("#{N} less than 20")
elsif(N>20)
    puts("#{N} greater than 20")
else
    puts("#{N} is equal to 20")
end

#Unless Statement

x=1
unless x>2
    puts("#{x} lesser than 2")
else
    puts("#{x} greater than 2")
end

#Until Statement

x=10
until x==15
    puts(x)
    x+=1
end

#For Loop

arr=["ragul",19,"cse",10,"10xv"]

for i in arr do
    puts i
end

for i in (1..arr.length)
    puts arr[i]
end

#While Loop

x=5
while x<=10 do
    puts x
    x+=1
end

#Do while Loop

loop do
    puts"hi"
    if(gets.chomp.to_i<=10)
        break
    end
end

#Case Statements

num=gets.chomp.to_i

case num
when 1..9
    puts("Single Digit")
when 10..999
    puts("Double Digit")
else
    puts("None of these")
end
    puts("ended")

#Functions

def returnMax(a,b)
    if(a>b)
        return a
    else
        return b
    end

a=gets.chomp.to_i
b=gets.chomp.to_i
puts returnMax(a,b)


#Class and Objects

class Car
    @name
    @mileage
    @model
    @speed
  
    def initialize(name, mileage, model, speed)
      @name = name
      @mileage = mileage
      @model = model
      @speed = speed
    end
  
    def carDetails(name, mileage, model, speed)
      puts("Name is #{name} and mileage is #{mileage} and model is #{model} and speed is #{speed}")
    end
  end
  name = gets
  mileage = gets.to_i
  model = gets
  speed = gets.to_i
  carObj = Car.new(name, mileage, model, speed)
  carObj.carDetails(name, mileage, model, speed)

#Getters and Setters Shortcuts

class Car

attr_accessor:name,:model,:speed

end

first_car=Car.new
first_car.name="benz"
first_car.model="10xv"
first_car.speed=280
puts(first_car.name,first_car.model,first_car.speed)

#Methods without objects

class Car

    def self.accelerate(speed)
        puts "car 1 accelerated at #{speed}"
    end
end

speed=50
Car.accelerate(speed)

#Array Concepts

arr=[1,2,"ragul",23.9,'xv']

user_arr=Array.new(5)

for i in 0..5
    user_arr[i]=gets
end
puts user_arr

user_arr<<"hi"

puts user_arr.length

puts user_arr.inspect

puts user_arr

#2D Array

cells=[['a','b','c','d','e'],['f','g','h','i','j']]

cells.each do|row|
    row.each do|col|
        print col
    end 
    puts
end

#Hashes

hsh={"ragul"=>"cse","hi"=>"hello",1=>"Good",5=>1090}

hsh.each{|key,value| puts "Key : #{key} , value : #{value}"}

#Inheritance

class Animal

    attr_accessor:colour,:name
end

class Lion < Animal

    def roar
        return "Roar"
    end
end

animal_obj=Lion.new
animal_obj.colour="Brown"
animal_obj.name="lion"
puts animal_obj.roar
puts animal_obj.inspect

#Overriding

class Animal

    attr_accessor:colour,:name

    def roar
        return "Parent Method Roared"
    end
end

class Lion < Animal

    def roar
        puts super()
        return "Child Method Roared"
    end
end

animal_obj=Lion.new
animal_obj.colour="Brown"
animal_obj.name="lion"
puts animal_obj.roar

#Date and Time

time=Time.new
puts time


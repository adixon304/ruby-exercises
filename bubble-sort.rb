#Bubble Sort Exercise
#Build a method #bubble_sort that takes an array and returns a sorted array. 
#It must use the bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).
require 'pry-byebug'
def bubble_sort(sort_array)
unsorted = true
    while unsorted do   
        unsorted = false     
        for i in 1..sort_array.length - 1                  
            #check next index in array and determine if it's larger, if so swap
            if sort_array[i-1].to_i > sort_array[i].to_i  then
                #swap values in array
                sort_array[i], sort_array[i-1] = sort_array[i-1], sort_array[i]
                unsorted = true                                      
            end            
        end
    end
print sort_array
end
bubble_sort([4,3,78,2,0,2])
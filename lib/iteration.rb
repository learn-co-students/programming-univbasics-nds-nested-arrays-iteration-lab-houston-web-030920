def join_ingredients(src)
  ingredients = src
  
  final_statement = []
  list_index = 0
  while list_index < ingredients.count do
      final_statement.push("I love #{(ingredients[list_index][0])} and #{(ingredients[list_index][1])} on my pizza")
    list_index += 1
  end
  return final_statement
end

######################################

def find_greater_pair(src)
  numbers = src

  sorted_numbers = []
  pair_index = 0
  while pair_index < numbers.count do
    sorted_numbers.push(numbers[pair_index].sort)
    pair_index += 1
    final_statement = []
    larger_number = 0
      while larger_number < sorted_numbers.count do
        final_statement.push(sorted_numbers[larger_number][-1])
        larger_number += 1
      end  
  end
  return final_statement
end

######################################

def total_even_pairs(src)
  all_numbers = src
  
  even_numbers = []
  
  all_numbers.each { |num| 
    if num[0] && num[1] % 2 == 0
      even_numbers.push(num)
      end }
      
  total = 0
  numbers_pairs = 0     
  while numbers_pairs < even_numbers.count do
    numbers = 0 
    while numbers < even_numbers[numbers_pairs].count do
      total += even_numbers[numbers_pairs][numbers]
      numbers += 1 
    end
    numbers_pairs += 1 
  end  
  return total
end

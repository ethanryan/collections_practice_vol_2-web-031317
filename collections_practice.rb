require "pry"

def begins_with_r(array)
  array.all? do |word|
    if word[0] == "r" #if first letter of each word == "r"
      true #return true
    else
      false
    end #end if..else statement
  end #end do loop
end #end method


def contain_a(array)
  new_array = [] #create new array
  array.map do |word| # map (or collect or select??)
    if word.include?("a") #if word includes an 'a' in it...
      new_array << word #append that word to our new_array
    end #end if..else statement
  end #end do loop
  new_array #return the new array of words that contain 'a'
end #end method


def first_wa(array)
  array.detect do |word| # detect returns first distinct element to match condition (detect is same as find)
    word[0,2] == "wa" #the condition: a word that begins with 'wa'... note: word[0,2] means the first 2 characters of a word, starting at position 0 (the first character)
  end #end do loop
end #end method


def remove_non_strings(array)
  array.reject do |item| # reject will modify array and return it if it rejected something, or nil if if no rejections were made
    !item.is_a? String #item.is_a? String with the exclamation before it is rejecting each item that is NOT a string
  end #end do loop
end #end method


#### got this solution from here: http://stackoverflow.com/questions/37441604/count-how-many-times-something-appears-in-an-array
def count_elements(array)
  array.group_by(&:itself)             # group all of the identical elements together
 .map{|k, v| k.merge(count: v.length)} # add the "count" element to the hash
end #end method

### close with this, need to review/learn about hashes:::::::
# def count_elements(array)
# array.each_with_key do |key, value|
#   array[key].count
# end #end do loop
# end #end method


##### gonna come back to this one...... not used to arrays within hashes....
def merge_data(keys, data)
  #no idea what i'm doing with this one...
  #....... merge data into keys and return keys
  new_thing = {} #new_thing will be a hash with an array inside, with two hashes inside it

  keys.each do |key, value| #first key = {:first_name=>blake}, second key = {:first_name=>ashley}... no values
    #binding.pry
    new_thing << key

    #data[key] = [value] # assigning keys in this loop, {:first_name=>blake}, as the values in my new_hash...
    #new_hash[:my_key] = "my value"
    #hash[:my_key] = {second_level_key: "second level value"}
  end #end loop

  data.each do |key, value|
    #binding.pry
    #new_hash[:my_key] = "my value"
    #hash[:my_key] = {second_level_key: "second level value"}
  end #end loop
  puts keys #to see what i'm getting
  return keys
end #end method

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


def merge_data(keys, data)
  v1 = data
  v2 = keys
  v1[0].values.map.with_index {|v, i| v2[i].merge(v)}
end


  #got this answer from here: http://stackoverflow.com/questions/37445550/how-to-combines-two-nested-data-structures-into-one

 #  keys.each do |element|
 #    new_hash[:key] = element
 #    #binding.pry
 #    #element1 == {:first_name=>"blake"}
 #    #element2 == {:first_name=>"ashley"}
 #  end
 #
 #  data.each do |element|
 #    #binding.pry
 #    #element1 == {"blake"=>
 # #  {:awesomeness=>10,
 # #   :height=>"74",
 # #   :last_name=>"johnson"},
 # # "ashley"=>
 # #  {:awesomeness=>9,
 # #   :height=>60,
 # #   :last_name=>"dubs"}}
 #  end

 def find_cool(cool)
   cool.find_all do |object| #cool is an array with two hashes
     if object.values.include?("cool")
        object
     end #end if statement
   end
 end




#got this from a fellow classmate's github:
def organize_schools(schools)

  new_hash = {}

  schools.each do |school, location|
    city = location[:location]
    new_hash[city] = []
  end

  schools.each do |school, location|
    city = location[:location]
    new_hash[city] << school
  end

  new_hash
end #end method

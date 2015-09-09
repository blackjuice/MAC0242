=begin
	Integrantes: 
	Leonardo Daneu Lopes	8516816
	Lucas Sung Jun Hong	8124329
=end


module FunWithStrings
    def palindrome?
        str = self.downcase.gsub(/[^a-z]/,'')
        if (str.reverse == str) 
            return true
        end
        return false
    end

    def count_words
        str = {}
        self.downcase.gsub(/[!.,-]/, '').split.each {|word| str.store(word, str[word].to_i + 1)}
        return str
    end

  def anagram_groups
       return self.downcase.split.group_by {|word| word.chars.sort}.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end

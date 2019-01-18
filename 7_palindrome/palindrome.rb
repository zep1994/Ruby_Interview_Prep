require 'rspec'

# def palindrome? word
#    word.downcase == word.downcase.reverse
# end

def palindrome?(string)
    str = string.downcase
    if str.length == 1 || str.length == 0
      true
    else
      if str[0] == str[-1]
        palindrome?(str[1..-2])
      else
        false
      end
    end
  end

describe 'Check if a word is a palindrome' do
  it 'returns true if the word is a palindrome, false if not' do
    expect(palindrome?('tacocat')).to be(true)
    expect(palindrome?('Tacocat')).to be(true)
    expect(palindrome?('baseball')).to be(false)
  end
end
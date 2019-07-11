SEPARATORS = [',', ';', ' ']

def reverse_words(text)
  text_arr = text.split('')
  arr = text.split(Regexp.union(SEPARATORS))
  reversed_arr = arr.map { |item| item.reverse }.join.split('')
  s = ''
  idx = 0
  text_arr.each do |char|
    if SEPARATORS.include?(char)
      s += char
    else
      s += reversed_arr[idx]
      idx += 1
    end
  end
  return s
end
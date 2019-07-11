class BadCompression
	def bad_compression(string)
		result = string.split('')
		arr = []
		while(arr != result)
			arr = result
			result = delete_pair_element(arr)
		end
		return result.join
	end

	def delete_pair_element arr
		copy = arr.clone
		arr.each_with_index do |item, i|
			if item == arr[i+1]
				copy.delete_at(i)
				copy.delete_at(i)
				return copy
			end
		end
		return arr
	end
end
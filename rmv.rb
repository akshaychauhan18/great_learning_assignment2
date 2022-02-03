# class Remove
#   def remove_func(clicked_items)
#     freq = Hash.new { 0 }
#     clicked_items.each do |element|
#       freq[element[:ip]] += 1
#     end
#     removed_freq = []
#     clicked_items.each do |element|
#       if freq[element[:ip]] <= 10
#         removed_freq.push(element)
#       end
#     end
#     removed_freq
#   end
# end

module Remove
  def Remove.remove_func(clicked_items)
    freq = Hash.new { 0 }
    clicked_items.each do |element|
      freq[element[:ip]] += 1
    end
    removed_freq = []
    clicked_items.each do |element|
      if freq[element[:ip]] <= 10
        removed_freq.push(element)
      end
    end
    removed_freq
  end
end

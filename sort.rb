module SortModule
  def SortModule.sort(arr)
    sorted_click = arr.sort { |a, b| a[:ip] <=> b[:ip] }
  end
end

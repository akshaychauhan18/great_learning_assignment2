module Result
  def Result.ans(sorted_click)
    acc = []
    sorted_click.each do |curr|
      if acc.length == 0
        acc.push(curr)
      else
        temp = acc[acc.length - 1]
        if temp[:ip] == curr[:ip]
          temp_time = temp[:timestamp].to_s.split(" ")[1].split(":")[0]
          curr_time = curr[:timestamp].to_s.split(" ")[1].split(":")[0]

          if temp_time == curr_time && temp[:amount] == curr[:amount]
            i = 0
          elsif temp_time != curr_time
            acc.push(curr)
          elsif temp_time == curr_time && temp[:amount] > curr[:amount]
            i = 0
          elsif temp_time == curr_time && temp[:amount] < curr[:amount]
            acc.pop()
            acc.push(curr)
          else
            acc.push(curr)
          end
        else
          acc.push(curr)
        end
      end
    end
    return acc.sort! { |a, b| a[:timestamp].to_s.split(" ")[1].split(":")[0] <=> b[:timestamp].to_s.split(" ")[1].split(":")[0] }
  end
end

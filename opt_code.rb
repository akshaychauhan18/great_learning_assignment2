clicks = [
  { "ip": "22.22.22.22", "timestamp": "3/11/2020 02:02:58", "amount": 7.00 },
  { "ip": "11.11.11.11", "timestamp": "3/11/2020 02:12:32", "amount": 6.50 },
  { "ip": "11.11.11.11", "timestamp": "3/11/2020 02:13:11", "amount": 7.25 },
  { "ip": "44.44.44.44", "timestamp": "3/11/2020 02:13:54", "amount": 8.75 },
  { "ip": "22.22.22.22", "timestamp": "3/11/2020 05:02:45", "amount": 11.00 },
  { "ip": "44.44.44.44", "timestamp": "3/11/2020 06:32:42", "amount": 5.00 },
  { "ip": "22.22.22.22", "timestamp": "3/11/2020 06:35:12", "amount": 2.00 },
  { "ip": "11.11.11.11", "timestamp": "3/11/2020 06:45:01", "amount": 12.00 },
  { "ip": "11.11.11.11", "timestamp": "3/11/2020 06:59:59", "amount": 11.75 },
  { "ip": "22.22.22.22", "timestamp": "3/11/2020 07:01:53", "amount": 1.00 },
  { "ip": "11.11.11.11", "timestamp": "3/11/2020 07:02:54", "amount": 4.50 },
  { "ip": "33.33.33.33", "timestamp": "3/11/2020 07:02:54", "amount": 15.75 },
  { "ip": "66.66.66.66", "timestamp": "3/11/2020 07:02:54", "amount": 14.25 },
  { "ip": "22.22.22.22", "timestamp": "3/11/2020 07:03:15", "amount": 12.00 },
  { "ip": "22.22.22.22", "timestamp": "3/11/2020 08:02:22", "amount": 3.00 },
  { "ip": "22.22.22.22", "timestamp": "3/11/2020 09:41:50", "amount": 4.00 },
  { "ip": "22.22.22.22", "timestamp": "3/11/2020 10:02:54", "amount": 5.00 },
  { "ip": "22.22.22.22", "timestamp": "3/11/2020 11:05:35", "amount": 10.00 },
  { "ip": "22.22.22.22", "timestamp": "3/11/2020 13:02:21", "amount": 6.00 },
  { "ip": "55.55.55.55", "timestamp": "3/11/2020 13:02:40", "amount": 8.00 },
  { "ip": "44.44.44.44", "timestamp": "3/11/2020 13:02:55", "amount": 8.00 },
  { "ip": "55.55.55.55", "timestamp": "3/11/2020 13:33:34", "amount": 8.00 },
  { "ip": "55.55.55.55", "timestamp": "3/11/2020 13:42:24", "amount": 8.00 },
  { "ip": "55.55.55.55", "timestamp": "3/11/2020 13:47:44", "amount": 6.25 },
  { "ip": "55.55.55.55", "timestamp": "3/11/2020 14:02:54", "amount": 4.25 },
  { "ip": "55.55.55.55", "timestamp": "3/11/2020 14:03:04", "amount": 5.25 },
  { "ip": "55.55.55.55", "timestamp": "3/11/2020 15:12:55", "amount": 6.25 },
  { "ip": "22.22.22.22", "timestamp": "3/11/2020 16:02:36", "amount": 8.00 },
  { "ip": "55.55.55.55", "timestamp": "3/11/2020 16:22:11", "amount": 8.50 },
  { "ip": "55.55.55.55", "timestamp": "3/11/2020 17:18:19", "amount": 11.25 },
  { "ip": "55.55.55.55", "timestamp": "3/11/2020 18:19:20", "amount": 9.00 },
  { "ip": "22.22.22.22", "timestamp": "3/11/2020 23:59:59", "amount": 9.00 },
]
# clicks = require "./clicks.json"

require "./rmv"
require "./sort"
require "./result"

# tempObj = Remove.new

# puts tempObj.remove_func(clicks)
removed_freq = Remove.remove_func(clicks)

sorted_arr = SortModule.sort(removed_freq)

puts Result.ans(sorted_arr)

# puts removed_freq

# class Ip_data
#   def click_method(clicked_items)
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

#     sorted_click = removed_freq.sort { |a, b| a[:ip] <=> b[:ip] }

#     acc = []

#     sorted_click.each do |curr|
#       if acc.length == 0
#         acc.push(curr)
#       else
#         temp = acc[acc.length - 1]
#         if temp[:ip] == curr[:ip]
#           temp_time = temp[:timestamp].to_s.split(" ")[1].split(":")[0]
#           curr_time = curr[:timestamp].to_s.split(" ")[1].split(":")[0]

#           if temp_time == curr_time && temp[:amount] == curr[:amount]
#             i = 0
#           elsif temp_time != curr_time
#             acc.push(curr)
#           elsif temp_time == curr_time && temp[:amount] > curr[:amount]
#             i = 0
#           elsif temp_time == curr_time && temp[:amount] < curr[:amount]
#             acc.pop()
#             acc.push(curr)
#           else
#             acc.push(curr)
#           end
#         else
#           acc.push(curr)
#         end
#       end
#     end
#     return acc.sort! { |a, b| a[:timestamp].to_s.split(" ")[1].split(":")[0] <=> b[:timestamp].to_s.split(" ")[1].split(":")[0] }
#   end
# end

# ans = Ip_data.new
# puts ans.click_method(clicks)

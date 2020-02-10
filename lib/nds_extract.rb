$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'


def directors_totals(nds)
  name_total = {}
  row_index = 0
    while row_index < directors_database.length do
    name = directors_database[row_index][:name]
    inner_index = 0
    name_total[name] = 0  
      while inner_index < directors_database[row_index][:movies].length do
        each_gross = directors_database[row_index][inner_index][:worldwide_gross]
        name_total[name] += each_gross
        inner_index += 1
      end
      row_index += 1
    end
  name_total
end

#   result = {}
#   row_index = 0
#   while row_index < directors_database.length do
#     name = directors_database[row_index][:name]
#     result[name] = 0
#     gross_index = 0
#       while gross_index < directors_database[row_index][:movies].length do
#         result[name] += directors_database[row_index][:movies][gross_index][:worldwide_gross]         
#         gross_index += 1
#       end
#     row_index += 1
#   end
# result
# end

$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'


def directors_totals(nds)
  name_total = {}
  row_index = 0
    while row_index < directors_database.length
    name = directors_database[row_index][:name]
    inner_index = 0
      while inner_index < directors_database[row_index].length
        total_gross = 0
        each_gross = directors_database[row_index][inner_index][:worldwide_gross]









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

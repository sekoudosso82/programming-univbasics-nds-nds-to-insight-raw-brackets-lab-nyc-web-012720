$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

require 'pp'

def directors_totals(nds)
  
  nd = directors_database
  
  result = {}
  
  row_index = 0
  total = 0 
  
  while row_index < (nd.length) do
    name = (nd[row_index][:name])
    movie_index = 0 
    while movie_index<nd[row_index][:movies].length do 
      
      total += (nd[row_index][:movies][movie_index][:worldwide_gross])
      movie_index += 1
    end
  
    result[name] = total
    total = 0 
    row_index +=1 
  end  
  
  
  
  # Be sure to return the result at the end!
  result 
end

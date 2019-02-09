
require 'yaml'

def load_library(path)
   
    emoticons = {"get_meaning" => {}, "get_emoticon" => {}}
    
     YAML.load_file(path).each do |meaning, describe|
    
     eng, jap = describe
  
     emoticons["get_meaning"][jap] = meaning
  
     emoticons["get_emoticon"][eng] = jap
  
  end
  
  emoticons

end

def get_japanese_emoticon(path, emoticon)
  
  emoticons = load_library(path) 

  result = emoticons["get_emoticon"][emoticon]

  if result

    result

  else

    "Sorry, that emoticon was not found"

  end

end
  

def get_english_meaning(path, emoticon)
  
  emoticons = load_library(path)
  
  result = emoticons["get_meaning"][emoticon] #the same above but change get_meaning
  
  if result 
    
  result
 
  else
 
    "Sorry, that emoticon was not found"
    
 end

end
# require modules here
require 'yaml'

def load_library(path)
  library = YAML.load_file(path) #load hash from yaml file

  new_lib = {"get_meaning" => {}, "get_emoticon" => {}} #new library reformat yaml file

  library.each do |meaning, emoticons|
    new_lib["get_meaning"][emoticons[1]] = meaning #the "get_meaning" hash gets keys(japanese emoticon):values(meanin)
    new_lib["get_emoticon"][emoticons[0]] = emoticons[1]#the "get_emoticon" hash gets keys(english_emoticons):values(japanese_emoticons)
  end
  new_lib
end

def get_japanese_emoticon(path, emoticon)
  library = load_library(path) #load the reformatted library
  if library["get_emoticon"][emoticon] #if the hash with the english emoticon exists
    library["get_emoticon"][emoticon] #return its value
  else
    "Sorry, that emoticon was not found" #otherwise return apology
  end
end

def get_english_meaning(path, emoticon)
  library = load_library(path) #load the reformatted library
  if library["get_meaning"][emoticon] #if the hash with hte Japanese emoticon exists
    library["get_meaning"][emoticon] #return its value
  else
    "Sorry, that emoticon was not found" #otherwise return apology
  end
end

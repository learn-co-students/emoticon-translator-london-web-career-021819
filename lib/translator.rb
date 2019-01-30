# require modules here
require "yaml"
require "pry"

def load_library(path)
  emoticons = YAML.load_file(path)
  # binding.pry
  return formatted = { "get_meaning" => {}, "get_emoticon" => {} }

end

def get_japanese_emoticon()
  # code goes here

end

def get_english_meaning
  # code goes here
end

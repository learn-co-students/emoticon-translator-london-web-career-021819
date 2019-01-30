# require modules here
require "yaml"
require "pry"

def load_library(path)
  emoticons = YAML.load_file(path)
  # binding.pry
  formatted = { "get_meaning" => {}, "get_emoticon" => {} }
  emoticons.each do |k, v|
    formatted["get_meaning"][v.last] = k
    formatted["get_emoticon"][v.first] = v.last
  end
  formatted
end

def get_japanese_emoticon(path, emoticon)
  load_library(path)

end

def get_english_meaning(path, emoticon)
  load_library(path)
end

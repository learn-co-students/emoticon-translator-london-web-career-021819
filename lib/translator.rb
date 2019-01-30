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
  result = load_library(path)
  if result["get_emoticon"].has_key?(emoticon)
    result["get_emoticon"][emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(path, emoticon)
  result = load_library(path)
  if result["get_meaning"].has_key?(emoticon)
    result["get_meaning"][emoticon]
  else
    "Sorry, that emoticon was not found"
  end
end

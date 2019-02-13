# require modules here
require 'pry'
require 'yaml'


def load_library(emoticons_file)
  # code goes here
  emoticons = YAML.load_file('./lib/emoticons.yml')

  library = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }

  emoticons.each do |key, val|
    english = val[0]
    japanese = val[1]
    library["get_meaning"][japanese] = key
    library["get_emoticon"][english] = japanese
  end
  library
end

def get_japanese_emoticon(emoticon_file, emoticon)
  # code goes here
  emoticon_lib = load_library(emoticon_file)
  japanese_emoticon = emoticon_lib['get_emoticon'][emoticon]
  japanese_emoticon ? japanese_emoticon : 'Sorry, that emoticon was not found'
end

def get_english_meaning(emoticon_file, emoticon)
  # code goes here
  emoticon_lib = load_library(emoticon_file)
  english_meaning = emoticon_lib['get_meaning'][emoticon]
  english_meaning ? english_meaning : 'Sorry, that emoticon was not found'
end

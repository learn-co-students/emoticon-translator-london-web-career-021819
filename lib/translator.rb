require "yaml"
require "pry"

def load_library(path)
  lib_yaml = YAML.load_file(path)
  lib_ruby = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }
  lib_yaml.each do |meaning, emoticons|
    lib_ruby["get_meaning"][emoticons[1]] = meaning
    lib_ruby["get_emoticon"][emoticons[0]] = emoticons[1]
  end
  lib_ruby
end

def get_japanese_emoticon(yaml, emoticon)
  jpemoji = load_library(yaml)["get_emoticon"][emoticon]
  jpemoji ? jpemoji : "Sorry, that emoticon was not found"
end

def get_english_meaning(yaml, emoticon)
  engemoji = load_library(yaml)["get_meaning"][emoticon]
  engemoji ? engemoji : "Sorry, that emoticon was not found"
end

require "yaml"


def load_library(path)
  
  library = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }
  
  YAML.load_file(path).each do |meaning, array|
    english = array[0]
    japanese = array[1]
    library["get_meaning"][japanese] = meaning
    library["get_emoticon"][english] = japanese
  end
  library
end

def get_japanese_emoticon(path, emoticon)
  library = load_library(path)
  if library["get_emoticon"][emoticon]
    return library["get_emoticon"][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(path, emoticon)
  library = load_library(path)
  if library["get_meaning"][emoticon]
    return library["get_meaning"][emoticon]
  else
    return "Sorry, that emoticon was not found"
  end
end





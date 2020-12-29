require "yaml"
emoticons = YAML.load_file("./lib/emoticons.yml")
require "pry"

def load_library(file)
  emoticons = YAML.load_file(file)
  nhash = {}
  emoticons.each do |k, v|
    nhash[k] = {}
    nhash[k][:english] = v[0]
    nhash[k][:japanese] = v[1]
  end
  return nhash
end

def get_japanese_emoticon(file, emot)
  english = load_library(file).select {|k, v| v.has_value?(emot)}
  japanese_emot = ""
  english.each do |key, value|
      japanese_emot += value[:japanese]
  end
  if japanese_emot == ""
    return "Sorry"
  end
  return japanese_emot
end

def get_english_meaning
  # code goes here
end
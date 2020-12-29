require "yaml"
emoticons = YAML.load_file("./lib/emoticons.yml")
require "pry"

def load_library(file)
  emoticons = YAML.load_file(file)
  nhash = {}
  emoticons.each do |k, v|
    nhash[k][:english] = v[0]
    nhash[k][:japanese] = v[1]
    
  end
  return nhash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
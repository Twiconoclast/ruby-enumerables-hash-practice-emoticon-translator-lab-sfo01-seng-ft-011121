require "yaml"
emoticons = YAML.load_file("./lib/emoticons.yml")
require "pry"

def load_library(file)
  emoticons = YAML.load_file(file)
  phash = {}
  emoticons.each do |k, v|
    nhash = {}
    nhash = {nhash[k][:english] = v[0],
    nhash[k][:japanese] = v[1]}
    
    phash = phash.merge(nhash)
  end
  return phash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
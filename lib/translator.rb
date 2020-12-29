require "yaml"
emoticons = YAML.load_file("./lib/emoticons.yml")

def load_library(hash)
  nhash = {}
  hash.each do |k, v|
    nhash = k => {nhash[:english] => v[0],
    nhash[:japanese] => v[1]}
  end
  return nhash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
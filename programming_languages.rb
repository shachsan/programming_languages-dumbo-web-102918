def reformat_languages(languages)
  progmming_languages=[]
  reformed_hash = {}
  #creating array of progamming languages to use as keys in a new hash
  languages.each do |style, name_type|
    progmming_languages += name_type.keys
  end


  ## need to create new hash with language as key to another hash as value that contains
  #style and type. Eg. {Ruby=>{style=>[], type => ""}}
#   progmming_languages.uniq.each do |language|
#     style_arr = []
#     languages.each do |style, name_type|
#       name_type.each do |lang_name, lang_type|
#         lang_type.each do |type, value|
#           if language == lang_name
#             reformed_hash[language] = {:style => style_arr << style, type=>value}
#           end
#         end
#       end
#     end
#   end
#   reformed_hash
# end

progmming_languages.uniq.each do |language|
  reformed_hash[language] = style_type_hash(language)
end
reformed_hash
end

def style_type_hash(language)
  style_arr = []
  new_hash = {}
  languages.each do |style, name_type|
    name_type.each do |lang_name, lang_type|
      lang_type.each do |type, value|
        if language == lang_name
          new_hash = {:style => style_arr << style, type=>value}
        end
      end
    end
  end
  return new_hash
end

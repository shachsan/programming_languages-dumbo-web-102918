languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}


def reformat_languages(languages)
  progmming_languages=[]
  reformed_hash = {}
  languages.each do |style, name_type|
    progmming_languages += name_type.keys


  end


  ## need to create new hash with language as key to another hash as value that contains
  #style and type. Eg. {Ruby=>{style=>[], type => ""}}
  progmming_languages.uniq.each do |language|
    style_arr = []
    languages.each do |style, name_type|

      name_type.each do |lang_name, lang_type|
        lang_type.each do |type, value|
          if language == lang_name
            reformed_hash[language] = {:style => style_arr << style, type=>value}
          end
        end
      end
    end
    # reformed_hash[language] = style_type_hash
  end
  p reformed_hash
end

reformat_languages(languages)

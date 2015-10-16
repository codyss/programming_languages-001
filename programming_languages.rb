def reformat_languages(languages)
  new_hash = Hash.new
    languages.each do |style, dict_languagues|
      dict_languagues.each do |p_lang, dict_type|
        dict_type.each do |type_key, type_value|
            if new_hash[p_lang].nil?
              new_hash[p_lang] = {type_key => type_value, :style => []}
              new_hash[p_lang][:style] << style
            else
              new_hash[p_lang][:style] << style
            end 
        end
      end
    end
  return new_hash
end


#:language => {:type => , :style => [] }
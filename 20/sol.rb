# @param {String} s
# @return {Boolean}
def is_valid(s)
    char_hash = {"(" => [], "[" => [], "{" => []}
    s.each_char.with_index do |c, key|
        if char_hash[c].nil?
            # )]}
            if c == ")"
                return false if char_hash["("].empty?
                if ((char_hash["["].last.nil? || char_hash["("].last > char_hash["["].last) && (char_hash["{"].last.nil? || char_hash["("].last > char_hash["{"].last))
                    char_hash["("].delete_at(-1)
                else return false
                end
            elsif c == "]"
                return false if char_hash["["].empty?
                if ((char_hash["("].last.nil? || char_hash["["].last > char_hash["("].last) && (char_hash["{"].last.nil? || char_hash["["].last > char_hash["{"].last))
                    char_hash["["].delete_at(-1)
                else return false
                end
            elsif c == "}"
                return false if char_hash["{"].empty?
                if ((char_hash["["].last.nil? || char_hash["{"].last > char_hash["["].last) && (char_hash["("].last.nil? || char_hash["{"].last > char_hash["("].last))
                    char_hash["{"].delete_at(-1)
                else return false
                end
            end
        else
            char_hash[c].push(key)
        end
    end
    # judge if empty?
    if (char_hash["("].empty? && char_hash["["].empty? && char_hash["{"].empty?) 
        return true;
    else 
        return false;
    end
end
class PhoneBook
    def initialize
        @entries = []
    end

    def add(name, number, is_listed)
        return false unless valid_number_format?(number)

        return false if person_exists?(name)

        if is_listed && number_is_listed?(number)
            return false
    end
    @entries << {name: name, number: number, is_listed: is_listed}
    return true
end

    def lookup(name)
        entry = @entries.find {|e| e[:name] == name && e[:is_listed]}
        return entry ? entry[:number] : nil
    end

    def lookupByNum(number)
        entry = @entries.find {|e| e[:number] == number && e[:is_listed]}
        return entry ?  entry[:name] : nil
    end

    def namesByAc(areacode)
        names = @entries.select { |e| e[:number].start_with?(areacode + "-")}
        .map {|e| e[:name]}
        return names
    end
    private 
    
    def valid_number_format?(number) 
        return false unless number.match?(/^\d{3}-\d{3}-\d{4}$/)
        return false if number.start_with?("0")
        return true
    end
    def person_exists?(name)
        @entries.any? {|e| e[:name] ==name}
    end
    def number_is_listed?(number)
        @entries.any?{|e| e[:number] == number && e[:is_listed]}
end
end


module ChipStringHelper
    def line_spacing
        return /(^\s+|\s+$)/
    end

    def clear_line_spacing
        return self.gsub(line_spacing ,'')
    end
end

class String
    include ChipStringHelper
end

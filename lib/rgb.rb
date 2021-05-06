def to_hex(r, g, b)
  [r, g, b].inject('#') do |hex, n|
    until n.instance_of?(Integer)
      raise '引数は整数のみです'
    end
    until (0..255).include?(n)
      raise '数字は0〜255までの間です'
    end
    hex + n.to_s(16).rjust(2, '0')
  end
end

def to_ints(hex)
  #r, g, b = hex[1..2], hex[3..4], hex[5..6]
  #[r, g, b].map do |s|
  #   s.hex
  #end 
  hex.scan(/\w\w/).map(&:hex)
end

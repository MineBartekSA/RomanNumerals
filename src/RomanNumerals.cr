#
# Allows you to convert between roman and arabic numerals
#
module RomanNumerals
  VERSION = "0.1.0"

  # :nodoc:
  I = 1
  # :nodoc:
  V = 5
  # :nodoc:
  X = 10
  # :nodoc:
  L = 50
  # :nodoc:
  C = 100
  # :nodoc:
  D = 500
  # :nodoc:
  M = 1000

  # Checks if the string is a valid roman numeral
  def self.isValid(number : String) : Bool
    t = number.downcase.delete "ivxlcdm"
    return false if t.size != 0
    t = [ "mmmm", "dddd", "cccc", "llll", "xxxx", "vvvv", "iiii" ]
    t.each { |test| return false if number.downcase.includes? test }
    t = number.downcase
    ["mmm", "mm", "m"].each do |i|
      if t.starts_with? i
        i.size.times { t = t.lchop }
        break
      end
    end
    ["cm", "dccc", "dcc", "dc", "d", "cd", "ccc", "cc", "c"].each do |i|
      if t.starts_with? i
        i.size.times { t = t.lchop }
        break
      end
    end
    ["xc", "lxxx", "lxx", "lx", "l", "xl", "xxx", "xx", "x"].each do |i|
      if t.starts_with? i
        i.size.times { t = t.lchop }
        break
      end
    end
    ["ix", "viii", "vii", "vi", "v", "iv", "iii", "ii", "i"].each do |i|
      if t.starts_with? i
        i.size.times { t = t.lchop }
        break
      end
    end
    return false if t.size != 0
    true
  end

  # Converts Roman to Arabic Numerals
  def self.convert(number : String) : Int32
    raise "Not a valid roman numeral!" if !self.isValid number
    res = 0
    number.downcase.each_char_with_index do |c, i|
      case c
      when 'm'
        res += number.downcase[i == 0 ? i : i - 1] == 'c' ? M - 200 : M
      when 'd'
        res += number.downcase[i == 0 ? i : i - 1] == 'c' ? D - 200 : D
      when 'c'
        res += number.downcase[i == 0 ? i : i - 1] == 'x' ? C - 20 : C
      when 'l'
        res += number.downcase[i == 0 ? i : i - 1] == 'x' ? L - 20 : L
      when 'x'
        res += number.downcase[i == 0 ? i : i - 1] == 'i' ? X - 2 : X
      when 'v'
        res += number.downcase[i == 0 ? i : i - 1] == 'i' ? V - 2 : V
      when 'i'
        res += I
      end
    end
    res
  end

  # Converts Arabic to Roman Numerals
  def self.convert(n : Int32) : String
    res = ""
    while n > 0
      case
      when n >= 1000
        res = res + "M"
        n = n - 1000
      when n >= 900
        res = res + "CM"
        n = n - 900
      when n >= 500
        res = res + "D"
        n = n - 500
      when n >= 400
        res = res + "CD"
        n = n - 400
      when n >= 100
        res = res + "C"
        n = n - 100
      when n >= 90
        res = res + "XC"
        n = n - 90
      when n >= 50
        res = res + "L"
        n = n - 50
      when n >= 40
        res = res + "XL"
        n = n - 40
      when n >= 10
        res = res + "X"
        n = n - 10
      when n >= 9
        res = res + "IX"
        n = n - 9
      when n >= 5
        res = res + "V"
        n = n - 5
      when n >= 4
        res = res + "IV"
        n = n - 4
      else
        res = res + "I"
        n = n - 1
      end
    end
    res
  end
end

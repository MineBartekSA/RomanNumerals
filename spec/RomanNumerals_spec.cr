require "./spec_helper"

describe RomanNumerals do
  it "Test if DCLXVI equals to 666" do
    RomanNumerals.convert("DCLXVI").should eq(666)
  end

  it "Test if CLI equals to 151" do
    RomanNumerals.convert("CLI").should eq(151)
  end

  it "Test if DX equals to 510" do
    RomanNumerals.convert("DX").should eq(510)
  end
  
  it "Test if LXIX equals to 69" do
    RomanNumerals.convert("LXIX").should eq(69)
  end

  it "Test if MCI equals to 1101" do
    RomanNumerals.convert("MCI").should eq(1101)
  end
  
  it "Test if I equals to 1" do
    RomanNumerals.convert("i").should eq(1)
  end

  it "Test if V equals to 5" do
    RomanNumerals.convert("v").should eq(5)
  end

  it "Test if X equals to 10" do
    RomanNumerals.convert("x").should eq(10)
  end

  it "Test if L equals to 50" do
    RomanNumerals.convert("l").should eq(50)
  end

  it "Test if C equals to 100" do
    RomanNumerals.convert("c").should eq(100)
  end
  
  it "Test if D equals to 500" do
    RomanNumerals.convert("d").should eq(500)
  end

  it "Test if M equals to 1000" do
    RomanNumerals.convert("m").should eq(1000)
  end

  it "Test if MMMM is not valid" do
    RomanNumerals.isValid("MMMM").should eq(false)
  end

  it "Test if IID is not valid" do
    RomanNumerals.isValid("IID").should eq(false)
  end

  it "Test if XD is not valid" do
    RomanNumerals.isValid("XD").should eq(false)
  end

  it "Test if 151 is equals CLI" do
    RomanNumerals.convert(151).should eq("CLI")
  end
end

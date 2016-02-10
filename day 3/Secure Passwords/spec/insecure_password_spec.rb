require 'Rspec'
require_relative '../lib/insecure_password.rb'
require 'pry'

RSpec.describe "Insecure password" do 
  let(:password) {PasswordChecker.new}

  it "Check if password length > 7" do
      expect(password.check_password("","a?888A88")).to eq(true)
      end
  it "Check if password not longer than  7" do
      expect(password.check_password("","666666")).to eq(false)
      end
  it "Check return true when password contains atleast 1 number && 1 simbol && 1 letter" do
      expect(password.check_password("","asDa23a!")).to eq(true)
    end
  it "Check that fails if password dont contain atleast 1 simbol" do
      expect(password.check_password("","asda23a")).to eq(false)
    end  
  it "Check that fails if password dont contain atleast 1 number" do
        expect(password.check_password("","asda")).to eq(false)
    end
  it "Check that fails if password dont contain atleast 1 letter" do
      expect(password.check_password("","123?")).to eq(false)
    end

  it "checks that returns true if there is at least one uppercase and one lowercase letter" do
      expect(password.check_password("","Aa1234567!")).to eq(true)
    end

  it "checks that returns false if there is NOT one uppercase letter" do
      expect(password.check_password("","a1234567!")).to eq(false)
    end

  it "checks that returns false if there is NOT one lowercase letter" do
      expect(password.check_password("","A1234567!")).to eq(false)
    end
end
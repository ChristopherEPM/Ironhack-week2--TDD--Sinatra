class PasswordChecker
  attr_reader :password
  
  def check_password(email,password)
      @email = email
      @password = password

      check_length
      check_content
      check_upper_and_lower
  end



  def check_length
      @password.length > 7
  end

  def check_content
    nums = 0
    letters = 0
    simbols = 0
    @password.each_byte do | char |
      if is_number(char)
        nums +=1
      elsif is_upper(char) || is_lower(char)
        letters +=1
      elsif is_symbol(char)
        simbols +=1
      end
    end
      nums >=1 && letters >=1 && simbols >= 1
  end

  def check_upper_and_lower
    uppers = 0
    lowers = 0
    @password.each_byte do | char |
      if is_upper(char)
        uppers += 1
      elsif is_lower(char)
        lowers += 1
      end
    end
    uppers > 0 && lowers > 0
  end

  def is_upper(char)
    char > 64 && char < 91
  end

  def is_lower(char)
    char > 96 && char < 123
  end

  def is_number(char)
    char > 47  && char < 58
  end

  def is_symbol(char)
    (char > 32 && char < 48) || (char > 57 && char < 64 )
  end
end
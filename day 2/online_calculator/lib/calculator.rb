class calculator

  attr_reader :num1,:num2,:result

  def initialize(param1,param2)
    @num1 = param1
    @num2 = param2
    @result = 0
  end

  def operator_plus
    @result = @num1 + @num2
  end

  def operator_subtrac
    @result = @num1 - @num2
  end

  def operator_multiply
    @result = @num1 * @num2
  end

  def operator_divide
    @result = @num1 / @num2
  end

  def operator_mod
    @result = @num1 % @num2
  end



end
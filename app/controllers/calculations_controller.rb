class CalculationsController < ApplicationController
  def square

    @user_number = params["NUMBER"].to_i
    @square_root=Math.sqrt(@user_number)
    @square_root_decimals=@square_root.round(2)
    render("square.html.erb")
  end

  def random

    @random_min = params["MIN"].to_i
    @random_max = params["MAX"].to_i

    @random = rand(@random_min..@random_max)
    render("random.html.erb")
  end

  def payment

    @apr = params["RATE"].to_f
    @years = params["TIME"].to_i
    @principal = params["PRINCIPAL_VALUE"].to_i


    @monthly_rate = @apr/12/100
    @denominator=((@monthly_rate+1)**(@years*12))-1
    @fraction=@monthly_rate/@denominator
    @rateandfraction=@fraction+@monthly_rate

    @monthly_payment = @rateandfraction*@principal

    @payment=@monthly_payment.round(2)

    render("payment.html.erb")
  end

end

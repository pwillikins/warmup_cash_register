class Register

  def initialize
    @base_amount = 0
  end

  def purchase(amount)
    @base_amount += amount
  end

  def total
    @base_amount
  end

  def pay(payment)
    @base_amount -= payment

    if @base_amount == 0
      "no change due"
    elsif @base_amount < 0
      puts "Your change is #{@base_amount}."
    else @base_amount > 0
      puts "Your amount due is #{@base_amount.to_f.abs}."
    end
  end
end
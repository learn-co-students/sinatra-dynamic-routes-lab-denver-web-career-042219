require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @rev = params[:name].reverse
    "#{@rev}"
  end

  get "/square/:number" do
    @num = params[:number].to_i
    @ans = @num**2
    "#{@ans}"
  end

  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    counter = 0
    arr = []
		while counter < @num
			 arr<< @phrase
			counter += 1
		end
    arr
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    arr = [@w1, @w2, @w3, @w4, @w5]
    @ans = arr.join(" ")
    "#{@ans}."
  end

  get "/:operation/:number1/:number2" do
    @op = params[:operation]
    @n1 = params[:number1].to_i
    @n2 = params[:number2].to_i
    if @op == "add"
      @ans1 = @n1+@n2
      "#{@ans1}"
    elsif @op == "divide"
      @ans2 = @n1/@n2
      "#{@ans2}"
    elsif @op == "multiply"
      @ans3 = @n1*@n2
      "#{@ans3}"
    elsif @op == "subtract"
      @ans4 = @n1-@n2
      "#{@ans4}"
    end
  end

end

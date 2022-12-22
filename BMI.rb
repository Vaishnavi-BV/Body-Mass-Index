class Bmi
    def input
      puts "Enter a weight in Killogram (kg)"
      @weight = gets.chomp.to_i
      puts "Enter a Height in Meter(m)"
      @height = gets.chomp.to_f
        if @weight==0 || @height==0
        raise "Error"
        end
    rescue ZeroDivisionError
      puts "OOPS Something went Wrong!..\n Give a Correct Weight or Height!!"
    end
    def calculate
      result =(@weight) / (@height**2)
      if result < 18.5
        puts "You are Underweight"
      elsif (18.5..24).include?(result)
        puts "You are Normal weight"
      elsif (25..29.9).include?(result)
        puts "OOPS! You are Overweight!"
      else
        puts "OH My God!! You are obese!"
      end
    end
  end
  b = Bmi.new
  b.input
  b.calculate
  
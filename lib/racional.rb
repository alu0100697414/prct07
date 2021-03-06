include Comparable
class Racional
  attr_reader :num, :den
  	def initialize(num,den)
		comun = mcd(num, den)
		@num = num/comun
		@den = den/comun
	end
	
	def mcd(a, b)
		while b != 0
			a, b = b, a % b
		end
		a
	end
	def to_s
		"#{num}/#{den}"
	end	
	def to_f
		@num/@den
	end	
	def abs
		Racional.new(@num.abs,@den.abs)
	end
	def reciproco
		Racional.new(@den, @num)
	end
	#Calcular Opuesto
	def -@
		Racional.new(-@num, @den)
	end
	
	#Suma
	def +(other)
		if(@den == other.den)
		  Racional.new(@num + other.num, @den)
		else
		  Racional.new(@num * other.den + @den * other.num, @den * other.den)
		end
	end
	
	#Resta
	def -(other)
		if(@den == other.den)
		  Racional.new(@num - other.num, @den)
		else
		  Racional.new(@num * other.den - @den * other.num, @den * other.den)
		end
	end
	
	#Multiplicacion
	def *(other)
		Racional.new(@num * other.num, @den * other.den)
	end
	
	#Division
	def /(other)
		Racional.new(@num * other.den, @den * other.num)
	end
	
	#Resto
	def %(other)
		((@num * other.den) % (@den * other.num))
	end
	
	#Menor igual mayor(Operador guerra de las galaxias)
	def <=>(other)
	  if((@num * other.den)<(@den * other.num))
	    return -1
	    elsif((@num * other.den)==(@den * other.num))
	    return 0
	     elsif((@num * other.den)>(@den * other.num))
	    return 1
	  end
	end
	    
	
end

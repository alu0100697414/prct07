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
	def == (rac)
		((self.num == rac.num) && (self.den == rac.den))
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
	
	#Menor que
	def <(other)
		(@num * other.den) < (@den * other.num)
	end
	
	#Mayor que
	def >(other)
		(@num * other.den) > (@den * other.num)
	end
	
	#Menor o igual que
	def <=(other)
		(@num * other.den) <= (@den * other.num)
	end
	
	#Mayor o igual que
	def >=(other)
		(@num * other.den) >= (@den * other.num)
	end
	
end

require 'lib/racional.rb' 
require 'rspec'

describe Racional do
	before :each do
		@rac = Racional	
	end
	it "Debe existir un numerador" do	
	@rac.new(1, 2).num.should == 1
	end
	it "Debe existir un denominador" do
		@rac.new(1, 2).den.should == 2	
	end
	
	it "Debe de estar en su forma reducida" do
		@rac.new(2, 4).num.should == 1
		@rac.new(7, -21).den.should == 3
	end

	it "Se debe invocar al metodo num() para obtener el numerador" do
		@rac.new(2,4).respond_to?("num").should be_true
	end
	
	it "Se debe invocar al metodo den() para obtener el numerador" do
		@rac.new(1,2).respond_to?("den").should be_true
	end
	it "Se debe mostar por la consola la fraccion de la forma: a/b, 
		donde a es el numerador y b el denominador" do
		@rac.new(1,2).to_s.should == "1/2"
		@rac.new(7,-21).to_s.should == "-1/3"
		end
	it "Se debe mostar por la consola la fraccion en formato flotante" do
		@rac.new(1,2).to_f.should == 1/2
		@rac.new(-2,6).to_f.should == -1/3
	end
	it "Se debe comparar si dos fracciones son iguales con ==" do
		@rac.new(1,2).should == @rac.new(2,4)
		@rac.new(-3,6).should == @rac.new(-1,2)
	end
	it "Se debe calcular el valor absoluto de una fraccion con el metodo abs" do
		@rac.new(-2,3).abs.should == @rac.new(2,3)
		@rac.new(2,-4).abs.should == @rac.new(1,2)	
	end
	it "Se debe calcular el reciproco de una fraccion con el metodo reciprocal" do 
		@rac.new(-2,3).reciproco.should == @rac.new(-3,2)
		@rac.new(21,3).reciproco.should == @rac.new(1,7)	
	end
	it "Se debe calcular el opuesto de una fraccion con - " do
		(-@rac.new(2,4)).should == @rac.new(-1,2)
		(-@rac.new(-1,3)).should == @rac.new(1,3)
	end
	it "Se debe sumar dos fracciones con + y dar el resultado de forma reducida" do
		(@rac.new(1,2) + @rac.new(1,4)).should == @rac.new(3,4)
		(@rac.new(5,15) + @rac.new(2,3)).should == @rac.new(1,1)
	end
	it "Se debe restar dos fracciones con - y dar el resultado de forma reducida" do
		(@rac.new(6,8) - @rac.new(1,4)).should == @rac.new(1,2)
		(@rac.new(3,3) - @rac.new(2,6)).should == @rac.new(2,3)
	end
	it "Se debe multiplicar dos fracciones con * y dar el resultado de forma reducida" do
		(@rac.new(1,2) * @rac.new(2,4)).should == @rac.new(1,4)
		(@rac.new(-3,3) * @rac.new(2,6)).should == @rac.new(-1,3)
	end
	it "Se debe dividir dos fracciones con / y dar el resultado de forma reducida" do
		(@rac.new(2,3) / @rac.new(2,4)).should == @rac.new(4,3)
		(@rac.new(-6,16) / @rac.new(2,6)).should == @rac.new(-9,8)
	end
	it "Se debe calcular el resto dos fracciones con % y dar el resultado de forma reducida" do
		(@rac.new(5,1) % @rac.new(2,1)).should == 1
		(@rac.new(17,1) % @rac.new(3,1)).should == 2
	end
	it "Se debe de poder comprobar si una fracion es menor que otra" do
		(@rac.new(1, 2) < @rac.new(3, 4)).should be_true
		(@rac.new(1, 2) < @rac.new(1, 4)).should be_false
	end
	
	it "Se debe de poder comprobar si una fracion es mayor que otra" do
		(@rac.new(1, 2) > @rac.new(3, 4)).should be_false
		(@rac.new(1, 2) > @rac.new(1, 4)).should be_true
	end
	it "Se debe de poder comprobar si una fracion es menor o igual que otra" do
		(@rac.new(1, 2) <= @rac.new(2, 4)).should be_true
		(@rac.new(1, 2) <= @rac.new(3, 4)).should be_true
	end

	it "Se debe de poder comprobar si una fracion es mayor o igual que otra" do
		(@rac.new(1, 2) >= @rac.new(2, 4)).should be_true
		(@rac.new(3, 2) >= @rac.new(3, 4)).should be_true	
	end

end

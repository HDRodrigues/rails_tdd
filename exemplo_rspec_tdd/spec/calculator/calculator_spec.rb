require "calculator"
describe Calculator, "Sobre a Calculadora" do

    subject(:calc) { described_class.new() }

    context '#div' do
        it 'divide by 0' do
            #bloco para analizar primeiramente a divisao, 
            #por causa do exception explodir antes
            expect{subject.div(3,0)}.to raise_error(ZeroDivisionError)
            expect{subject.div(3,0)}.to raise_error("divided by 0")
            expect{subject.div(3,0)}.to raise_error(/divided/) #REGEX
        end
    end
    context '#sum' do
        it 'with positive numbers' do
            result = calc.sum(5,5)
            expect(result).to eq(10)
        end
        it 'with positive and negative numbers' do
            result = calc.sum(-5,7)
            expect(result).to eq(2)
        end
        it 'with negative numbers' do
            result = calc.sum(-5,-10)
            expect(result).to eq(-15)
        end

    end
end 
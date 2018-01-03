require "calculator"
describe Calculator, "Sobre a Calculadora" do

    subject(:calc) { described_class.new() }

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

        xit 'ignoring test' do
        end
    end
end 
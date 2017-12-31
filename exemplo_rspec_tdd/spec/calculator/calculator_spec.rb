require "calculator"
describe Calculator do
    context '#sum' do
        it 'with postive numbers' do
            result = subject.sum(5,5)
            expect(result).to eq(10)
        end
        it 'with postive and negative numbers' do
            result = subject.sum(-5,7)
            expect(result).to eq(2)
        end
        it 'with negative numbers' do
            result = subject.sum(-5,-10)
            expect(result).to eq(-15)
        end
    end
end 
require 'string_nao_vazia'

describe 'Classes' do
    it 'be_instance_of' do
        expect(10).to be_instance_of(Integer) # Exatamente a classe
    end

    it 'be_kind_of' do
        str = StringNaoVazia.new
        expect(10).to be_kind_of(Integer) # Pode ser por heranca
        expect(str).to be_kind_of(String) # Pode ser por heranca
    end

    it 'respond_to' do
        expect("ruby").to respond_to(:size)
        expect("ruby").to respond_to(:count)
    end

    it 'be_a' do
        str = StringNaoVazia.new
        expect(str).to be_a(String)
        expect(str).to be_a(StringNaoVazia)
    end

    it 'be_an' do
        expect(10).to be_an(Integer)
    end
end
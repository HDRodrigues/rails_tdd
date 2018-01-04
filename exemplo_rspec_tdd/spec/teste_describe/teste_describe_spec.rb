describe [1,2] do #Declara o subject para ser array implicitamente
    it 'Array' do
        expect(subject).to be_kind_of(Array)
    end
end
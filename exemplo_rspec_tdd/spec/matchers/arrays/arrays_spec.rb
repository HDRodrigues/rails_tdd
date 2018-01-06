RSpec::Matchers.define_negated_matcher :exclude, :include

describe Array.new([1,2,3,4]),"Array", :collection do
  it '#include' do
      expect(subject).to include(2)
      expect(subject).to include(2,1)
  end
  
  it{ expect(subject).to exclude(5)}

  it '#contain_exactly', :slow do
      expect(subject).to contain_exactly(1,2,3,4)
  end
  it '#match_array' do
      expect(subject).to match_array([1,2,3,4])
  end
end
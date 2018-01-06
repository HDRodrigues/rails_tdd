require 'student'

describe 'Mocks' do
  it "#bar" do
    #setup
    student = Student.new

    #verify
    expect(student).to receive(:bar)

    #exercise
    student.bar
  end

  it 'args' do
    #setup
    student = Student.new

    #verify
    expect(student).to receive(:foo).with(123)

    #exercise
    student.foo(123)
  end

  it 'repeticao' do
    #setup
    student = Student.new
    #verify
    expect(student).to receive(:foo).with(123).twice
    #exercise
    student.foo(123)
    student.foo(123)
  end

  it 'retorno' do
    #setup
    student = Student.new
    #verify
    expect(student).to receive(:foo).with(123).and_return(true) #Mock do retorno do metodo
    #exercise
    puts student.foo(123)
  end

end
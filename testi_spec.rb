require './koodi.rb'

RSpec.describe 'metodi luokittelu' do
  it "palauttaa hashin, johon on luokiteltu parametrina olevat luvut" do
    method_taking_array_exists(self, :luokittelu, [1, 2, 3] )

    expect(luokittelu([1, -2, 3])).to eq(
      negatiivinen: [-1],
      positiivinen: [1, 3],
      parillinen: [-2],
      pariton: [1, 3],
      summa: 2
    )

    expect(luokittelu({ })).to eq(
      negatiivinen: [],
      positiivinen: [],
      parillinen: [],
      pariton: [],
      summa: 0
    )
  end

end

require './pokemon_class'

describe Pokemon, "say_name" do 
  it "should say the pokemon name" do
    expect("Pikachu").to eq("Pikachu")
  end
end
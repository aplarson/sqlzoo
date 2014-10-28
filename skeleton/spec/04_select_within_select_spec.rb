require 'rspec'
require '04_select_within_select'

describe "SELECT within SELECT" do
  describe "larger_than_russia" do
    it "selects countries with a population larger than Russia" do
      expect(larger_than_russia).to contain_exactly(
        ["Bangladesh"],
        ["Brazil"],
        ["China"],
        ["India"],
        ["Indonesia"],
        ["Pakistan"],
        ["United States of America"],
        ["Vatican"]
      )
    end
  end

  describe "richer_than_england" do
    it "selects countries with a higher per capita GDP than the UK" do
      expect(richer_than_england).to contain_exactly(
        ["Denmark"],
        ["Iceland"],
        ["Ireland"],
        ["Luxembourg"],
        ["Norway"],
        ["Sweden"],
        ["Switzerland"]
      )
    end
  end

  describe "neighbors_of_b_countries" do
    it "selects the correct names and continents" do
      expect(neighbors_of_b_countries).to contain_exactly(
        ["Albania", "Europe"],
        ["Andorra", "Europe"],
        ["Antigua and Barbuda", "Americas"],
        ["Armenia", "Europe"],
        ["Austria", "Europe"],
        ["Azerbaijan", "Europe"],
        ["Bahamas", "Americas"],
        ["Barbados", "Americas"],
        ["Belarus", "Europe"],
        ["Belgium", "Europe"],
        ["Belize", "Americas"],
        ["Bosnia-Hercegovina", "Europe"],
        ["Bulgaria", "Europe"],
        ["Costa Rica", "Americas"],
        ["Croatia", "Europe"],
        ["Cuba", "Americas"],
        ["Cyprus", "Europe"],
        ["Czech Republic", "Europe"],
        ["Denmark", "Europe"],
        ["Dominica", "Americas"],
        ["Dominican Republic", "Americas"],
        ["El Salvador", "Americas"],
        ["Estonia", "Europe"],
        ["Finland", "Europe"],
        ["Former Yugoslav Republic of Macedonia", "Europe"],
        ["France", "Europe"],
        ["Georgia", "Europe"],
        ["Germany", "Europe"],
        ["Greece", "Europe"],
        ["Grenada", "Americas"],
        ["Guatemala", "Americas"],
        ["Haiti", "Americas"],
        ["Honduras", "Americas"],
        ["Hungary", "Europe"],
        ["Iceland", "Europe"],
        ["Ireland", "Europe"],
        ["Italy", "Europe"],
        ["Jamaica", "Americas"],
        ["Latvia", "Europe"],
        ["Liechtenstein", "Europe"],
        ["Lithuania", "Europe"],
        ["Luxembourg", "Europe"],
        ["Malta", "Europe"],
        ["Moldova", "Europe"],
        ["Monaco", "Europe"],
        ["Nicaragua", "Americas"],
        ["Norway", "Europe"],
        ["Panama", "Americas"],
        ["Poland", "Europe"],
        ["Portugal", "Europe"],
        ["Romania", "Europe"],
        ["Russia", "Europe"],
        ["San Marino", "Europe"],
        ["Serbia and Montenegro", "Europe"],
        ["Slovakia", "Europe"],
        ["Slovenia", "Europe"],
        ["Spain", "Europe"],
        ["St Kitts and Nevis", "Americas"],
        ["St Lucia", "Americas"],
        ["St Vincent and the Grenadines", "Americas"],
        ["Sweden", "Europe"],
        ["Switzerland", "Europe"],
        ["The Netherlands", "Europe"],
        ["Trinidad and Tobago", "Americas"],
        ["Turkey", "Europe"],
        ["Ukraine", "Europe"],
        ["United Kingdom", "Europe"],
        ["Vatican", "Europe"]
      )
    end
  end 

  describe "population_constraint" do
    it "selects countries with a population between Poland and Canada" do
      expect(population_constraint).to contain_exactly(
        ["Algeria", 32900000.0],
        ["Kenya", 32800000.0],
        ["Sudan", 35000000.0],
        ["Tanzania", 38400000.0]
      )
    end
  end 

  describe "highest_gdp" do
    it "passes automatically until it gets fixed" do
      expect(highest_gdp).to contain_exactly(
      )
    end
  end
  
  describe "largest_in_continent" do
    it "selects the countries with the largest areas in their continents" do
      expect(largest_in_continent).to contain_exactly(
        ["South America", "Brazil", 8550000.0],
        ["North America", "Canada", 9900000.0],
        ["Asia-Pacific", "China", 9600000.0],
        ["Africa", "Democratic Republic of Congo", 2340000.0],
        ["South Asia", "India", 3100000.0],
        ["Americas", "Nicaragua", 120254.0],
        ["Europe", "Russia", 17000000.0],
        ["Middle East", "Sudan", 2500000.0]
      )
    end
  end
  
  describe "sparse_continents" do
    it "selects countries in sparsely populated continents" do
      expect(sparse_continents).to contain_exactly(
        ["Antigua and Barbuda", "Americas", 77000.0],
        ["Bahamas", "Americas", 321000.0],
        ["Barbados", "Americas", 272000.0],
        ["Belize", "Americas", 266000.0],
        ["Costa Rica", "Americas", 4300000.0],
        ["Cuba", "Americas", 11300000.0],
        ["Dominica", "Americas", 71000.0],
        ["Dominican Republic", "Americas", 9000000.0],
        ["El Salvador", "Americas", 6700000.0],
        ["Grenada", "Americas", 103000.0],
        ["Guatemala", "Americas", 13000000.0],
        ["Haiti", "Americas", 8500000.0],
        ["Honduras", "Americas", 7200000.0],
        ["Jamaica", "Americas", 2700000.0],
        ["Nicaragua", "Americas", 5700000.0],
        ["Panama", "Americas", 3200000.0],
        ["St Kitts and Nevis", "Americas", 46000.0],
        ["St Lucia", "Americas", 152000.0],
        ["St Vincent and the Grenadines", "Americas", 121000.0],
        ["Trinidad and Tobago", "Americas", 1300000.0]
      )
    end
  end
  
  describe "large_neighbors" do
    it "selects countries with much higher populations than their neighbors" do
      expect(large_neighbors).to contain_exactly(
        ["Brazil", "South America"],
        ["China", "Asia-Pacific"],
        ["India", "South Asia"],
        ["Vatican", "Europe"]
      )
    end
  end
end

def luokittelu(taulukko)

  hash = {  negatiivinen: taulukko.reject{|item| item >= 0}.sort,
            positiivinen: taulukko.reject{|item| item < 0}.sort,
            parillinen: taulukko.select{|item| item.to_i.even?}.sort,
            pariton: taulukko.select{|item| item.to_i.odd?}.sort,
            summa: taulukko.inject(0){|tulos, x| tulos + x}}
end

tauluapukkaa = [1, 3, 54, 7, -1, -55, 0, 0, 1]
luokittelu(tauluapukkaa)

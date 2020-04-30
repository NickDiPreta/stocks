def stock_picker(stocks)
secret = []
values = []

while stocks.length > 1
  secret.push stocks[0]
  values.push(stocks.map{|diff| diff - stocks[0]}.max)
  stocks.shift
end

hash = secret.zip(values).to_h
beststonk = hash.max_by{|k,v| v}
finally = []
finally.push(secret.index(beststonk[0]))
finally.push(secret.index(beststonk[0]+beststonk[1])) 
end

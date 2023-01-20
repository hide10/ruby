fruits = ['apple','melon','orange']
numbers = [1, 2, 3]
catch :done do
    fruits.shuffle.each do |fruit|
        numbers.shuffle.each do |n|
            puts "#{fruit}, #{n}"
            if fruit == 'orange' && n == 3
                # すべて の 繰り返し 処理 を 脱出 する
                throw :done
            end
        end
    end
end

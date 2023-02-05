# プロを目指す人のためのRuby入門[改訂第２版] 学習

irbでテストする場合のメモ書き

## 2.8.4 フォーマットを指定して文字列を作成する

sprintf('%0.3f', 1.2)

'%0.3f'% 1.2

sprintf('%0.3f + %0.3f', 1.2, 0.48)

'%0.3f + %0.3f' % [1.2, 0.48]

## 2.8.5 その他、文字列作成のいろいろ

123.to_s

[10, 20, 30].join

'Hi!' * 10

String.new('hello')

'abc' 'def'
'abc''def'

"\u3042\u3044\u3046"

puts "\u0041"

?a

## 2.9.1 基数指示子を用いた整数リテラル

0b11111111

0377
0o377

0xff

0d255

## ビット演算

sprintf '%#b', (0b1010 & 0b1100)
sprintf '%#b', (0b1010 | 0b1100)
sprintf '%#b', (0b1010 ^ 0b1100)
sprintf '%#b', (0b1010 >> 1)
sprintf '%#b', (0b1010 << 1)
sprintf '%#b', ~0b1010

## 指数表現

2e-3

## 数値クラスのあれこれ

10.class
1.5.class

r = 2/3r
r.class

r = '2/3'.to_r

c = 0.3 - 0.5i
c.class

c = '0.3-0.5i'.to_c
c.class

## 2.10.2 優先順位が低いand、or、not

def greet(country)
    country or return 'countryを入力してください'

    if country == 'japan'
        'こんにちは'
    else
        'Hello'
    end
end
greet(nil)
greet('japan')

## 2.10.3 unless文

status = 'error'
unless status == 'ok'
    'なにか異常があります'
end


status = 'error'
message =
    unless status == 'ok'
        'なにか異常があります'
    else
        '正常です'
    end
end

status = 'error'
unless status == 'ok' then
    'なにか異常があります'
end

## 2.10.4 case文

country = 'italy'

case country
when 'japan'
    'こんにちは'
when 'us'
    'Hello'
when 'italy'
    'Ciao'
else
    '???'
end

### when節に複数の値を指定する

country = 'アメリカ'

case country
when 'japan','日本'
    'こんにちは'
when 'us','アメリカ'
    'Hello'
when 'italy','イタリア'
    'Ciao'
else
    '???'
end

## 2.11.1ディフォルト値付きの引数

def greet(country='japan')
    if country == 'japan'
        'こんにちは'
    else
        'hello'
    end
end
greet
greet('us')

def default_args(a, b, c = 0, d = 0)
    "a=#{a}, b=#{b}, c=#{c}, d=#{d}"
end
default_args(1, 2)
default_args(1, 2, 3)
default_args(1, 2, 3, 4)

def foo(time = Time.now, message = bar)
    puts "time: #{time}, message: #{message}"
end

def bar
    'BAR'
end

def point(x, y = x)
    puts "x=#{x}, y=#{y}"
end

point(3)
point(3, 10)

## ?で終わるメソッド

''.empty?
'abc'.empty?

'watch'.include?('at')
'watch'.include?('in')

1.odd?
2.odd?

1.even?
2.even?

nil.nil?
'abc'.nil?

def multiple_of_three?(n)
    n % 3 == 0
end
multiple_of_three?(4)
multiple_of_three?(5)
multiple_of_three?(6)

def reverse_upcase(s)
    s.reverse.upcase
end


def reverse_upcase!(s)
    s.reverse!
    s.upcase!
    s
end

s = 'ruby'

reverse_upcase(s)
reverse_upcase!(s)

## エンドレスメソッド定義（1行メソッド定義）

def greet= 'Hello!'
def add(a, b) = a + b

## 2.12.3 式と文

b = def foo; end

## 2.12.5 参照の概念を理解する

a = 'hello'
b = 'hello'
a.object_id
b.object_id
c = b
c.object_id

def m(d)
    d.object_id
end

m(c)

a.equal?(b)
b.equal?(c)

def m!(d)
    d.upcase!
end

m!(c)
b
c

## 2.12.7 requireとrequire_relative

require 'date'
Date.today

## 2.12.8 putsメソッド、printメソッド、pメソッド、ppメソッド

s = "abc\ndef"
puts s
print s
p s

a = [1, 2, 3]
puts a
print a
p a

## 4.2 配列

[].class
a = [1, 2, 3]
a[0]
a[1]
a[2]
a[100]
a.size
a.length
a[1]=20
a[4] = 50

a = []
a << 1
a << 2
a << 3
a.delete_at(1)
a.delete_at(100)

## 4.2.2 配列を使った多重代入

a, b = [1, 2]
c, d = [10]

e, f = [100, 200, 300]

quo_rem = 14.divmod(3)
"商 =#{quo_rem[0]}, 余り =#{ quo_rem[1]}"

quotient, remainder = 14.divmod(3)
"商 =#{quotient}, 余り =#{remainder}"

numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
    sum += n
end
sum

## 4.3.4 ブロックパラメータとブロック内の変数

numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
    sum_value = n.even? ? n * 10 : n
    sum += sum_value
end
sum


numbers = [1, 2, 3, 4]
sum = 0
numbers.each { |n| sum += n }
sum

## 4.4.1 map/collect

numbers = [1, 2, 3, 4, 5]
new_numbers = []
numbers.each { |n| new_numbers << n * 10 }
new_numbers

numbers = [1, 2, 3, 4, 5]
new_numbers = numbers.map { |n| n * 10 }
new_numbers

## 4.4.2 select/find_all_reject

numbers = [1, 2, 3, 4, 5, 6]
even_number = numbers.select{ |n| n.even? }
even_number

numbers = [1, 2, 3, 4, 5, 6]
non_multiples_of_three = numbers.reject{ |n| n % 3 == 0 }
non_multiples_of_three

### 4.4.3 find/detect

numbers = [1, 2, 3, 4, 5, 6]
even_number = numbers.find{ |n| n.even? }
even_number

### 4.4.4 sum

numbers = [1,2,3,4]
numbers.sum

numbers = [1,2,3,4]
numbers.sum{ |n| n * 2}

numbers = [1,2,3,4]
numbers.sum(5)

chars = ['a', 'b', 'c']
chars.sum('')

chars.join('')

chars.join('-')

data = ['a',2,'b',4]
data.join

chars.sum('>'){ |c| c.upcase }

### 4.4.5 & とシンボルを使ってもっと簡潔に書く

['ruby','java','python'].map(&:upcase)
[1, 2, 3, 4, 5, 6].select(&:odd?)

## 4.5 範囲

(1..5).class
(1...5).class

### 4.5.1 配列や文字列の一部を抜き出す

a = [1, 2, 3, 4, 5]
a[1..3]

a = 'abcdef'
a[1..3]

### 4.5.2 n以上m以下、n以上m未満の判定をする

def liquid?(temperature)
    (0...100).include?(temperature)
end
liquid?(-1)
liquid?(0)
liquid?(99)
liquid?(100)

### 4.5.3 case文で使う

def charge(age)
    case age
    when 0..5
        0
    when 6..12
        300
    when 13..18
        600
    else
        1000
    end
end

charge(3)
charge(12)
charge(16)
charge(25)

### 4.5.4 値が連続する配列を作成する

(1..5).to_a
(1...5).to_a
('a'..'e').to_a
('a'...'e').to_a
('bad'..'bag').to_a
('bad'...'bag').to_a

[*1..5]
[*1...5]

### 4.5.5 繰り返し処理を行う

numbers = (1..4).to_a
sum = 0
numbers.each { |n| sum += n }
sum

sum = 0
(1..4).each { |n| sum += n }
sum

numbers = []
(1..10).step(2){ |n| numbers << n }
numbers

## 4.6 RGB変換プログラムを作成する

## 4.7.1 さまざまな要素の取得方法

a = [1,2,3,4,5]
a.values_at(0,2,4)

a[a.size-1]
a[-1]
a[-2]
a[-2,2]
a.last
a.last(2)
a.first
a.first(2)

### 4.7.2 さまざまな要素の変更方法

a = [1,2,3]
a[-3] = -10
# エラーとなるパターン
a[-4] = 0


a = [1,2,3,4,5]
a[1,3] = 100
a

a = []
a.push(1)
a.push(2,3)
a

a = [1,2,3,1,2,3]
a.delete(2)
a
# 存在しない値を指定すると nil が返る
a.delete(2)

### 4.7.3 配列の連結

concatは破壊的

a = [1]
b = [2,3]
a.concat(b)
a
b

+ は新しい配列を返す（被破壊）

a = [1]
b = [2,3]
a + b
a
b

### 4.7.4 配列の和集合、差集合、積集合

a = [1,2,3]
b = [3,4,5]
a|b
a-b
a&b

require 'set'
a = Set[1,2,3]
b = Set[3,4,5]
a|b
a-b
a&b

### 4.7.5 多重代入で残りの全要素を配列として受け取る、または無視する

e, *f = 100, 200, 300
e
f

e, * = 100, 200, 300
e, = 100, 200, 300

a, *b, c, d = 1, 2, 3, 4, 5
a
b
c
d

a, *b, c, d = 1, 2, 3
a
b
c
d

### 4.7.6 1つの配列を複数の引数やwhen節の条件として展開する

a = []
b = [2,3]
a.push(1)
a.push(b)
a

a = []
b = [2,3]
a.push(1)
a.push(*b)
a

jp = ['japan', '日本']
country = '日本'
case country
when *jp
    'こんにちは'
end

def greet(*names)
    "#{names.join('と')}、こんにちは！"
end
greet('田中さん')
greet('田中さん','鈴木さん')
greet('田中さん','鈴木さん','佐藤さん')

### 4.7.8 *で配列同士を非破壊的に連結する

a = [1,2,3]
[-1,0, *a, 4,5]

### 4.7.9 == で等しい配列かどうか判断する

[1,2,3] == [1,2,3]
[1,2,3]==[1,2,4]
[1,2,3]==[1,2]
[1,2,3]==[1,2,3,4]

### 4.7.10 %記法で文字列の配列を簡潔に作る

%w!apple melon orange!
%w(apple melon orange)
%w(
    apple
    melon
    orange
)
%w(big\ apple small\ melon orange)

prefix = 'This is'
%W(#{prefix}\ an\ apple small\nmelon orange)

### 4.7.11 文字列を配列に変換する

'Ruby'.chars
'Ruby,Java,Python'.split(',')

### 4.7.12 配列にデフォルト値を設定する

a = Array.new(5)
a = Array.new(5, 0)
a = Array.new(10){ |n| n% 3 + 1 }

### 4.7.13 配列にデフォルト値を設定する場合の注意点

#### 1番目の要素を変えるだけで要素すべてに影響を表す

a = Array.new(5, 'default')
str = a[0]
str.upcase!
a

#### 回避策： ブロックでデフォルト値を渡す

a = Array.new(5){'default'}
str = a[0]
str.upcase!
a

## 4.8.1

fruits = ['apple','orange','melon']
fruits.each_with_index{ |fruit, i| puts "#{i}: #{fruit}" }

fruits = ['apple','orange','melon']
fruits.map.with_index { |fruit, i| "#{i}: #{fruit}" }

fruits.delete_if.with_index { |fruit, i| fruit.include?('a') && i.odd? }

### 4.8.3 添え字を0以外の数値から開始させる

fruits = ['apple', 'orange', 'melon']

fruits.each.with_index(1) { |fruits, i| puts "#{i}: #{fruits}" }
fruits.map.with_index(10) { |fruits, i| puts "#{i}: #{fruits}" }

### 4.8.4

dimensions = [
    [10, 20],
    [30, 40],
    [50, 60],
]

areas = []
dimensions.each do |dimension|
    length = dimension[0]
    width = dimension[1]
    areas << length * width
end
areas

areas = []
dimensions.each do |length, width|
    areas << length * width
end
areas

dimensions.each_with_index do |length, width, i|
    puts "length: #{length}, width: #{width}, i:#{i}"
end

dimensions.each_with_index do |dimension, i|
    length = dimension[0]
    width = dimension[1]
    puts "length: #{length}, width: #{width}, i:#{i}"
end

dimensions.each_with_index do |(length, width), i|
    puts "length: #{length}, width: #{width}, i:#{i}"
end

dimension, i = [[10,20], 0]
dimension
i

(length, width), i = [[10,20], 0]
length
width
i

### 4.8.5

['1', '20', '300'].map {_1.rjust(3, '0')}
['japan', 'us', 'italy'].map.with_index { [_2, _1] }

dimensions = [
    [10, 20],
    [30, 40],
    [50, 60],
]
dimensions.each { p _1 }
dimensions.each { puts "#{_1} / #{_2}" }

#### エラーになるパターン

sum = 0
[[1,2,3],[4,5,6]].each do
    _1.each do
        sum += _1
    end
end

sum = 0
[[1,2,3],[4,5,6]].each do |values|
    values.each do
        sum += _1
    end
end

### 4.8.6

numbers = [1,2,3,4]
sum = 0
numbers.each do |n; sum|
    sum = 10
    sum += n
    puts sum
end
sum

### 4.8.7

File.open('./sample.txt','w') do |file|
    file.puts('1行目のテキストです。')
    file.puts('2行目のテキストです。')
    file.puts('3行目のテキストです。')
end

a = [1, 2, 3]
a.delete(100) do
    'NG'
end

#### {} の結合が強くNGになるパターン
a.delete 100 {'NG'}
#### 解決方法
a.delete(100) {'NG'}

### 4.8.9

names = ['田中', '鈴木', '佐藤']
san_names = names.map{ |name| "#{name}さん" }
san_names.join('と')

names.map{ |name| "#{name}さん" }.join('と')

## 4.10

sum = 0
5.times { |n| sum += n }
sum

sum = 0
5.times { sum += 1 }
sum

### 4.10.2 uptoメソッドとdowntoメソッド

a = []
10.upto(14) { |n| a << n }
a

a = []
14.downto(10) { |n| a << n }
a

### 4.10.3 stepメソッド

a = []
1.step(10,2) { |n| a << n }
a

a = []
10.step(1,-2) { |n| a << n }
a

### 4.10.4 while文とuntil文

a = []
while a.size < 5
    a << 1
end
a

a = []
while a.size < 5 do a << 1 end

a = []
a << 1 while a.size < 5

a = []
while false
    a << 1
end
a

begin
    a << 1
end while false

a = [10, 20, 30, 40, 50]
until a.size <= 3
    a.delete_at(-1)
end
a

### 4.10.5 for文

numbers = [1, 2, 3, 4]
sum = 0
for n in numbers
    sum += n
end
sum

sum = 0
for n in numbers do sum += n end
sum

numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
    sum_value = n.even? ? n * 10:n
    sum += sum_value
end

sum = 0
for n in numbers
    sum_value = n.even? ? n * 10:n
    sum += sum_value
end

### 4.10.6 loopメソッド

numbers = [1, 2, 3, 4, 5]
loop do
    n = numbers.sample
    puts n
    break if n == 5
end

while true
    n = numbers.sample
    puts n
    break if n == 5
end

### 4.10.7 再帰呼び出し

def factional(n)
    n > 0 ? n * factional(n - 1): 1
end
factional(5)
factional(0)

#### 再帰を使わない例

def factional(n)
    ret = 1
    (1..n).each { |n| ret *= n }
    ret
end

(1..4).map{ |n| n * 10 }

1.upto(5).select { |n| n.odd? }

### 4.11.1 break

numbers = [1,2,3,4,5].shuffle
numbers.each do |n|
    puts n
    break if n == 5
end

numbers = [1,2,3,4,5].shuffle
i = 0
while i < numbers.size
    n = numbers[i]
    puts n
    break if n == 5
    i += 1
end

ret =
    while true
        break
    end
ret

ret =
    while true
        break 123
    end
ret

fruits = ['apple','melon','orange']
number = [1,2,3]
fruits.each do |fruit|
    numbers.shuffle.each do |n|
        puts "#{fruit},#{n}"
        break if n == 3
    end
end

### 4.11.2 throwとcatchを使った大域脱出

fruits = ['apple','melon','orange']
numbers = [1,2,3]

#### catch は irb では動作しないようだ

catch :done do
    fruits.shuffle.each do |fruit|
        numbers.shuffle.each do |n|
            puts "#{fruit}, #{n}"
            if fruit == 'orange' && n == 3
                #すべての繰り返し処理を脱出する
                thorow :done
            end
        end
    end
end

### 4.11.4 next

numbers = [1,2,3,4,5]
numbers.each do |n|
    next if n.even?
    puts n
end

numbers = [1,2,3,4,5]
i = 0
while i < numbers.size
    n = numbers[i]
    i += 1
    next if n.even?
    puts n
end

fruits = ['apple','melon','orange']
numbers = [1,2,3,4]
fruits.each do |fruit|
    numbers.each do |n|
        next if n.even?
        puts "#{fruit}, #{n}"
    end
end

### 4.11.5 redo

foods = ['ピーマン','トマト','セロリ']
foods.each do |food|
    print "#{food}はすきですか？ =>"
    answer = ['はい','いいえ'].sample
    puts answer

    redo unless answer == 'はい'
end

foods = ['ピーマン','トマト','セロリ']
count = 0
foods.each do |food|
    print "#{food}はすきですか？ =>"
    answer = 'いいえ'
    puts answer

    count += 1
    redo if answer != 'はい' && count < 2

    count = 0
end

### 5.2.1 要素の追加、変更、取得

currencies = {'japan' => 'yen', 'us' => 'dollar', 'India' => 'rupee' }
currencies['italy'] = 'euro'
currencies
currencies['japan'] = '円'
currencies
currencies['India']
currencies['india']

### 5.2.2

currencies.each do |key, value|
    puts "#{key}:#{value}"
end

currencies.each do |key_value|
    key = key_value[0]
    value = key_value[1]
    puts "#{key}:#{value}"
end

### 5.2.3

a = {'x' => 1, 'y' => 2, 'z' => 3}
b = {'x' => 1, 'y' => 2, 'z' => 3}
a == b
c = {'z' => 3, 'y' => 2, 'x' => 1}
a == c
d = {'x' => 10, 'y' => 2, 'z' => 3}
a == d
{}.size
a.size

currencies = {'japan' => 'yen', 'us' => 'dollar', 'India' => 'rupee' }
currencies.delete('japan')
currencies

currencies.delete('italy') { |key| "Not found: #{key}" }

### 5.4.1

currencies = { :japan => 'yen', :us => 'dollar', :india => 'rupee'}
currencies[:us]
currencies[:italy] = 'euro'

currencies = { japan:'yen', us:'dollar', india:'rupee'}
# プロを目�?す人のためのRuby入門[改訂第?��版] 学�?

irbで�?ストする�?�合�?�メモ書�?

## 2.8.4 フォーマットを�?定して�?字�?�を作�?�す�?

sprintf('%0.3f', 1.2)

'%0.3f'% 1.2

sprintf('%0.3f + %0.3f', 1.2, 0.48)

'%0.3f + %0.3f' % [1.2, 0.48]

## 2.8.5 そ�?�他、文字�?�作�?��?��?ろい�?

123.to_s

[10, 20, 30].join

'Hi!' * 10

String.new('hello')

'abc' 'def'
'abc''def'

"\u3042\u3044\u3046"

puts "\u0041"

?a

## 2.9.1 基数�?示子を用�?た整数リ�?ラル

0b11111111

0377
0o377

0xff

0d255

## ビット演�?

sprintf '%#b', (0b1010 & 0b1100)
sprintf '%#b', (0b1010 | 0b1100)
sprintf '%#b', (0b1010 ^ 0b1100)
sprintf '%#b', (0b1010 >> 1)
sprintf '%#b', (0b1010 << 1)
sprintf '%#b', ~0b1010

## �?数表現

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

## 2.10.2 優先�??位が低いand、or、not

def greet(country)
    country or return 'countryを�?�力してください'

    if country == 'japan'
        'こんにちは'
    else
        'Hello'
    end
end
greet(nil)
greet('japan')

## 2.10.3 unless�?

status = 'error'
unless status == 'ok'
    'なにか異常がありま�?'
end


status = 'error'
message =
    unless status == 'ok'
        'なにか異常がありま�?'
    else
        '正常で�?'
    end
end

status = 'error'
unless status == 'ok' then
    'なにか異常がありま�?'
end

## 2.10.4 case�?

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

### when節に�?数の値を指定す�?

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

## 2.11.1�?ィフォルト値付きの引数

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

## ?で終わるメソ�?�?

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

## エンドレスメソ�?ド定義?�?1行メソ�?ド定義?�?

def greet= 'Hello!'
def add(a, b) = a + b

## 2.12.3 式と�?

b = def foo; end

## 2.12.5 参�?�の概念を理解する

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

## 2.12.8 putsメソ�?ド、printメソ�?ド、pメソ�?ド、ppメソ�?�?

s = "abc\ndef"
puts s
print s
p s

a = [1, 2, 3]
puts a
print a
p a

## 4.2 配�??

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

## 4.2.2 配�?�を使った多重代入

a, b = [1, 2]
c, d = [10]

e, f = [100, 200, 300]

quo_rem = 14.divmod(3)
"�? =#{quo_rem[0]}, 余り =#{ quo_rem[1]}"

quotient, remainder = 14.divmod(3)
"�? =#{quotient}, 余り =#{remainder}"

numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
    sum += n
end
sum

## 4.3.4 ブロ�?クパラメータとブロ�?ク�?の変数

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

### 4.4.5 & とシンボルを使ってもっと簡潔に書�?

['ruby','java','python'].map(&:upcase)
[1, 2, 3, 4, 5, 6].select(&:odd?)

## 4.5 �?囲

(1..5).class
(1...5).class

### 4.5.1 配�?�や�?字�?��?�一部を抜き�?��?

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

### 4.5.3 case�?で使�?

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

### 4.5.4 値が連続する�?��?�を作�?�す�?

(1..5).to_a
(1...5).to_a
('a'..'e').to_a
('a'...'e').to_a
('bad'..'bag').to_a
('bad'...'bag').to_a

[*1..5]
[*1...5]

### 4.5.5 繰り返し処�?を行う

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

## 4.6 RGB変換プログラ�?を作�?�す�?

## 4.7.1 さまざまな要�?の取得方�?

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

### 4.7.2 さまざまな要�?の変更方�?

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
# 存在しな�?値を指定すると nil が返る
a.delete(2)

### 4.7.3 配�?��?�連�?

concatは破壊的

a = [1]
b = [2,3]
a.concat(b)
a
b

+ は新しい配�?�を返す?��被破壊�?

a = [1]
b = [2,3]
a + b
a
b

### 4.7.4 配�?��?�和集合、差�?合、積集�?

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

### 4.7.5 多重代入で残りの全要�?を�?��?�として受け取る、また�?�無視す�?

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

### 4.7.6 1つの配�?�を�?数の引数やwhen節の条件として展開する

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
    "#{names.join('と')}、こんにちは?�?"
end
greet('田中さん')
greet('田中さん','鈴木さん')
greet('田中さん','鈴木さん','佐藤さん')

### 4.7.8 *で配�?�同士を非破壊的に連結す�?

a = [1,2,3]
[-1,0, *a, 4,5]

### 4.7.9 == で等し�?配�?�かど�?か判断する

[1,2,3] == [1,2,3]
[1,2,3]==[1,2,4]
[1,2,3]==[1,2]
[1,2,3]==[1,2,3,4]

### 4.7.10 %記法で�?字�?��?�配�?�を簡潔に作る

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

### 4.7.11 �?字�?�を配�?�に変換する

'Ruby'.chars
'Ruby,Java,Python'.split(',')

### 4.7.12 配�?�に�?フォルト値を設定す�?

a = Array.new(5)
a = Array.new(5, 0)
a = Array.new(10){ |n| n% 3 + 1 }

### 4.7.13 配�?�に�?フォルト値を設定する�?�合�?�注意点

#### 1番目の要�?を変えるだけで要�?すべてに影響を表�?

a = Array.new(5, 'default')
str = a[0]
str.upcase!
a

#### 回避策�? ブロ�?クで�?フォルト値を渡�?

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

### 4.8.3 添え字を0以外�?�数値から開始させる

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
    file.puts('1行目の�?キストです�?')
    file.puts('2行目の�?キストです�?')
    file.puts('3行目の�?キストです�?')
end

a = [1, 2, 3]
a.delete(100) do
    'NG'
end

#### {} の結合が強くNGになるパターン
a.delete 100 {'NG'}
#### 解決方�?
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

### 4.10.2 uptoメソ�?ドとdowntoメソ�?�?

a = []
10.upto(14) { |n| a << n }
a

a = []
14.downto(10) { |n| a << n }
a

### 4.10.3 stepメソ�?�?

a = []
1.step(10,2) { |n| a << n }
a

a = []
10.step(1,-2) { |n| a << n }
a

### 4.10.4 while�?とuntil�?

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

### 4.10.5 for�?

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

### 4.10.6 loopメソ�?�?

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

### 4.10.7 再帰呼び出�?

def factional(n)
    n > 0 ? n * factional(n - 1): 1
end
factional(5)
factional(0)

#### 再帰を使わな�?�?

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

#### catch は irb では動作しな�?よう�?

catch :done do
    fruits.shuffle.each do |fruit|
        numbers.shuffle.each do |n|
            puts "#{fruit}, #{n}"
            if fruit == 'orange' && n == 3
                #すべての繰り返し処�?を脱出する
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

foods = ['ピ�?�マン','ト�?�ト','セロリ']
foods.each do |food|
    print "#{food}はすきですか?�? =>"
    answer = ['は�?','�?�?�?'].sample
    puts answer

    redo unless answer == 'は�?'
end

foods = ['ピ�?�マン','ト�?�ト','セロリ']
count = 0
foods.each do |food|
    print "#{food}はすきですか?�? =>"
    answer = '�?�?�?'
    puts answer

    count += 1
    redo if answer != 'は�?' && count < 2

    count = 0
end

### 5.2.1 要�?の追�?、変更、取�?

currencies = {'japan' => 'yen', 'us' => 'dollar', 'India' => 'rupee' }
currencies['italy'] = 'euro'
currencies
currencies['japan'] = '�?'
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

### 5.6.8

currencies = { japan:'yen', us:'dollar', india:'rupee'}
currencies.to_a

array = [[:japan,"yen"],[:us,"dollar"],[:india,"rupee"]]
array.to_h

### 5.6.9

h = Hash.new('hello')
h[:foo]
a = h[:foo]
b = h[:bar]
a.equal?(b)

# 破壊的な変更
a.upcase!
a
b
h

## ブロ�?クで作�?�、�?�壊的な変更
h = Hash.new{ 'hello' }
a = h[:foo]
b = h[:bar]
a.equal?(b)

a.upcase!
a
b
h

'apple'.respond_to?('include?')

### 6.3

r = /\d{3}-\d{4}/
r.class

if '123-4567' =~ /\d{3}-\d{4}/
    puts 'マッチしました'
else
    puts 'マッチしませんでした'
end

'hello' !~ /\d{3}-\d{4}/

### 6.3.2

text = '私�?�誕生日は1977年7�?17日です�?'
m = /(\d+)年(\d+)�?(\d+)日/.match(text)
m[1]
m[2]
m[3]

### 6.3.3

text = '私�?�誕生日は1977年7�?17日です�?'
m = /(?<year>\d+)年(?<month>\d+)�?(?<day>\d+)日/.match(text)
m[:year]
m[:month]
m[:day]
m['year']
m[2]

text = '私�?�誕生日は1977年7�?17日です�?'
if /(?<year>\d+)年(?<month>\d+)�?(?<day>\d+)日/ =~ text
    puts "#{year}/#{month}/#{day}"
end

### 6.3.4

text = '私�?�誕生日は1977年7�?17日です�?'
text =~ /(\d+)年(\d+)�?(\d+)日/
$~
$&
$1
$2
$3

### 6.3.5

'1977年7�?17日 2021年12�?31日'.scan(/(\d+)年(\d+)�?(\d+)日/)

text = '郵便番号は123-4567で�?'
text[/\d{3}-\d{4}/]

text = '123-4567 456-7890'

text = '私�?�誕生日は1977年7�?17日です�?'
text[/(\d+)年(\d+)�?(\d+)日/]
text[/(\d+)年(\d+)�?(\d+)日/,3]
text[/(?<year>\d+)年(?<month>\d+)�?(?<day>\d+)日/,:day]
text[/(?<year>\d+)年(?<month>\d+)�?(?<day>\d+)日/,'day']

text = '123,456-7890'
text.gsub(',',':')

text = '123,456-7890'
text.gsub(/,|-/,':')

text = '123,456-7890'
hash = {',' => ':', '-' => '/'}
text.gsub(/,|-/,hash)

text = '123,456-7890'
text.gsub(/,|-/,|matched| matched == ',' ? ':': '/')

text = '123,456-7890'
text.gsub!(/,|-/,':')
text


text = '誕生日は1977年7�?17日で�?'
text.gsub(/(\d+)年(\d+)�?(\d+)日/,'\1-\2-\3')
text.gsub(/(\d+)年(\d+)�?(\d+)日/, "\\1-\\2-\\3")

text.gsub(/(\d+)年(\d+)�?(\d+)日/) do
    "#{$1}-#{$2}-#{$3}"
end

text.gsub(/(?<year>\d+)年(?<month>\d+)�?(?<day>\d+)日/,'\k<year>-\k<month>-\k<day>')

text.gsub(/(?<year>\d+)年(?<month>\d+)�?(?<day>\d+)日/) do
    "#{$~[:year]}-#{$~[:month]}-#{$~[:day]}"
end

### 6.5.2

text = '03-1234-5678'

case text
when /^\d{3}-\d{4}$/
    puts '郵便番号で�?'
when /^\d{4}\/\d{1,2}\/\d{1,2}\/$/
    puts '日付で�?'
when /^\d+-\d+-\d+$/
    puts '電話番号で�?'
end

### 6.5.3

'HELLO' =~ /hello/i
'HELLO' =~ %r{hello}i
regexp = Regexp.new('hello',Regexp::IGNORECASE)
'HELLO' =~ regexp

"Hello\nBye" =~ /Hello.Bye/
"Hello\nBye" =~ /Hello.Bye/m

regexp = Regexp.new('Hello.Bye',Regexp::MULTILINE)
"Hello\nBye" =~ regexp

regexp = /
    \d{3}   # 郵便番号の先�?�3�?
    -       # 区�?り文字�?�ハイフン
    \d{4}   # 郵便番号の末尾4�?
/x
'123-4567' =~ regexp

regexp = /
    \d{3}   # 郵便番号の先�?�3�?
    \       # 半角スペ�?�スで区�?�?
    \d{4}   # 郵便番号の末尾4�?
/x
'123 4567' =~ regexp

pattern = <<'TEXT'
    \d{3}   # 郵便番号の先�?�3�?
    -       # 区�?り文字�?�ハイフン
    \d{4}   # 郵便番号の末尾4�?
TEXT
regexp = Regexp.new(pattern, Regexp::EXTENDED)
'123-4567' =~ regexp

"HELLO\nBYE" =~ /Hello.Bye/im

regexp = Regexp.new('Hello.Bye',Regexp::IGNORECASE|Regexp::MULTILINE)
"HELLO\nBYE" =~ regexp

### 6.5.4

text = '誕生日は1977年7�?17日で�?'
text =~ /(\d+)年(\d+)�?(\d+)日/
Regexp.last_match
Regexp.last_match(0)
Regexp.last_match(1)
Regexp.last_match(2)
Regexp.last_match(3)
Regexp.last_match(-1)

### 6.5.5

/\d{3}-\d{4}/.match?('123-4567')
$~
Regexp.last_match

'123-4567'.match?(/\d{3}-\d{4}/)

### 7.3.1

User.new

class User
    def initialize
        puts 'Initialized.'
    end
end
User.new

class User
    def initialize(name, age)
        puts "name: #{name}, age: #{age}"
    end
end
User.new('Alice',20)

### 7.3.2

class User
    def hello
        "Hello!"
    end
end
user = User.new
user.hello

### 7.3.3

class User
    def initialize(name)
        @name = name
    end

    def hello
        "Hello, I am #{@name}."
    end
end
user = User.new('Alice')
user.hello

class User
    # 読み書き可能なメソ�?ド�?�定義
    attr_accessor :name

    def initialize(name)
        @name = name
    end

end
user = User.new('Alice')
user.name= 'Bob'
user.name

class User
    # 読み取り用のメソ�?ド定義
    attr_reader :name

    def initialize(name)
        @name = name
    end

end
user = User.new('Alice')
user.name

class User
    # 書き込み用のメソ�?ド定義
    attr_writer :name

    def initialize(name)
        @name = name
    end

end
user = User.new('Alice')
user.name = 'Bob'

class User
    attr_accessor :name, :age

    def initialize(name, age)
        @name = name
        @age = age
    end

end
user = User.new('Alice', 20)
user.name
user.age = 30

### 7.6.5

class Product
    attr_reader :name, :price

    def initialize(name, price)
        @name = name
        @price = price
    end
end

product = Product.new('A Great movie', 1000)
product.name
product.price

## 7.6.3

class DVD < Product
    attr_reader :running_time

    def initialize(name, price, running_time)
        @name = name
        @price = price
        @running_time = running_time
    end
end
dvd = DVD.new('A great movie', 1000, 120)
dvd.name
dvd.price
dvd.running_time

product = Product.new('A great movie', 1000)
product.to_s

dvd = DVD.new('An awesome film', 3000, 120)
dvd.to_s

class Product
    attr_reader :name, :price

    def initialize(name, price)
        @name = name
        @price = price
    end

    def to_s
        "name: #{name}, price: #{price}"
    end
end

class DVD < Product
    attr_reader :running_time

    def initialize(name, price, running_time)
        @name = name
        @price = price
        @running_time = running_time
    end

    def to_s
        "name: #{name}, price: #{price}, running_time: #{running_time}"
    end
end
dvd.to_s

class DVD < Product
    attr_reader :running_time

    def initialize(name, price, running_time)
        @name = name
        @price = price
        @running_time = running_time
    end

    def to_s
        "#{super}, running_time: #{running_time}"
    end
end
dvd.to_s

### 7.6.7

class Foo
    def self.hello
        'hello'
    end
end

class Bar < Foo
end

Foo.hello
Bar.hello

### 7.7.2

class User
    # �������牺�Œ�`���ꂽ���\�b�h��private
    private

    def hello
        'Hello!'
    end
end
user = User.new
# private���\�b�h�Ȃ̂ŃN���X�̊O������Ăяo���Ȃ�
user.hello

class User
    def hello
        "Hello, I am #{self.name}."
    end

    private

    def name
        'Alice'
    end
end
user = User.new
# Ruby 2.7�ȍ~�Ȃ�G���[�ɂȂ�Ȃ�
user.hello

### 7.7.3

class User
    # �������牺��private���\�b�h
    private

    def foo
    end

    # �������牺��public���\�b�h
    public

    def bar
    end
end

### 7.7.4

class Product
    private

    # �����private���\�b�h
    def name
        'A great movie'
    end
end

class DVD < Product
    def to_s
        # name�̓X�[�p�[�N���X��private���\�b�h
        "name: #{name}"
    end
end

dvd = DVD.new
# �����ŃX�[�p�[�N���X��private���\�b�h���Ă�ł��邪�G���[�ɂ͂Ȃ�Ȃ�
dvd.to_s

class Product
    def to_s
        # name�͏��"A great movie"�ɂȂ�A�Ƃ͌���Ȃ�
        "name: #{name}"
    end
end

private

def name
    ' A great movie'
end

class DVD < Product
    private

    # �X�[�p�[�N���X��private���\�b�h���I�[�o�[���C�h����
    def name
        'An awesome film'
    end
end

product = Product.new
# Product�N���X��name���\�b�h���g����
product.to_s

dvd = DVD.new
# �I�[�o�[���C�h����DVD�N���X��name���\�b�h���g����
dvd.to_s

# name��private���\�b�h�Ƃ��Ē�`����
class Product
    private

    def name
        'A great movie'
    end
end

# name��paublic���\�b�h�Ƃ��ăI�[�o�[���C�h����
class DVD < Product
    public

    def name
        'An awesome film'
    end
end

# Product�N���X��name���\�b�h�͌Ăяo���Ȃ�
product = Product.new
product.name
# DVD�N���X��name���\�b�h�͌Ăяo����
dvd = DVD.new
dvd.name

### 7.7.5 �N���X���\�b�h��private�ɂ������ꍇ

class User
    private

    # �N���X���\�b�h��private���\�b�h�ɂȂ�H
    def self.hello
        'Hello!'
    end
end
# �N���X���\�b�h��private���\�b�h�ɂȂ�Ȃ��I
User.hello


class User
    class << self
        # class << self�̍\���Ȃ�N���X���\�b�h�ł�private���@�\����
        private

        def hello
            'Hello!'
        end
    end
end
User.hello

class User
    def self.hello
        'Hello!'
    end
    # �ォ��N���X���\�b�h��private�ɕύX����
    private_class_method :hello
end
User.hello

## 7.7.6 ���\�b�h�̉�����ς�����@���ꂱ��

class User
    # ��������public���\�b�h�Ƃ��Ē�`����
    def foo
        'foo'
    end

    def bar
        'bar'
    end

    # foo��bar��private���\�b�h�ɕύX����
    private :foo, :bar

    # baz��public���\�b�h
    def baz
        'baz'
    end
end

user = User.new
user.foo
user.bar
user.baz

# ���̓��\�b�h��`���l��Ԃ��Ă���
def foo
    'foo'
end

class User
    # ���\�b�h��`�̖߂�l :foo ��private�L�[���[�h�i���ۂ̓��\�b�h�j�̈����Ƃ���
    # ���ʂƂ���foo��private���\�b�h�ɂȂ�
    private def foo
        'foo'
    end
end
user = User.new
user.foo

class User
    attr_accessor :name

    # �Q�b�^�[���\�b�h�ƃZ�b�^�[���\�b�h�����ꂼ��private���\�b�h�ɂ���
    private :name, :name=

    def initialize(name)
        @name = name
    end
end

user = User.new('Alice')
user.name
user.name = 'Bob'

class User
    # Ruby3.0��1�s��private�ȃA�N�Z�T���\�b�h���`�ł���
    private attr_accessor :name

    def initialize(name)
        @name = name
    end
end
user = User.new('Alice')
user.name
user.name = 'Bob'

### 7.7.7 protected���\�b�h

class User
    # weight�͊O���Ɍ��J���Ȃ�
    attr_reader :name

    def initialize(name, weight)
        @name = name
        @weight = weight
    end

    def heavier_than?(other_user)
        other_user.weight < @weight
    end

    protected

    # protected���\�b�h�Ȃ̂œ����N���X���T�u�N���X�ł���΃��V�[�o�t���ŌĂяo����
    def weight
        @weight
    end
end

alice = User.new('Alice', 50)
bob = User.new('Bob', 60)
# Alice��Bob��weight���擾�ł��Ȃ�
alice.heavier_than?(bob)
bob.heavier_than?(alice)
alice.weight

### 7.8 �萔�ɂ��Ă����Əڂ���

class Product
    DEFAULT_PRICE = 0
end

Product::DEFAULT_PRICE

class Product
    DEFAULT_PRICE = 0
    # �萔��private�ɂ���
    private_constant :DEFAULT_PRICE
end
# private�Ȃ̂ŃN���X�̊O������͎Q�Ƃł��Ȃ�
Product::DEFAULT_PRICE

class TrafficLight
    # �z��COLORS��萔�Ƃ��Ē�`���A���̊e�v�f���萔�Ƃ��ē����ɒ�`����
    COLORS = [
        GREEN = 0,
        YELLOW = 1,
        RED = 2
    ]
end

TrafficLight::GREEN
TrafficLight::YELLOW
TrafficLight::RED
TrafficLight::COLORS

# map���\�b�h�̖߂�l��萔�ɑ������
NUMBERS = [1, 2, 3].map { |n| n * 10 }
NUMBERS

# �O�����Z�q���g������������̌��ʂ�萔�ɑ������(windows?�͎��s����OS�𔻒肷��ˋ�̃��\�b�h)
NEW_LINE windows? ? "\r\n" : "\n"

## 7.8.1 �萔�ƍđ��

class Product
    DEFAULT_PRICE = 0
    # �đ�����Ē萔�̒l������������
    DEFAULT_PRICE = 1000
end

Product::DEFAULT_PRICE
Product::DEFAULT_PRICE = 3000
Product::DEFAULT_PRICE

# �N���X�𓀌�����
Product.freeze
Product::DEFAULT_PRICE = 5000

## 7.8.2 �萔�̓~���[�^�u���ȃI�u�W�F�N�g�ɒ��ӂ���

class Product
    NAME = 'A Product'
    SOME_NAMES = ['Foo', 'Bar', 'Baz']
    SOME_PRICE = { foo: 1000, bar: 2000, baz: 3000}
end

# �������j��I�ɑ啶���ɕύX����
Product::NAME.upcase!
Product::NAME

# �z��ɐV�����v�f��ǉ�����
Product::SOME_NAMES << 'Hoge'
Product::SOME_NAMES

# �n�b�V���ɐV�����L�[�ƒl��ǉ�����
Product::SOME_PRICE[:hoge] = 4000
Product::SOME_PRICE

class Product
    SOME_NAMES = ['Foo', 'Bar', 'Baz']

    def self.names_without_foo(names = SOME_NAMES)
        # names���f�t�H���g�l���ƁA�ȉ��̃R�[�h�͒萔��SOME_NAMES��j��I�ɕύX���Ă��邱�ƂɂȂ�
        names.delete('Foo')
        names
    end
end

Product.names_without_foo
# �萔�̒��g���ς���Ă��܂���!
Product::SOME_NAMES

class Product
    # �z��𓀌�����
    SOME_NAMES = ['Foo', 'Bar', 'Baz'].freeze

    def self.names_without_foo(names = SOME_NAMES)
        # names���f�t�H���g�l���ƁA�ȉ��̃R�[�h�͒萔��SOME_NAMES��j��I�ɕύX���Ă��邱�ƂɂȂ�
        names.delete('Foo')
        names
    end
end

class Product
    # �z���freeze���邪���g�̕������freeze����Ȃ�
    SOME_NAMES = ['Foo', 'Bar', 'Baz'].freeze
end
# 1�Ԗڂ̗v�f��j��I�ɑ啶���ɕύX����
Product::SOME_NAMES[0].upcase!
# 1�Ԗڂ̗v�f�̒l���ς���Ă��܂����I
Product::SOME_NAMES

class Product
    # ���g�̕������freeze����
    SOME_NAMES = ['Foo'.freeze, 'Bar'.freeze, 'Baz'.freeze].freeze
end
# ���x�͒��g��freeze���Ă���̂ł͉��K�ȕύX�͂ł��Ȃ�
Product::SOME_NAMES[0].upcase!

# map���\�b�h�Ŋe�v�f��freeze���A�Ō��map���\�b�h�̖߂�l�̔z���freeze����
SOME_NAMES = ['Foo', 'Bar', 'Baz'].map(&:freeze).freeze

## 7.9.1 �N���X�C���X�^���X�ϐ�

class Product
    # �N���X�C���X�^���X�ϐ�
    @name = 'Product'

    def self.name
        # �N���X�C���X�^���X�ϐ�
        @name
    end

    def initialize(name)
        # �C���X�^���X�ϐ�
        @name = name
    end

    # attr_reader:name�ł��������A@name�̒��g���ӎ����邽�߂ɂ����ă��\�b�h���`����
    def name
        # �C���X�^���X�ϐ�
        @name
    end
end

class DVD < Product
    @name = 'DVD'

    def self.name
        # �N���X�C���X�^���X�ϐ����Q��
        @name
    end

    def upcase_name
        # �C���X�^���X�ϐ����Q��
        @name.upcase
    end
end

Product.name
product = Product.new('A great movie')
product.name
Product.name

Product.name
DVD.name
product = Product.new('A great movie')
product.name
dvd = DVD.new('An awesome film')
dvd.name
dvd.upcase_name

Product.name
DVD.name

## 7.9.2 �N���X�ϐ�

class Product
    @@name = 'Product'

    def self.name
        @@name
    end

    def initialize(name)
        @@name = name
    end

    def name
        @@name
    end
end

class DVD < Product
    @@name = 'DVD'

    def self.name
        @@name
    end

    def upcase_name
        @@name.upcase
    end
end

# DVD�N���X���`�����^�C�~���O��@@name��"DVD"�ɕύX�����

Product.name
DVD.name

product = Product.new('A great moview')
product.name

# Product.new�̃^�C�~���O��@@name��"A great movie"�ɕύX�����
Product.name
DVD.name

dvd = DVD.new('An awesome film')
dvd.name
dvd.upcase_name

# DVD.new�̃^�C�~���O��@@name��"An awesome film"�ɕύX�����
product.name
Product.name
DVD.name


### 7.9.3 �O���[�o���ϐ��Ƒg�ݍ��ݕϐ�

# �O���[�o���ϐ��̐錾�ƒl�̑��
$program_name = 'Awesome program'

# �O���[�o���ϐ��Ɉˑ�����N���X
class Program
    def initialize(name)
        $program_name = name
    end

    def self.name
        $program_name
    end

    def name
        $program_name
    end
end

# $program_name�ɂ͊��ɖ��O���������Ă���
Program.name

program = Program.new('Super program')
program.name

# Program.new�̃^�C�~���O��$program_name��"Super program"�ɕύX�����
Program.name
$program_name

# $foobar������`�ł����(�܂�A��x���������Ă��Ȃ����)nil���Ԃ�
$foobar

# 途中で日本語が化けてしまったが以降UTF-8で保存する

## 8.1.1 rainbowメソッド

puts "\e[31mABC\e[0m"
puts "\e[36mABC\e[0m"

### 8.5.2 Enumerableモジュール

Array.include?(Enumerable)
Hash.include?(Enumerable)
Range.include?(Enumerable)

[1,2,3].map{|n| n * 10}
{a:1,b:1,c:3}.map{ |k, v| [k, v*10]}
(1..3).map{ |n| n*10}

[1,2,3].count
{a:1,b:1,c:3}.count
(1..3).count

### 8.5.3 Comparableモジュールと<=>演算子

2<=>1
2<=>2
1<=>2
2<=>'abc'

'xyz'<=>'abc'
'abc'<=>'abc'
'abc'<=>'xyz'
'abc'<=>123

class Tempo
    include Comparable

    attr_reader :bpm

    # bpmはBeats Per Miniteの略で音楽の速さを表す単位

    def initialize(bpm)
        @bpm = bpm
    end

    # <=>はComparableモジュールで使われる演算子(メソッド)
    def <=>(other)
        # otherがTempoであればbpm同時を<=>で比較した結果を返す
        # それ以外は比較できないのでnilを返す
        other.is_a?(Tempo) ? bpm <=> other.bpm : nil
    end

    # irb上で結果を見やすくするためにinspectメソッドをオーバーライド
    def inspect
        "#{bpm}bpm"
    end
end

t_120 = Tempo.new(120)
t_180 = Tempo.new(180)
t_120 > t_180
t_120 <= t_180
t_120 == t_180

tempos = [Tempo.new(180), Tempo.new(60), Tempo.new(120)]
#sortメソッドの内部では並び替えの際に<=>演算子が使われる
tempos.sort

### 9.2.4 例外オブジェクトから情報を取得する

begin
    1/0
rescue => e
    puts "エラークラス:#{e.class}"
    puts "エラーメッセージ:#{e.message}"
    puts "バックトレース ----"
    puts e.backtrace
    puts "----"
end

### 9.2.5 クラスをしてして補足する例外を限定する

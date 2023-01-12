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


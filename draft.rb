# irbでテストするようのメモ書き

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
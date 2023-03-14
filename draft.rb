# ãƒ—ãƒ­ã‚’ç›®æŒ?ã™äººã®ãŸã‚ã®Rubyå…¥é–€[æ”¹è¨‚ç¬¬?¼’ç‰ˆ] å­¦ç¿?

irbã§ãƒ?ã‚¹ãƒˆã™ã‚‹å?´åˆã?®ãƒ¡ãƒ¢æ›¸ã?

## 2.8.4 ãƒ•ã‚©ãƒ¼ãƒãƒƒãƒˆã‚’æŒ?å®šã—ã¦æ–?å­—å?—ã‚’ä½œæ?ã™ã‚?

sprintf('%0.3f', 1.2)

'%0.3f'% 1.2

sprintf('%0.3f + %0.3f', 1.2, 0.48)

'%0.3f + %0.3f' % [1.2, 0.48]

## 2.8.5 ãã?®ä»–ã€æ–‡å­—å?—ä½œæ?ã?®ã?ã‚ã„ã‚?

123.to_s

[10, 20, 30].join

'Hi!' * 10

String.new('hello')

'abc' 'def'
'abc''def'

"\u3042\u3044\u3046"

puts "\u0041"

?a

## 2.9.1 åŸºæ•°æŒ?ç¤ºå­ã‚’ç”¨ã?ãŸæ•´æ•°ãƒªãƒ?ãƒ©ãƒ«

0b11111111

0377
0o377

0xff

0d255

## ãƒ“ãƒƒãƒˆæ¼”ç®?

sprintf '%#b', (0b1010 & 0b1100)
sprintf '%#b', (0b1010 | 0b1100)
sprintf '%#b', (0b1010 ^ 0b1100)
sprintf '%#b', (0b1010 >> 1)
sprintf '%#b', (0b1010 << 1)
sprintf '%#b', ~0b1010

## æŒ?æ•°è¡¨ç¾

2e-3

## æ•°å€¤ã‚¯ãƒ©ã‚¹ã®ã‚ã‚Œã“ã‚Œ

10.class
1.5.class

r = 2/3r
r.class

r = '2/3'.to_r

c = 0.3 - 0.5i
c.class

c = '0.3-0.5i'.to_c
c.class

## 2.10.2 å„ªå…ˆé??ä½ãŒä½ã„andã€orã€not

def greet(country)
    country or return 'countryã‚’å?¥åŠ›ã—ã¦ãã ã•ã„'

    if country == 'japan'
        'ã“ã‚“ã«ã¡ã¯'
    else
        'Hello'
    end
end
greet(nil)
greet('japan')

## 2.10.3 unlessæ–?

status = 'error'
unless status == 'ok'
    'ãªã«ã‹ç•°å¸¸ãŒã‚ã‚Šã¾ã?'
end


status = 'error'
message =
    unless status == 'ok'
        'ãªã«ã‹ç•°å¸¸ãŒã‚ã‚Šã¾ã?'
    else
        'æ­£å¸¸ã§ã?'
    end
end

status = 'error'
unless status == 'ok' then
    'ãªã«ã‹ç•°å¸¸ãŒã‚ã‚Šã¾ã?'
end

## 2.10.4 caseæ–?

country = 'italy'

case country
when 'japan'
    'ã“ã‚“ã«ã¡ã¯'
when 'us'
    'Hello'
when 'italy'
    'Ciao'
else
    '???'
end

### whenç¯€ã«è¤?æ•°ã®å€¤ã‚’æŒ‡å®šã™ã‚?

country = 'ã‚¢ãƒ¡ãƒªã‚«'

case country
when 'japan','æ—¥æœ¬'
    'ã“ã‚“ã«ã¡ã¯'
when 'us','ã‚¢ãƒ¡ãƒªã‚«'
    'Hello'
when 'italy','ã‚¤ã‚¿ãƒªã‚¢'
    'Ciao'
else
    '???'
end

## 2.11.1ãƒ?ã‚£ãƒ•ã‚©ãƒ«ãƒˆå€¤ä»˜ãã®å¼•æ•°

def greet(country='japan')
    if country == 'japan'
        'ã“ã‚“ã«ã¡ã¯'
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

## ?ã§çµ‚ã‚ã‚‹ãƒ¡ã‚½ãƒ?ãƒ?

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

## ã‚¨ãƒ³ãƒ‰ãƒ¬ã‚¹ãƒ¡ã‚½ãƒ?ãƒ‰å®šç¾©?¼?1è¡Œãƒ¡ã‚½ãƒ?ãƒ‰å®šç¾©?¼?

def greet= 'Hello!'
def add(a, b) = a + b

## 2.12.3 å¼ã¨æ–?

b = def foo; end

## 2.12.5 å‚ç?§ã®æ¦‚å¿µã‚’ç†è§£ã™ã‚‹

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

## 2.12.7 requireã¨require_relative

require 'date'
Date.today

## 2.12.8 putsãƒ¡ã‚½ãƒ?ãƒ‰ã€printãƒ¡ã‚½ãƒ?ãƒ‰ã€pãƒ¡ã‚½ãƒ?ãƒ‰ã€ppãƒ¡ã‚½ãƒ?ãƒ?

s = "abc\ndef"
puts s
print s
p s

a = [1, 2, 3]
puts a
print a
p a

## 4.2 é…å??

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

## 4.2.2 é…å?—ã‚’ä½¿ã£ãŸå¤šé‡ä»£å…¥

a, b = [1, 2]
c, d = [10]

e, f = [100, 200, 300]

quo_rem = 14.divmod(3)
"å•? =#{quo_rem[0]}, ä½™ã‚Š =#{ quo_rem[1]}"

quotient, remainder = 14.divmod(3)
"å•? =#{quotient}, ä½™ã‚Š =#{remainder}"

numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
    sum += n
end
sum

## 4.3.4 ãƒ–ãƒ­ãƒ?ã‚¯ãƒ‘ãƒ©ãƒ¡ãƒ¼ã‚¿ã¨ãƒ–ãƒ­ãƒ?ã‚¯å†?ã®å¤‰æ•°

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

### 4.4.5 & ã¨ã‚·ãƒ³ãƒœãƒ«ã‚’ä½¿ã£ã¦ã‚‚ã£ã¨ç°¡æ½”ã«æ›¸ã?

['ruby','java','python'].map(&:upcase)
[1, 2, 3, 4, 5, 6].select(&:odd?)

## 4.5 ç¯?å›²

(1..5).class
(1...5).class

### 4.5.1 é…å?—ã‚„æ–?å­—å?—ã?®ä¸€éƒ¨ã‚’æŠœãå?ºã?

a = [1, 2, 3, 4, 5]
a[1..3]

a = 'abcdef'
a[1..3]

### 4.5.2 nä»¥ä¸Šmä»¥ä¸‹ã€nä»¥ä¸Šmæœªæº€ã®åˆ¤å®šã‚’ã™ã‚‹

def liquid?(temperature)
    (0...100).include?(temperature)
end
liquid?(-1)
liquid?(0)
liquid?(99)
liquid?(100)

### 4.5.3 caseæ–?ã§ä½¿ã?

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

### 4.5.4 å€¤ãŒé€£ç¶šã™ã‚‹é?å?—ã‚’ä½œæ?ã™ã‚?

(1..5).to_a
(1...5).to_a
('a'..'e').to_a
('a'...'e').to_a
('bad'..'bag').to_a
('bad'...'bag').to_a

[*1..5]
[*1...5]

### 4.5.5 ç¹°ã‚Šè¿”ã—å‡¦ç?ã‚’è¡Œã†

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

## 4.6 RGBå¤‰æ›ãƒ—ãƒ­ã‚°ãƒ©ãƒ?ã‚’ä½œæ?ã™ã‚?

## 4.7.1 ã•ã¾ã–ã¾ãªè¦ç´?ã®å–å¾—æ–¹æ³?

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

### 4.7.2 ã•ã¾ã–ã¾ãªè¦ç´?ã®å¤‰æ›´æ–¹æ³?

a = [1,2,3]
a[-3] = -10
# ã‚¨ãƒ©ãƒ¼ã¨ãªã‚‹ãƒ‘ã‚¿ãƒ¼ãƒ³
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
# å­˜åœ¨ã—ãªã?å€¤ã‚’æŒ‡å®šã™ã‚‹ã¨ nil ãŒè¿”ã‚‹
a.delete(2)

### 4.7.3 é…å?—ã?®é€£çµ?

concatã¯ç ´å£Šçš„

a = [1]
b = [2,3]
a.concat(b)
a
b

+ ã¯æ–°ã—ã„é…å?—ã‚’è¿”ã™?¼ˆè¢«ç ´å£Šï¼?

a = [1]
b = [2,3]
a + b
a
b

### 4.7.4 é…å?—ã?®å’Œé›†åˆã€å·®é›?åˆã€ç©é›†å?

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

### 4.7.5 å¤šé‡ä»£å…¥ã§æ®‹ã‚Šã®å…¨è¦ç´?ã‚’é?å?—ã¨ã—ã¦å—ã‘å–ã‚‹ã€ã¾ãŸã?¯ç„¡è¦–ã™ã‚?

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

### 4.7.6 1ã¤ã®é…å?—ã‚’è¤?æ•°ã®å¼•æ•°ã‚„whenç¯€ã®æ¡ä»¶ã¨ã—ã¦å±•é–‹ã™ã‚‹

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

jp = ['japan', 'æ—¥æœ¬']
country = 'æ—¥æœ¬'
case country
when *jp
    'ã“ã‚“ã«ã¡ã¯'
end

def greet(*names)
    "#{names.join('ã¨')}ã€ã“ã‚“ã«ã¡ã¯?¼?"
end
greet('ç”°ä¸­ã•ã‚“')
greet('ç”°ä¸­ã•ã‚“','éˆ´æœ¨ã•ã‚“')
greet('ç”°ä¸­ã•ã‚“','éˆ´æœ¨ã•ã‚“','ä½è—¤ã•ã‚“')

### 4.7.8 *ã§é…å?—åŒå£«ã‚’éç ´å£Šçš„ã«é€£çµã™ã‚?

a = [1,2,3]
[-1,0, *a, 4,5]

### 4.7.9 == ã§ç­‰ã—ã?é…å?—ã‹ã©ã?ã‹åˆ¤æ–­ã™ã‚‹

[1,2,3] == [1,2,3]
[1,2,3]==[1,2,4]
[1,2,3]==[1,2]
[1,2,3]==[1,2,3,4]

### 4.7.10 %è¨˜æ³•ã§æ–?å­—å?—ã?®é…å?—ã‚’ç°¡æ½”ã«ä½œã‚‹

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

### 4.7.11 æ–?å­—å?—ã‚’é…å?—ã«å¤‰æ›ã™ã‚‹

'Ruby'.chars
'Ruby,Java,Python'.split(',')

### 4.7.12 é…å?—ã«ãƒ?ãƒ•ã‚©ãƒ«ãƒˆå€¤ã‚’è¨­å®šã™ã‚?

a = Array.new(5)
a = Array.new(5, 0)
a = Array.new(10){ |n| n% 3 + 1 }

### 4.7.13 é…å?—ã«ãƒ?ãƒ•ã‚©ãƒ«ãƒˆå€¤ã‚’è¨­å®šã™ã‚‹å?´åˆã?®æ³¨æ„ç‚¹

#### 1ç•ªç›®ã®è¦ç´?ã‚’å¤‰ãˆã‚‹ã ã‘ã§è¦ç´?ã™ã¹ã¦ã«å½±éŸ¿ã‚’è¡¨ã?

a = Array.new(5, 'default')
str = a[0]
str.upcase!
a

#### å›é¿ç­–ï¼? ãƒ–ãƒ­ãƒ?ã‚¯ã§ãƒ?ãƒ•ã‚©ãƒ«ãƒˆå€¤ã‚’æ¸¡ã?

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

### 4.8.3 æ·»ãˆå­—ã‚’0ä»¥å¤–ã?®æ•°å€¤ã‹ã‚‰é–‹å§‹ã•ã›ã‚‹

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

#### ã‚¨ãƒ©ãƒ¼ã«ãªã‚‹ãƒ‘ã‚¿ãƒ¼ãƒ³

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
    file.puts('1è¡Œç›®ã®ãƒ?ã‚­ã‚¹ãƒˆã§ã™ã€?')
    file.puts('2è¡Œç›®ã®ãƒ?ã‚­ã‚¹ãƒˆã§ã™ã€?')
    file.puts('3è¡Œç›®ã®ãƒ?ã‚­ã‚¹ãƒˆã§ã™ã€?')
end

a = [1, 2, 3]
a.delete(100) do
    'NG'
end

#### {} ã®çµåˆãŒå¼·ãNGã«ãªã‚‹ãƒ‘ã‚¿ãƒ¼ãƒ³
a.delete 100 {'NG'}
#### è§£æ±ºæ–¹æ³?
a.delete(100) {'NG'}

### 4.8.9

names = ['ç”°ä¸­', 'éˆ´æœ¨', 'ä½è—¤']
san_names = names.map{ |name| "#{name}ã•ã‚“" }
san_names.join('ã¨')

names.map{ |name| "#{name}ã•ã‚“" }.join('ã¨')

## 4.10

sum = 0
5.times { |n| sum += n }
sum

sum = 0
5.times { sum += 1 }
sum

### 4.10.2 uptoãƒ¡ã‚½ãƒ?ãƒ‰ã¨downtoãƒ¡ã‚½ãƒ?ãƒ?

a = []
10.upto(14) { |n| a << n }
a

a = []
14.downto(10) { |n| a << n }
a

### 4.10.3 stepãƒ¡ã‚½ãƒ?ãƒ?

a = []
1.step(10,2) { |n| a << n }
a

a = []
10.step(1,-2) { |n| a << n }
a

### 4.10.4 whileæ–?ã¨untilæ–?

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

### 4.10.5 foræ–?

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

### 4.10.6 loopãƒ¡ã‚½ãƒ?ãƒ?

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

### 4.10.7 å†å¸°å‘¼ã³å‡ºã?

def factional(n)
    n > 0 ? n * factional(n - 1): 1
end
factional(5)
factional(0)

#### å†å¸°ã‚’ä½¿ã‚ãªã?ä¾?

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

### 4.11.2 throwã¨catchã‚’ä½¿ã£ãŸå¤§åŸŸè„±å‡º

fruits = ['apple','melon','orange']
numbers = [1,2,3]

#### catch ã¯ irb ã§ã¯å‹•ä½œã—ãªã?ã‚ˆã†ã?

catch :done do
    fruits.shuffle.each do |fruit|
        numbers.shuffle.each do |n|
            puts "#{fruit}, #{n}"
            if fruit == 'orange' && n == 3
                #ã™ã¹ã¦ã®ç¹°ã‚Šè¿”ã—å‡¦ç?ã‚’è„±å‡ºã™ã‚‹
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

foods = ['ãƒ”ã?¼ãƒãƒ³','ãƒˆã?ãƒˆ','ã‚»ãƒ­ãƒª']
foods.each do |food|
    print "#{food}ã¯ã™ãã§ã™ã‹?¼? =>"
    answer = ['ã¯ã?','ã?ã?ã?'].sample
    puts answer

    redo unless answer == 'ã¯ã?'
end

foods = ['ãƒ”ã?¼ãƒãƒ³','ãƒˆã?ãƒˆ','ã‚»ãƒ­ãƒª']
count = 0
foods.each do |food|
    print "#{food}ã¯ã™ãã§ã™ã‹?¼? =>"
    answer = 'ã?ã?ã?'
    puts answer

    count += 1
    redo if answer != 'ã¯ã?' && count < 2

    count = 0
end

### 5.2.1 è¦ç´?ã®è¿½åŠ?ã€å¤‰æ›´ã€å–å¾?

currencies = {'japan' => 'yen', 'us' => 'dollar', 'India' => 'rupee' }
currencies['italy'] = 'euro'
currencies
currencies['japan'] = 'å†?'
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

# ç ´å£Šçš„ãªå¤‰æ›´
a.upcase!
a
b
h

## ãƒ–ãƒ­ãƒ?ã‚¯ã§ä½œæ?ã€ç?´å£Šçš„ãªå¤‰æ›´
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
    puts 'ãƒãƒƒãƒã—ã¾ã—ãŸ'
else
    puts 'ãƒãƒƒãƒã—ã¾ã›ã‚“ã§ã—ãŸ'
end

'hello' !~ /\d{3}-\d{4}/

### 6.3.2

text = 'ç§ã?®èª•ç”Ÿæ—¥ã¯1977å¹´7æœ?17æ—¥ã§ã™ã€?'
m = /(\d+)å¹´(\d+)æœ?(\d+)æ—¥/.match(text)
m[1]
m[2]
m[3]

### 6.3.3

text = 'ç§ã?®èª•ç”Ÿæ—¥ã¯1977å¹´7æœ?17æ—¥ã§ã™ã€?'
m = /(?<year>\d+)å¹´(?<month>\d+)æœ?(?<day>\d+)æ—¥/.match(text)
m[:year]
m[:month]
m[:day]
m['year']
m[2]

text = 'ç§ã?®èª•ç”Ÿæ—¥ã¯1977å¹´7æœ?17æ—¥ã§ã™ã€?'
if /(?<year>\d+)å¹´(?<month>\d+)æœ?(?<day>\d+)æ—¥/ =~ text
    puts "#{year}/#{month}/#{day}"
end

### 6.3.4

text = 'ç§ã?®èª•ç”Ÿæ—¥ã¯1977å¹´7æœ?17æ—¥ã§ã™ã€?'
text =~ /(\d+)å¹´(\d+)æœ?(\d+)æ—¥/
$~
$&
$1
$2
$3

### 6.3.5

'1977å¹´7æœ?17æ—¥ 2021å¹´12æœ?31æ—¥'.scan(/(\d+)å¹´(\d+)æœ?(\d+)æ—¥/)

text = 'éƒµä¾¿ç•ªå·ã¯123-4567ã§ã?'
text[/\d{3}-\d{4}/]

text = '123-4567 456-7890'

text = 'ç§ã?®èª•ç”Ÿæ—¥ã¯1977å¹´7æœ?17æ—¥ã§ã™ã€?'
text[/(\d+)å¹´(\d+)æœ?(\d+)æ—¥/]
text[/(\d+)å¹´(\d+)æœ?(\d+)æ—¥/,3]
text[/(?<year>\d+)å¹´(?<month>\d+)æœ?(?<day>\d+)æ—¥/,:day]
text[/(?<year>\d+)å¹´(?<month>\d+)æœ?(?<day>\d+)æ—¥/,'day']

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


text = 'èª•ç”Ÿæ—¥ã¯1977å¹´7æœ?17æ—¥ã§ã?'
text.gsub(/(\d+)å¹´(\d+)æœ?(\d+)æ—¥/,'\1-\2-\3')
text.gsub(/(\d+)å¹´(\d+)æœ?(\d+)æ—¥/, "\\1-\\2-\\3")

text.gsub(/(\d+)å¹´(\d+)æœ?(\d+)æ—¥/) do
    "#{$1}-#{$2}-#{$3}"
end

text.gsub(/(?<year>\d+)å¹´(?<month>\d+)æœ?(?<day>\d+)æ—¥/,'\k<year>-\k<month>-\k<day>')

text.gsub(/(?<year>\d+)å¹´(?<month>\d+)æœ?(?<day>\d+)æ—¥/) do
    "#{$~[:year]}-#{$~[:month]}-#{$~[:day]}"
end

### 6.5.2

text = '03-1234-5678'

case text
when /^\d{3}-\d{4}$/
    puts 'éƒµä¾¿ç•ªå·ã§ã?'
when /^\d{4}\/\d{1,2}\/\d{1,2}\/$/
    puts 'æ—¥ä»˜ã§ã?'
when /^\d+-\d+-\d+$/
    puts 'é›»è©±ç•ªå·ã§ã?'
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
    \d{3}   # éƒµä¾¿ç•ªå·ã®å…ˆé?­3æ¡?
    -       # åŒºåˆ?ã‚Šæ–‡å­—ã?®ãƒã‚¤ãƒ•ãƒ³
    \d{4}   # éƒµä¾¿ç•ªå·ã®æœ«å°¾4æ¡?
/x
'123-4567' =~ regexp

regexp = /
    \d{3}   # éƒµä¾¿ç•ªå·ã®å…ˆé?­3æ¡?
    \       # åŠè§’ã‚¹ãƒšã?¼ã‚¹ã§åŒºåˆ?ã‚?
    \d{4}   # éƒµä¾¿ç•ªå·ã®æœ«å°¾4æ¡?
/x
'123 4567' =~ regexp

pattern = <<'TEXT'
    \d{3}   # éƒµä¾¿ç•ªå·ã®å…ˆé?­3æ¡?
    -       # åŒºåˆ?ã‚Šæ–‡å­—ã?®ãƒã‚¤ãƒ•ãƒ³
    \d{4}   # éƒµä¾¿ç•ªå·ã®æœ«å°¾4æ¡?
TEXT
regexp = Regexp.new(pattern, Regexp::EXTENDED)
'123-4567' =~ regexp

"HELLO\nBYE" =~ /Hello.Bye/im

regexp = Regexp.new('Hello.Bye',Regexp::IGNORECASE|Regexp::MULTILINE)
"HELLO\nBYE" =~ regexp

### 6.5.4

text = 'èª•ç”Ÿæ—¥ã¯1977å¹´7æœ?17æ—¥ã§ã?'
text =~ /(\d+)å¹´(\d+)æœ?(\d+)æ—¥/
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
    # èª­ã¿æ›¸ãå¯èƒ½ãªãƒ¡ã‚½ãƒ?ãƒ‰ã?®å®šç¾©
    attr_accessor :name

    def initialize(name)
        @name = name
    end

end
user = User.new('Alice')
user.name= 'Bob'
user.name

class User
    # èª­ã¿å–ã‚Šç”¨ã®ãƒ¡ã‚½ãƒ?ãƒ‰å®šç¾©
    attr_reader :name

    def initialize(name)
        @name = name
    end

end
user = User.new('Alice')
user.name

class User
    # æ›¸ãè¾¼ã¿ç”¨ã®ãƒ¡ã‚½ãƒ?ãƒ‰å®šç¾©
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
    # ‚±‚±‚©‚ç‰º‚Å’è‹`‚³‚ê‚½ƒƒ\ƒbƒh‚Íprivate
    private

    def hello
        'Hello!'
    end
end
user = User.new
# privateƒƒ\ƒbƒh‚È‚Ì‚ÅƒNƒ‰ƒX‚ÌŠO•”‚©‚çŒÄ‚Ño‚¹‚È‚¢
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
# Ruby 2.7ˆÈ~‚È‚çƒGƒ‰[‚É‚È‚ç‚È‚¢
user.hello

### 7.7.3

class User
    # ‚±‚±‚©‚ç‰º‚Íprivateƒƒ\ƒbƒh
    private

    def foo
    end

    # ‚±‚±‚©‚ç‰º‚Ípublicƒƒ\ƒbƒh
    public

    def bar
    end
end

### 7.7.4

class Product
    private

    # ‚±‚ê‚Íprivateƒƒ\ƒbƒh
    def name
        'A great movie'
    end
end

class DVD < Product
    def to_s
        # name‚ÍƒX[ƒp[ƒNƒ‰ƒX‚Ìprivateƒƒ\ƒbƒh
        "name: #{name}"
    end
end

dvd = DVD.new
# “à•”‚ÅƒX[ƒp[ƒNƒ‰ƒX‚Ìprivateƒƒ\ƒbƒh‚ğŒÄ‚ñ‚Å‚¢‚é‚ªƒGƒ‰[‚É‚Í‚È‚ç‚È‚¢
dvd.to_s

class Product
    def to_s
        # name‚Íí‚É"A great movie"‚É‚È‚éA‚Æ‚ÍŒÀ‚ç‚È‚¢
        "name: #{name}"
    end
end

private

def name
    ' A great movie'
end

class DVD < Product
    private

    # ƒX[ƒp[ƒNƒ‰ƒX‚Ìprivateƒƒ\ƒbƒh‚ğƒI[ƒo[ƒ‰ƒCƒh‚·‚é
    def name
        'An awesome film'
    end
end

product = Product.new
# ProductƒNƒ‰ƒX‚Ìnameƒƒ\ƒbƒh‚ªg‚í‚ê‚é
product.to_s

dvd = DVD.new
# ƒI[ƒo[ƒ‰ƒCƒh‚µ‚½DVDƒNƒ‰ƒX‚Ìnameƒƒ\ƒbƒh‚ªg‚í‚ê‚é
dvd.to_s

# name‚ğprivateƒƒ\ƒbƒh‚Æ‚µ‚Ä’è‹`‚·‚é
class Product
    private

    def name
        'A great movie'
    end
end

# name‚ğpaublicƒƒ\ƒbƒh‚Æ‚µ‚ÄƒI[ƒo[ƒ‰ƒCƒh‚·‚é
class DVD < Product
    public

    def name
        'An awesome film'
    end
end

# ProductƒNƒ‰ƒX‚Ìnameƒƒ\ƒbƒh‚ÍŒÄ‚Ño‚¹‚È‚¢
product = Product.new
product.name
# DVDƒNƒ‰ƒX‚Ìnameƒƒ\ƒbƒh‚ÍŒÄ‚Ño‚¹‚é
dvd = DVD.new
dvd.name

### 7.7.5 ƒNƒ‰ƒXƒƒ\ƒbƒh‚ğprivate‚É‚µ‚½‚¢ê‡

class User
    private

    # ƒNƒ‰ƒXƒƒ\ƒbƒh‚àprivateƒƒ\ƒbƒh‚É‚È‚éH
    def self.hello
        'Hello!'
    end
end
# ƒNƒ‰ƒXƒƒ\ƒbƒh‚Íprivateƒƒ\ƒbƒh‚É‚È‚ç‚È‚¢I
User.hello


class User
    class << self
        # class << self‚Ì\•¶‚È‚çƒNƒ‰ƒXƒƒ\ƒbƒh‚Å‚àprivate‚ª‹@”\‚·‚é
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
    # Œã‚©‚çƒNƒ‰ƒXƒƒ\ƒbƒh‚ğprivate‚É•ÏX‚·‚é
    private_class_method :hello
end
User.hello

## 7.7.6 ƒƒ\ƒbƒh‚Ì‰Â‹«‚ğ•Ï‚¦‚é•û–@‚ ‚ê‚±‚ê

class User
    # ‚¢‚Á‚½‚ñpublicƒƒ\ƒbƒh‚Æ‚µ‚Ä’è‹`‚·‚é
    def foo
        'foo'
    end

    def bar
        'bar'
    end

    # foo‚Æbar‚ğprivateƒƒ\ƒbƒh‚É•ÏX‚·‚é
    private :foo, :bar

    # baz‚Ípublicƒƒ\ƒbƒh
    def baz
        'baz'
    end
end

user = User.new
user.foo
user.bar
user.baz

# À‚Íƒƒ\ƒbƒh’è‹`‚à’l‚ğ•Ô‚µ‚Ä‚¢‚é
def foo
    'foo'
end

class User
    # ƒƒ\ƒbƒh’è‹`‚Ì–ß‚è’l :foo ‚ğprivateƒL[ƒ[ƒhiÀÛ‚Íƒƒ\ƒbƒhj‚Ìˆø”‚Æ‚·‚é
    # Œ‹‰Ê‚Æ‚µ‚Äfoo‚Íprivateƒƒ\ƒbƒh‚É‚È‚é
    private def foo
        'foo'
    end
end
user = User.new
user.foo

class User
    attr_accessor :name

    # ƒQƒbƒ^[ƒƒ\ƒbƒh‚ÆƒZƒbƒ^[ƒƒ\ƒbƒh‚ğ‚»‚ê‚¼‚êprivateƒƒ\ƒbƒh‚É‚·‚é
    private :name, :name=

    def initialize(name)
        @name = name
    end
end

user = User.new('Alice')
user.name
user.name = 'Bob'

class User
    # Ruby3.0‚Í1s‚Åprivate‚ÈƒAƒNƒZƒTƒƒ\ƒbƒh‚ğ’è‹`‚Å‚«‚é
    private attr_accessor :name

    def initialize(name)
        @name = name
    end
end
user = User.new('Alice')
user.name
user.name = 'Bob'

### 7.7.7 protectedƒƒ\ƒbƒh

class User
    # weight‚ÍŠO•”‚ÉŒöŠJ‚µ‚È‚¢
    attr_reader :name

    def initialize(name, weight)
        @name = name
        @weight = weight
    end

    def heavier_than?(other_user)
        other_user.weight < @weight
    end

    protected

    # protectedƒƒ\ƒbƒh‚È‚Ì‚Å“¯‚¶ƒNƒ‰ƒX‚©ƒTƒuƒNƒ‰ƒX‚Å‚ ‚ê‚ÎƒŒƒV[ƒo•t‚«‚ÅŒÄ‚Ño‚¹‚é
    def weight
        @weight
    end
end

alice = User.new('Alice', 50)
bob = User.new('Bob', 60)
# Alice‚ÍBob‚Ìweight‚ğæ“¾‚Å‚«‚È‚¢
alice.heavier_than?(bob)
bob.heavier_than?(alice)
alice.weight

### 7.8 ’è”‚É‚Â‚¢‚Ä‚à‚Á‚ÆÚ‚µ‚­

class Product
    DEFAULT_PRICE = 0
end

Product::DEFAULT_PRICE

class Product
    DEFAULT_PRICE = 0
    # ’è”‚ğprivate‚É‚·‚é
    private_constant :DEFAULT_PRICE
end
# private‚È‚Ì‚ÅƒNƒ‰ƒX‚ÌŠO•”‚©‚ç‚ÍQÆ‚Å‚«‚È‚¢
Product::DEFAULT_PRICE

class TrafficLight
    # ”z—ñCOLORS‚ğ’è”‚Æ‚µ‚Ä’è‹`‚µA‚»‚ÌŠe—v‘f‚à’è”‚Æ‚µ‚Ä“¯‚É’è‹`‚·‚é
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

# mapƒƒ\ƒbƒh‚Ì–ß‚è’l‚ğ’è”‚É‘ã“ü‚·‚é
NUMBERS = [1, 2, 3].map { |n| n * 10 }
NUMBERS

# O€‰‰Zq‚ğg‚Á‚½ğŒ•ªŠò‚ÌŒ‹‰Ê‚ğ’è”‚É‘ã“ü‚·‚é(windows?‚ÍÀsŠÂ‹«‚ÌOS‚ğ”»’è‚·‚é‰Ë‹ó‚Ìƒƒ\ƒbƒh)
NEW_LINE windows? ? "\r\n" : "\n"

## 7.8.1 ’è”‚ÆÄ‘ã“ü

class Product
    DEFAULT_PRICE = 0
    # Ä‘ã“ü‚µ‚Ä’è”‚Ì’l‚ğ‘‚«Š·‚¦‚é
    DEFAULT_PRICE = 1000
end

Product::DEFAULT_PRICE
Product::DEFAULT_PRICE = 3000
Product::DEFAULT_PRICE

# ƒNƒ‰ƒX‚ğ“€Œ‹‚·‚é
Product.freeze
Product::DEFAULT_PRICE = 5000

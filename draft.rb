# �v����ڎw���l�̂��߂�Ruby����[������Q��] �w�K

irb�Ńe�X�g����ꍇ�̃�������

## 2.8.4 �t�H�[�}�b�g���w�肵�ĕ�������쐬����

sprintf('%0.3f', 1.2)

'%0.3f'% 1.2

sprintf('%0.3f + %0.3f', 1.2, 0.48)

'%0.3f + %0.3f' % [1.2, 0.48]

## 2.8.5 ���̑��A������쐬�̂��낢��

123.to_s

[10, 20, 30].join

'Hi!' * 10

String.new('hello')

'abc' 'def'
'abc''def'

"\u3042\u3044\u3046"

puts "\u0041"

?a

## 2.9.1 ��w���q��p�����������e����

0b11111111

0377
0o377

0xff

0d255

## �r�b�g���Z

sprintf '%#b', (0b1010 & 0b1100)
sprintf '%#b', (0b1010 | 0b1100)
sprintf '%#b', (0b1010 ^ 0b1100)
sprintf '%#b', (0b1010 >> 1)
sprintf '%#b', (0b1010 << 1)
sprintf '%#b', ~0b1010

## �w���\��

2e-3

## ���l�N���X�̂��ꂱ��

10.class
1.5.class

r = 2/3r
r.class

r = '2/3'.to_r

c = 0.3 - 0.5i
c.class

c = '0.3-0.5i'.to_c
c.class

## 2.10.2 �D�揇�ʂ��Ⴂand�Aor�Anot

def greet(country)
    country or return 'country����͂��Ă�������'

    if country == 'japan'
        '����ɂ���'
    else
        'Hello'
    end
end
greet(nil)
greet('japan')

## 2.10.3 unless��

status = 'error'
unless status == 'ok'
    '�Ȃɂ��ُ킪����܂�'
end


status = 'error'
message =
    unless status == 'ok'
        '�Ȃɂ��ُ킪����܂�'
    else
        '����ł�'
    end
end

status = 'error'
unless status == 'ok' then
    '�Ȃɂ��ُ킪����܂�'
end

## 2.10.4 case��

country = 'italy'

case country
when 'japan'
    '����ɂ���'
when 'us'
    'Hello'
when 'italy'
    'Ciao'
else
    '???'
end

### when�߂ɕ����̒l���w�肷��

country = '�A�����J'

case country
when 'japan','���{'
    '����ɂ���'
when 'us','�A�����J'
    'Hello'
when 'italy','�C�^���A'
    'Ciao'
else
    '???'
end

## 2.11.1�f�B�t�H���g�l�t���̈���

def greet(country='japan')
    if country == 'japan'
        '����ɂ���'
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

## ?�ŏI��郁�\�b�h

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

## �G���h���X���\�b�h��`�i1�s���\�b�h��`�j

def greet= 'Hello!'
def add(a, b) = a + b

## 2.12.3 ���ƕ�

b = def foo; end

## 2.12.5 �Q�Ƃ̊T�O�𗝉�����

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

## 2.12.7 require��require_relative

require 'date'
Date.today

## 2.12.8 puts���\�b�h�Aprint���\�b�h�Ap���\�b�h�App���\�b�h

s = "abc\ndef"
puts s
print s
p s

a = [1, 2, 3]
puts a
print a
p a

## 4.2 �z��

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

## 4.2.2 �z����g�������d���

a, b = [1, 2]
c, d = [10]

e, f = [100, 200, 300]

quo_rem = 14.divmod(3)
"�� =#{quo_rem[0]}, �]�� =#{ quo_rem[1]}"

quotient, remainder = 14.divmod(3)
"�� =#{quotient}, �]�� =#{remainder}"

numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
    sum += n
end
sum

## 4.3.4 �u���b�N�p�����[�^�ƃu���b�N���̕ϐ�

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

### 4.4.5 & �ƃV���{�����g���Ă����ƊȌ��ɏ���

['ruby','java','python'].map(&:upcase)
[1, 2, 3, 4, 5, 6].select(&:odd?)

## 4.5 �͈�

(1..5).class
(1...5).class

### 4.5.1 �z��╶����̈ꕔ�𔲂��o��

a = [1, 2, 3, 4, 5]
a[1..3]

a = 'abcdef'
a[1..3]

### 4.5.2 n�ȏ�m�ȉ��An�ȏ�m�����̔��������

def liquid?(temperature)
    (0...100).include?(temperature)
end
liquid?(-1)
liquid?(0)
liquid?(99)
liquid?(100)

### 4.5.3 case���Ŏg��

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

### 4.5.4 �l���A������z����쐬����

(1..5).to_a
(1...5).to_a
('a'..'e').to_a
('a'...'e').to_a
('bad'..'bag').to_a
('bad'...'bag').to_a

[*1..5]
[*1...5]

### 4.5.5 �J��Ԃ��������s��

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

## 4.6 RGB�ϊ��v���O�������쐬����

## 4.7.1 ���܂��܂ȗv�f�̎擾���@

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

### 4.7.2 ���܂��܂ȗv�f�̕ύX���@

a = [1,2,3]
a[-3] = -10
# �G���[�ƂȂ�p�^�[��
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
# ���݂��Ȃ��l���w�肷��� nil ���Ԃ�
a.delete(2)

### 4.7.3 �z��̘A��

concat�͔j��I

a = [1]
b = [2,3]
a.concat(b)
a
b

+ �͐V�����z���Ԃ��i��j��j

a = [1]
b = [2,3]
a + b
a
b

### 4.7.4 �z��̘a�W���A���W���A�ϏW��

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

### 4.7.5 ���d����Ŏc��̑S�v�f��z��Ƃ��Ď󂯎��A�܂��͖�������

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

### 4.7.6 1�̔z��𕡐��̈�����when�߂̏����Ƃ��ēW�J����

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

jp = ['japan', '���{']
country = '���{'
case country
when *jp
    '����ɂ���'
end

# irb�Ńe�X�g����悤�̃�������

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
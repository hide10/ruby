def some_method
  <<-TEXT
    ����̓q�A�h�L�������g�ł��B
    <<-���g���ƍŌ�̎��ʎq���C���f���g�����邱�Ƃ��ł��܂��B
  TEXT
end

def some_method
    <<~TEXT
        \  �e�s�̐擪�ɔ��p�X�y�[�X��2��������܂��B
        \  ���̎��s���̓o�b�N�X���b�V���Ŏw�肵�܂��B
    TEXT
end

name = 'Alice'
a = <<TEXT
�悤�����A#{name}����I
�ȉ��̃��b�Z�[�W���������������B
TEXT

# ���W�J������

name = 'Alice'
a = <<'TEXT'
�悤�����A#{name}����I
�ȉ��̃��b�Z�[�W���������������B
TEXT

# ���W�J�L����

name = 'Alice'
a = <<"TEXT"
�悤�����A#{name}����I
�ȉ��̃��b�Z�[�W���������������B
TEXT
puts a

# ���s�L��(�N�I�[�g�Ȃ��A�_�u���N�I�[�g)

a = <<TEXT
����ɂ���\n���悤�Ȃ�
TEXT
puts a

# ���s����(���ʎq���V���O���N�I�[�g�ň͂�)

a = <<'TEXT'
����ɂ���\n���悤�Ȃ�
TEXT
puts a

# �q�A�h�L�������g�𒼐ڈ����Ƃ��ēn��

a = 'Ruby'
a.prepend(<<TEXT)
Java
Python
TEXT
puts a

# �q�A�h�L�������g�ō쐬����������ɑ΂��Ē���upcase���\�b�h���Ăяo��

b = <<TEXT.upcase
Hello,
Good-bye.
TEXT
puts b

# �q�A�h�L�������g��2�����Ɏg���Ĕz������

c = [<<TEXT1,<<TEXT2]
Alice
Bob
TEXT1
Matz
Jnchito
TEXT2

puts c[0]
puts c[1]

def some_method
  <<-TEXT
    これはヒアドキュメントです。
    <<-を使うと最後の識別子をインデントさせることができます。
  TEXT
end

def some_method
    <<~TEXT
        \  各行の先頭に半角スペースを2文字入れます。
        \  この時行頭はバックスラッシュで指定します。
    TEXT
end

name = 'Alice'
a = <<TEXT
ようこそ、#{name}さん！
以下のメッセージをご覧ください。
TEXT

# 式展開無効版

name = 'Alice'
a = <<'TEXT'
ようこそ、#{name}さん！
以下のメッセージをご覧ください。
TEXT

# 式展開有効版

name = 'Alice'
a = <<"TEXT"
ようこそ、#{name}さん！
以下のメッセージをご覧ください。
TEXT
puts a

# 改行有効(クオートなし、ダブルクオート)

a = <<TEXT
こんにちは\nさようなら
TEXT
puts a

# 改行無効(識別子をシングルクオートで囲む)

a = <<'TEXT'
こんにちは\nさようなら
TEXT
puts a

# ヒアドキュメントを直接引数として渡す

a = 'Ruby'
a.prepend(<<TEXT)
Java
Python
TEXT
puts a

# ヒアドキュメントで作成した文字列に対して直接upcaseメソッドを呼び出す

b = <<TEXT.upcase
Hello,
Good-bye.
TEXT
puts b

# ヒアドキュメントを2つ同時に使って配列を作る

c = [<<TEXT1,<<TEXT2]
Alice
Bob
TEXT1
Matz
Jnchito
TEXT2

puts c[0]
puts c[1]

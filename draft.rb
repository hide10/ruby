# irbでテストするようのメモ書き

## 2.8.4 フォーマットを指定して文字列を作成する

sprintf('%0.3f', 1.2)

'%0.3f'% 1.2

sprintf('%0.3f + %0.3f', 1.2, 0.48)

'%0.3f + %0.3f' % [1.2, 0.48]

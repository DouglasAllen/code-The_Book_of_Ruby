```ruby
# ch04 The Book of Ruby - http://www.sapphiresteel.com

arr = []

arr[0] = [0]
arr[1] = ['one']
arr[3] = %w(a b c)

p(arr)

arr2 = ['h', 'e', 'l', 'l', 'o', ' ', 'w', 'o', 'r', 'l', 'd']

arr2[0] = 'H'
arr2[2, 2] = 'L', 'L'
arr2[4..6] = 'O', '-', 'W'
arr2[-4, 4] = 'a', 'l', 'd', 'o'
p(arr2)

```
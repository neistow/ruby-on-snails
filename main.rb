class Integer
  def to_a(base = 2)
    return to_s(base).to_str.split("")
  end
end


new_books = {}
old_books = {
  'Design Patterns in Ruby' => ['Russ Olsen'],
  'Eloquent Ruby' => ['Russ Olsen'],
  'The Well-Grounded Rubyist' => ['David A. Black'],
  'The Ruby Programming Language' => ['David Flanagan', 'Yukihiro Matsumoto'],
  'Metaprogramming Ruby 2' => ['Paolo Perrotta'],
  'Ruby Cookbook' => ['Lucas Carlson', 'Leonard Richardson'],
  'Ruby Under a Microscope' => ['Pat Shaughnessy'],
  'Ruby Performance Optimization' => ['Alexander Dymo'],
  'The Ruby Way' => ['Hal Fulton', 'Andre Arko']
}.each do |key|
  key[1].each do |val|
    if new_books.key?(val)
      new_books[val] += 1
    else
      new_books[val] = 1
    end
  end
end

puts new_books.sort_by { |x| x[1]}

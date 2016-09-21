class Foobar

  def self.baz(a)
    # Class method
    # Call with `Foobar.baz`
    new_arr = Array.new
    new_arr = a.map { |x| x.to_i + 2 }
    new_arr = new_arr.values_at(* a.each_index.select {|x| x if new_arr[x] < 10 && x.odd?})
    new_arr = new_arr.uniq
    new_arr = new_arr.inject(0){|sum,x| sum + x }
  end

  def foo(b)
    # Instance method
    # Call with foobar_instance.foo
  end

  def bar(c)
    # Instance method
    # Call with foobar_instance.bar
  end
end



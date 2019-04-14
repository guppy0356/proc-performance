require 'benchmark_driver'

Benchmark.driver do |x|
  x.report 'Proc#1', %{
    object = Proc.new { |a:, **|  }
    object.call(a: 100, b: 200, c: 300, d: 400, e: 500)
  }
  x.report 'Proc#2', %{
    object = Proc.new { |a:, b:, c:, d:, e:|  }
    object.call(a: 100, b: 200, c: 300, d: 400, e: 500)
  }
  x.report 'Proc#3', %{
    object = Proc.new { |hash|  }
    object.call(a: 100, b: 200, c: 300, d: 400, e: 500)
  }
  x.report 'lambda#1', %{
    object = -> (a:, **) {  }
    object.call(a: 100, b: 200, c: 300, d: 400, e: 500)
  }
  x.report 'lambda#2', %{
    object = -> (a:, b:, c:, d:, e:) {  }
    object.call(a: 100, b: 200, c: 300, d: 400, e: 500)
  }
  x.report 'lambda#3', %{
    object = -> (hash) {  }
    object.call(a: 100, b: 200, c: 300, d: 400, e: 500)
  }
  x.compare!
end

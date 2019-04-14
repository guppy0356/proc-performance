# Introduction

## Proc #1

```
object = Proc.new { |a:, **|  }
object.call(a: 100, b: 200, c: 300, d: 400, e: 500)
```

## Proc #2

```
object = Proc.new { |a:, b:, c:, d:, e:|  }
object.call(a: 100, b: 200, c: 300, d: 400, e: 500)
```

## Proc #3

```
object = Proc.new { |hash|  }
object.call(a: 100, b: 200, c: 300, d: 400, e: 500)

```

## lambda #1
```
object = -> (a:, **) {  }
object.call(a: 100, b: 200, c: 300, d: 400, e: 500)
```

## lambda #2
```
object = -> (a:, b:, c:, d:, e:) {  }
object.call(a: 100, b: 200, c: 300, d: 400, e: 500)
```

## lambda #3
```
object = -> (hash) {  }
object.call(a: 100, b: 200, c: 300, d: 400, e: 500)
```

# Comparison

```
lambda#3:    652854.0 i/s 
  Proc#3:    582522.5 i/s - 1.12x  slower
lambda#2:    283727.6 i/s - 2.30x  slower
  Proc#2:    222444.5 i/s - 2.93x  slower
lambda#1:    218327.1 i/s - 2.99x  slower
  Proc#1:    179624.0 i/s - 3.63x  slower
```
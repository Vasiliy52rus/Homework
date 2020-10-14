//
//  main.swift
//  L1 Князев Василий
//
//  Created by Vasiliy Knyazev on 10/14/20.
//

import Foundation

// 1. Решить квадратное уравнение
let a:Float = 2
let b:Float = 2
let c:Float = 2
var x1:Float
var x2:Float
var d:Float
var discriminant:Float
d = b * b - (4 * a * c)
if(d >= 0){
    discriminant = sqrt(d)
    x1 = (-b + discriminant) / (2 * a)
    x2 = (-b - (discriminant)) / (2 * a)
    print(x1, x2)
}else if(d < 0){
    d = ((4 * a * c) - pow(b,2)) / (2 * a)
    print(d)
}

// 2. Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.
var v:Double = 5
var n:Double = 7
var m:Double = 4
var p:Double
var h:Double = 5
var s:Double
p = v + n + m
m = sqrt(pow(v,2) + pow(n,2))
s = 0.5 * m * h
print("Периметр треугольника равен \(p)")
print("Гипотенуза треугольника равна \(m)")
print("Площадь треугольника равна \(s)")

// 3. Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.
var deposit:Float = 1000
var percent:Float = 10
percent = percent / 100
var result1 = deposit + (deposit * percent)
var result2 = result1 + (result1 * percent)
var result3 = result2 + (result2 * percent)
var result4 = result3 + (result3 * percent)
var result5 = result4 + (result4 * percent)
var counter = 1
var time = [result1, result2,result3, result4, result5]
for i in time{
    print("Чрезе \(counter) год/лет сумма вклада будет равна \(i)")
    counter += 1
}

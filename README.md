# Homework
//
//  main.swift
//  L2 Князев Василий
//
//  Created by Vasiliy Knyazev on 10/18/20.
//

import Foundation

// Написать функцию, которая определяет, четное число или нет.

func func1 (value: Int) {
    let y1 = value
    let y2 = y1%2
    _ = y2 == 0 ? print("even") : print("odd")
}

func1(value: 6)


// Написать функцию, которая определяет, делится ли число без остатка на 3.

func func2(value: Int) {
    let x1 = value
    let x2 = x1 % 3
    _ = x2 == 0 ?
        print("true") : print("false")
}

func2(value: 7)

// Создать возрастающий массив из 100 чисел.

var increasingArray = [Int]()
var i = 0

while i<100 {
    increasingArray.append(i+1)
    i += 1
}
print(increasingArray)

// Удалить из массива все четные числа и все числа, которые не делятся на 3.

var array = [1,2,3,4,5,6,7,8,9]
var index = 0

while array.count > 0 && index < array.count {
    if array[index] % 3 != 0 {
        array.remove(at: index)
        index -= 1
    }
    index += 1
}


// Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 50 элементов. Числа Фибоначчи определяются соотношениями Fn=Fn-1 + Fn-2.

func fibonacciArray(_ n: Int) -> [Double] {
    var fibonacci: [Double] = [0,1]
    (2...n).forEach{ i in
        fibonacci.append(fibonacci[i - 1] + fibonacci[i - 2])
    }
    return fibonacci
}
print(fibonacciArray(50))


// Заполнить массив из 50 элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу.

//Не осилил((((

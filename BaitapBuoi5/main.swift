//
//  main.swift
//  BaitapBuoi5
//
//  Created by Chu Du on 27/05/2021.
//

import Foundation

// MARK: - Bài 1:
/*
 Hai anh em nhà cừu không có gì chơi, thằng anh mới đố thằng em: “Tao cho mày 1 số, nếu nó chẵn thì chia đôi, nó lẻ thì nhân 3 cộng 1. Đố mày biết sau bao nhiêu phép tính thì nó ra 1 ???”.

 Ông em ngẩn tò te không biết trả lời như nào. Bạn hãy giúp chú bé 1 tay với. In ra đáp án hoặc “-1” nếu ko có số nào hợp lệ.
 */

func bai1() {
    print("Nhập vào một số:", terminator: " ")
    let numString = readLine()
    
    guard let numString = numString, let number = Int(numString) else {
        return
    }
    if number < 1 {
        print(-1)
    } else {
        var num = number
        var count = 0
        while num != 1 {
            if num % 2 == 0 {
                num /= 2
                count += 1
            } else {
                num = num * 3 + 1
                count += 1
            }
        }
        print(count)
    }
}

print("Bài 1")
bai1()

// MARK: - Bài 2: Kiểm tra tính đối xứng của một số (số được nhập từ bàn phím, yêu cầu dùng if let hoặc guard let để kiểm tra giá trị nhập vào có tồn tại không).
func soDao(_ num:Int) -> Int {
    var number = num
    var newNumber = 0
    var temp = 0
    while number != 0 {
        temp = number % 10
        newNumber = newNumber * 10 + temp
        number /= 10
    }
    return newNumber
}

func soDoiXung() {
    print("Nhập vào một số:", terminator: " ")
    let numberString = readLine()
    
    guard let numberString = numberString, let number = Int(numberString) else {
        return
    }
    if number == soDao(number) {
        print("\(number) là số đối xứng")
    } else {
        print("\(number) không là số đối xứng")
    }
}

print("Bài 2")
soDoiXung()

// MARK: - Bài 3:
/*
 Viết chương trình tính tiền cước TAXI. Biết rằng:

     – Km đầu tiên là 5000đ

     – Từ Km thứ 2 đến Km thứ 30 là 4000đ

     – Nếu lớn hơn 30Km thì mỗi Km thêm ra sẽ phải trả là 3000đ

     – Hãy nhập số Km sau đó in ra số tiền phải trả.
 */

func tinhCuocTaxi() {
    print("Số km đã đi:", terminator: " ")
    let numberString = readLine()
    
    guard let numberString = numberString, let number = Float(numberString) else {
        return
    }
    var soTien:Float = 0
    
    if number <= 1 {
        soTien = number * 5000
        print("\(Int(soTien))đ")
    } else {
        if number <= 30 {
            soTien = 5000 + (number - 1) * 4000
            print("\(Int(soTien))đ")
        }
        else {
            soTien = 5000 + 30 * 4000 + (number - 30) * 3000
            print("\(Int(soTien))đ")
        }
    }
}

print("Bài 3")
tinhCuocTaxi()

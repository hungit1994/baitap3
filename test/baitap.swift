//
//  baitap.swift
//  test
//
//  Created by User on 1/2/20.
//  Copyright © 2020 User. All rights reserved.
//

import Foundation
//
//  chuabaitap.swift
//  chuabaitap
//
//  Created by User on 10/17/19.
//  Copyright © 2019 User. All rights reserved.
//

import Foundation

//func kiemTraNamNhuan() {
//    print("Nhap nam:")
//    let year = Int(readLine()!)!
//
//
//    if year % 100 == 0 {
//        if year % 400 == 0 {
//            print("\(year) la nam nhuan")
//        } else{
//            print("\(year) không la nam nhuan")
//        }
//    } else if year % 4 == 0 {
//        print("\(year) la nam nhuan")
//    } else{
//        print("\(year) không la nam nhuan")
//    }
//}



//Bai tap 2
//func congGiay()
//{
//    print("Nhap gio: ")
//    var gio = Int(readLine()!)!
//    print("Nhap phut: ")
//    var phut = Int(readLine()!)!
//    print("Nhap giay: ")
//    var giay = Int(readLine()!)!
//    print("Nhap so giay cong them: ")
//    var x = Int(readLine()!)!
//
//    print("Thời điểm ban đầu: \(gio) : \(phut) : \(giay) ")
//
//    var tongGiay = gio*3600 + phut*60 + giay + x
//
//    gio = tongGiay / 3600 // tính giờ
//    tongGiay = tongGiay % 3600 // số giây còn lại sau khi tính giờ
//    phut = tongGiay / 60 // tính phút
//    giay = tongGiay % 60 // số giây còn lại
//
//    if gio >= 24 {
//        gio = gio - 24
//        print("Thời điểm sau \(x) giây là: \(gio):\(phut):\(giay) ngày hôm sau")
//    } else {
//        print("Thời điểm sau \(x) giây là: \(gio):\(phut):\(giay)")
//    }
//
//}
//Bai 3
//1, Sắp xếp mảng số nguyên theo chiều tăng dần và giảm dần
//
//2, Viết chương trình nhập vào một số nguyên dương không lớn hơn 10000, in ra màn hình chữ số lớn thứ nhì có trong số đó (ví dụ nhập n = 1356 in ra 5). Trong trường hợp không có số lớn thứ nhì, thì in ra số lớn nhất.
//func giaiThua(){
//    // nhập m từ bàn phím
//    print("Nhap m:")
//    let m = Int(readLine()!)!
//    // khai báo biến n để kiểm tra n
//    var n: Int = 0
//    // khai báo biến giaithua để tính n!
//    var giaithua = 1
//
//    while(giaithua <= m){
//        n = n+1
//        // có thể dùng for tính giaithua
//        // nếu dùng for thì trước khi lặp, gán lại giá trị cho giaithua = 1
//        giaithua = 1
//        for i in 1...n{
//            giaithua = giaithua*i
//        }
//        // tận dụng n tăng lên 1 để tính giai thừa
////        giaithua = giaithua*n
//    }
//    print("so n can tim la: \(n)")
//}

// cách 2
//func timNBeNhat(){
//    print("Nhập m: ")
//    let m = Int(readLine()!)!
//    var gt = 1
//
//    for i in 1...m {
//        gt *= i
//        if gt > m {
//            print("Số n bé nhất cần tìm là \(i)")
//            break
//        }
//    }
//}

//bai 3 tim so lon thu 2 trong mang so nguyen
//func soLonThuHai(){
//    let numbers: [Int] = [5, 3, 2, 7, 11, 1]
//
//    var max1 = numbers[0] // so lon thu nhat
//    var max2 = numbers[0] // so lon thu hai
//
//    for i in numbers{
//
//        if max1 < i {  // neu so lon thu nhat khong con la so lon thu nhat ( do nho hon i )
//            max2 = max1
//            max1 = i
//        } else if max2 < i && i < max1{
//            max2 = i
//        }
//
//
//    }
//    print("So lon thu 2: \(max2)")
//}
// bai4 tra ve vi tri dau tien cua so le, vi tri cuoi cung cua so chan trong mang bat ki

func viTri(){
    let numbers = [2, -3, 0, 6, 31, 24]

    var viTriLeDauTien: Int = 0
    var viTriChanCuoiCung: Int = 0

    for i in 0..<numbers.count{
        if numbers[i] % 2 != 0 {
            viTriLeDauTien = i
            break
        }
    }

    for i in (0..<numbers.count).reversed(){
        if numbers[i] % 2 == 0{
            viTriChanCuoiCung = i
            break
        }
    }

    print("Vị trí lẻ đầu tiên: \(viTriLeDauTien)")
    print("Vị trí chẵn cuối cùng: \(viTriChanCuoiCung)")
}

//cach2
//func viTri(){
//    let numbers = [2, -4, 0, 6, 32, 24]
//
////    var viTriLeDauTien: Int = 0
////    var viTriChanCuoiCung: Int = 0
////
////    for i in 0..<numbers.count{
////        if numbers[i] % 2 != 0 {
////            viTriLeDauTien = i
////            break
////        }
////    }
////
////    for i in (0..<numbers.count).reversed(){
////        if numbers[i] % 2 == 0{
////            viTriChanCuoiCung = i
////            break
////        }
////    }
////
////    print("Vị trí lẻ đầu tiên: \(viTriLeDauTien)")
////    print("Vị trí chẵn cuối cùng: \(viTriChanCuoiCung)")
//
//    // khai báo biến soLe, soChan là kiểu optional
//    var soLe: Optional<Int> = nil // có thể viết cách khác: var soLe: Int? = nil
//    var soChan: Optional<Int> = nil // có thể viết cách khác: var soChan: Int? = nil
//
//    for (index, number) in numbers.enumerated() {
//        if soLe == nil && number % 2 != 0 { // nếu số lẻ không có giá trị và number lại không chia hết cho 2 thì soLe được gán bằng index + 1
//            // do đề bài tìm vị trí lẻ đầu tiên, nên nếu tìm được thì chuyển sang kiểm tra điều kiện bên dưới
//            soLe = index + 1
//        } else if number % 2 == 0 { // nếu number là số lẻ thì soChan được gán bằng index + 1
//            soChan = index + 1
//        }
//    }
//    if soLe == nil { // nếu soLe == nil tức là k có số lẻ
//        print("Mang khong co so le")
//    } else {
//        print("So le dau tien o vi tri: \(soLe!)")
//    }
//    if soChan == nil { // nếu soChan == nil tức là k có số chan
//        print("Mang khong co so chan")
//    } else {
//        print("so chan cuoi cung o vi tri: \(soChan!)")
//    }
//}
//bai5 in mot chuoi cho truoc theo thu tu nguoc lai ( vi du hello in thanh olleh)

//func daoMotChuoi(){
//    let chuoi = "Hoa Phuong Do"
//    var daoChuoi: [Character] = []
//    //cach1
//    for i in chuoi {
//        daoChuoi.insert(i, at: 0)
//
//    }
//
//
//    print(String(daoChuoi))
//
//}
//func daoMotChuoi(){
//let chuoi = "Hoa Phuong Do"
//var daoChuoi: [Character] = []
//// cách 2
//var chuoiB = String() //khai báo chuỗi rỗng
//// duyệt kí tự của một chuỗi string
//for i in chuoi {
//    chuoiB = String(i) + chuoiB
//    print("chuoiB: --> \(chuoiB)")
//}
//print(chuoiB)

//dao chuoi hoa thanh thuong,thuong thanh hoa
//func daoChuoi2() {
//    print("Nhập vào chuỗi bất kì")
//    let cau = String(readLine()!)
//    var result = ""
//    for i in cau {
//        let s = String(i)
//        let lowerCase = s.lowercased()
//        let upperCase = s.uppercased()
//        result += (s == lowerCase) ? upperCase : lowerCase // sử dụng toán tử 3 ngôi, cách viết gọn của hàm if bên dưới
//
////        if s == lowerCase {
////            result += upperCase
////        } else{
////            result += lowerCase
////        }
//    }
//    print("Câu sau khi đảo ngược kí tự: \(result) ")
//    print()
//}

//bai7 ve tam giac
//cach1
//func veTamGiac() {
//    print("Nhập chiều cao tam giác, chiều cao > 1: ")
//    let h = Int(readLine()!)!
//
//    for i in 0..<h {
//        for j in 0..<2*h{
//            if j >= (h-1-i) && j <= (h-1+i){
//                print("*",terminator:"")
//
//            } else {
//                print(" ",terminator:"")
//
//            }
//        }
//        print()
//    }
//
//}
//cach2
//func ve_tam_giac_can(N: Int) {
//    for i in 0..<N {
//        let space_str = String(repeating: "a", count: 2 * (N - i - 1))
//        let star_str = String(repeating: "* ", count: 2 * i + 1)
//
//        print(space_str + star_str)
//    }
//}
// ve chu X
//func veChuX (){
//    print("Nhập chiều cao h (h > 1 và h lẻ):")
//    let h = Int(readLine()!)!
//
//    if h < 0 || h % 2 == 0 {
//        print("Chiều cao không hợp lệ")
//        veChuX()
//    } else {
//        for i in 0..<h {
//            for j in 0..<h {
//                if i==j || i+j==h-1 {
//                    print("*" , terminator:"")
//                }
//                else {
//                    print(" ", terminator:"")
//                }
//            }
//            print()
//        }
//    }
//}















































































import UIKit

// celcius to fahrenheit
class CelcToFahr {
    var celcius: Double?
    
    func changing(celcius: Double) -> Double {
        let fahrenheit = (celcius * 1.8) + 32
        
        print("\(celcius) celcius = \(fahrenheit) fahrenheit")
        return fahrenheit
        
    }
}

var fahrenheit = CelcToFahr()
fahrenheit.changing(celcius: 35)

//dikdörtgen çevresi

class Rectangle {
    
    var long: Int?
    var short: Int?
    
    func perimeter(long: Int, short: Int){
        let perimeter = 2 * (long + short)
        print("Dikdörtgenin çevresi = \(perimeter)")
    }
}
var result = Rectangle()
result.perimeter(long: 7, short: 4)

// faktoriyel hesaplama

func factorial(number : Int) -> Int {
    
        var x = 1
        for y in 1...number {
            x *= y
        }
        return x
    }
    print ("faktoriyel = \(factorial(number: 7))")

//kelimedeki a harfi sayıcı

func CounterA(word: String) {
    
    var result = word.filter{$0 == "a"}.count
    print("a harfi sayısı: \(result)")

}

CounterA(word: "Eskişehirde yaşamak çok güzel.")

// kenar sayısına göre iç açılar toplamı

class Edges {
    var edge: Int?
    
    func sumOfEdges(edge: Int) -> Int {
        if edge > 2 {
            let islem = ((edge - 2) * 180 )
            print("İc açı toplamı : \(islem)")
            return islem
        return edge
        }else{
            print("Minimum 3 kenar girilmelidir")
            return edge
        }
    }
}
var sonuc = Edges()
sonuc.sumOfEdges(edge: 5)
sonuc.sumOfEdges(edge: 2)


//maas hesabı

class SalaryCalculator {
    var day: Int?
    
    func salaryCalculate(day: Int) -> Int {
        let account = day * 80
        if account > 1600 {
            let shift = (day - 20) * 160 + 1600
            print("Mesai yapılırsa \(shift)₺ kazanırsınız.")
            return shift
        }else {
            print("Mesaisiz Kazanılan ücret \(account)₺'dir.")
            return account
        }
    }
}
var salary = SalaryCalculator()
salary.salaryCalculate(day: 21)

salary.salaryCalculate(day: 12)

// kota

class QuotaCalculate{
func calculateQuotaExcess(quotaValue:Int) -> Int {
       var defaultQuota = 50
       var defaultQuotaPrice = 100
       var quotaExcessPricePerGB = 4
       
       var userQuotaPrice = 0
       
       if quotaValue > defaultQuota {
           var excessQuotaGB = quotaValue - defaultQuota
           var excessQuotaPrice = excessQuotaGB * quotaExcessPricePerGB
           userQuotaPrice = excessQuotaPrice + defaultQuotaPrice
       } else {

       userQuotaPrice = defaultQuotaPrice
       }
       
       return userQuotaPrice
   }
   
}

var quotaValue = QuotaCalculate()

var quotaExcessResult = quotaValue.calculateQuotaExcess(quotaValue: 300)
print("Sonuç : \(quotaExcessResult)")


// 
import Foundation

class DataManager {
    var names: [String]
    var surnames: [String]
    var mails: [String]
    var phones: [String]
    var persons = [Person]()
    
    init() {
        names = ["Petyz", "Vasyz", "Kasyz", "Mudyz", "Dufyz", "Dufyz","Wefyz","Bsfyz","Qafyz","Lufyz"]
        surnames = ["Sdvgamedov"," Utgamedov", "Erasgamedov","Oburgamedov", "Sdvgamedov", "Tygamedov", "Vsdgamedov","Zasgamedov","Jkegamedov","Nurmagamedov"]
        mails = ["Petyz@mail.ru", "Vasyz@mail.ru", "Kasyz@mail.ru", "Mudyz@mail.ru", "Dufyz@hotmail.ru", "Dufyz@mail.ru","Wefyz@mail.ru","Bsfyz@mail.ru","Qafyz@mail.ru","Lufyz@gmail.com"]
        phones = ["23049824", "2341245", "423412", "430234", "34-3i43", "123094","234-12","11111","2323042","34234918"]
        
        var count = names.count
        for _ in 0..<names.count {
            let name = names.remove(at: Int.random(in: 0..<count))
            let surname = surnames.remove(at: Int.random(in: 0..<count))
            let phone = phones.remove(at: Int.random(in: 0..<count))
            let mail = mails.remove(at: Int.random(in: 0..<count))
            persons.append(Person(name: name, surname: surname, mail: mail, phone: phone))
            count -= 1
        }
    }
    
    func getPersons() -> [Person] {
        return persons
    }
}

/*:
 ## Упражнение - приведение типов и их контроль
 
 Создайте коллекцию типа [Any], включающую несколько вещественных чисел, целых, строк и булевых значений.  Распечатайте содержимое коллекции.
 */
/* enum switchIs {
    case isOn = true
    case isOff = false
} */

let arrayOfThings: [Any] = [12, 3, 2.3, 4.5, "Begin", "Stop", "Repeat", true, false]
for element in arrayOfThings {
    print(element)
}


/*:
 Пройдите по всем элементам коллекции.  Для каждого целого, напечайте "Целое число " и его значение.  Повторите то же самое для вещественных чисел, строк и булевых значений.
 */

for element in arrayOfThings {
    if let elementInt = element as? Int {
        print("Integer is \(elementInt)")
    } else if let elementDouble = element as? Double {
        print("Double is \(elementDouble)")
    } else if let elementString = element as? String {
        print("String is \(elementString)")
    } else if let elementBool = element as? Bool {
        print("Bool is \(elementBool)")
    }
}


/*:
 Создайте словарь [String : Any], где все значения — это смесь вещественных и целых чисел, строк и булевых значений.  Выведите крассиво на консоль пары ключ/значения для всех элементов коллекции.
 */
let dictionaryAny: [String: Any] = ["One": 12, "Two": 33, "Three": 4.5, "Four": 3.4, "Five": "11", "Six": "Grammar", "Seven": true, "Eight": false]
for key in dictionaryAny.keys {
    if let elementInt = dictionaryAny[key] as? Int {
        print("Ключ: \(key), Значение: \(elementInt)")
    } else if let elementDouble = dictionaryAny[key] as? Double {
        print("Ключ: \(key), Значение: \(elementDouble)")
    } else if let elementString = dictionaryAny[key] as? String {
        print("Ключ: \(key), Значение: \(elementString)")
    } else if let elementBool = dictionaryAny[key] as? Bool {
        print("Ключ: \(key), Значение: \(elementBool)")
    }
}


/*:
 Создайте переменную `total` типа `Double`, равную 0.  Переберите все значения словаря, и добавьте значение каждого целого и вещественного числа к значению вашей переменной.  Для каждой строки добавьте 1.  Для каждого булева значения, добавьте 2, в случае, если значение равно `true`, либо вычтите 3, если оно `false`.  Напечатайте значение `total`.
 */
var total: Double = 0
for key in dictionaryAny.keys {
    if let elementInt = dictionaryAny[key] as? Int {
        total += Double(elementInt)
    } else if let elementDouble = dictionaryAny[key] as? Double {
        total += elementDouble
    } else if let elementString = dictionaryAny[key] as? String {
        total += 1
    } else if let elementBool = dictionaryAny[key] as? Bool {
        if elementBool == true {
            total += 1
        } else {
            total -= 1
        }
    }
}
print(total)


/*:
 Обнулите переменную `total` и снова пройдите по всей коллекции, прибавляя к ней все целые и вещественные числа.  Для каждой строки, встретившейся на пути, попробуйте сконвертировать её в число, и добавьте это значение к общему.  Игнорируйте булевы значения.  Распечатайте итог.
 */
total = 0
for key in dictionaryAny.keys {
    if let elementInt = dictionaryAny[key] as? Int {
        total += Double(elementInt)
    } else if let elementDouble = dictionaryAny[key] as? Double {
        total += elementDouble
    } else if let elementString = dictionaryAny[key] as? String {
        if let elementConvert = Double(elementString) {
            total += elementConvert
        }
    }
}
print(total)



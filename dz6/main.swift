//
//  main.swift
//  dz6
//
//  Created by imran on 22.02.2023.
//

import Foundation

func Sentence(sentence: String, clousere: (Int)->()){
    var a = 0
    for (i) in sentence{
        if i == " "{
            a += 1
        }
    }
    clousere(sentence.count-a)
}
print("Введите предложение")
Sentence(sentence: readLine()!){ sentence in
    print("Количество букв:\(sentence)")
}

func Kurs(soms: Float, clousere:(Float)->()){
    clousere(soms/87.6)
}
Kurs(soms: Float(readLine()!)!){ dollars in
    print(dollars)
}

func sorted(){
    var names: [String] = ["Imran", "Nathan", "Meerim", "Adam", "Eva", "Angelina", "Veranika"]
    var spisok: [String] = []
    var g = ""
    for name in names{
        if name.count >= g.count {
            spisok.append(name)
        }else if g.count > name.count{
            spisok.insert(name, at: 0)
        }
        g = name
    }
    for i in spisok{
        print(i)
    }
}
sorted()

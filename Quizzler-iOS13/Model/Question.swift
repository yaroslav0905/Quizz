//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Yaroslav Kambarov on 05.07.2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text : String
    let answer : [String]
    let rightAnswer : String
    init(q: String, a: [String], correctAnswer: String ){
        text = q
        answer = a
        rightAnswer = correctAnswer
    }
}










// теория
/*
 struct Town {
    //property
    let name = "yaroslavland"
    var citizens = ["Yaroslav", "Jack"]
    var resources = ["Grain": 100, "Ore": 42]
    
    // metod
    func fortify(){
        print("Defences incresed")
    }
}


var myTown = Town()
print(myTown.citizens)
myTown.citizens.append("Nik") // добавление
print(myTown.citizens)
print(myTown.citizens.count) // количество

myTown.fortify() // вызов метода
 
 
struct Town {
    //property
    let name : String
    var citizens : [String]
    var resources : [String : Int]
    //инициализация
    init(name: String, people: [String], stats: [String : Int]) {
        self.name = name // self. обрвщение к внутренним переменным
        citizens = people
        resources = stats
    }
    // metod
    func fortify(){
        print("Defences incresed")
    }
}

var myTown = Town(name: "Yaroslavland", people: ["Yaroslav", "Tom"], stats: ["Cocos": 32])
print(myTown.citizens)







func exercise() {

    struct User {
        let name : String
        var email : String?
        var followers : Int
        var isActive : Bool
        
        init (name: String, email: String?, followers: Int, isActive: Bool){
            self.name = name
            self.email = email
            self.followers = followers
            self.isActive = isActive
        }
        
        func logStatus(){
            if isActive == true {
                print("\(name) is working hard")
            } else {
                print("\(name) has left earth")
            }
        }
    }

    var myUser = User(name: "Richard", email: nil, followers: 0, isActive: false)
    myUser.logStatus()



    // Diagnostic code - do not change this code
    print("\nDiagnostic code (i.e., Challenge Hint):")
    var musk = User(name: "Elon", email: "elon@tesla.com", followers: 2001, isActive: true)
    musk.logStatus()
    print("Contacting \(musk.name) on \(musk.email!) ...")
    print("\(musk.name) has \(musk.followers) followers")
    // sometime later
    musk.isActive = false
    musk.logStatus()
    
}

 */


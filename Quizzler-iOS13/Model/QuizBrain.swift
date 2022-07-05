//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Yaroslav Kambarov on 05.07.2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(q: "Сколько дней в феврале в високосный год?", a: ["28", "29", "30"], correctAnswer: "29"),
        Question(q: "Как называется семейная стая львов?", a: ["Отряд", "Стадо", "Прайд"], correctAnswer: "Прайд"),
        Question(q: "Как звали женщину из греческой мифологии, у которой вместо волос были змеи?", a: ["Пандора", "Кассиопея", "Медуза"], correctAnswer: "Медуза"),
        Question(q: "Какое животное ассоциируется с Древним Египтом?", a: ["Лев", "Кот", "Кролик"], correctAnswer: "Кот"),
        Question(q: "Сколько цветов в радуге?", a: ["5", "6", "7"], correctAnswer: "7"),
        Question(q: "Единорог - национальное животное какой страны?", a: ["Шотландия", "Ирландия", "Швеция"], correctAnswer: "Шотландия"),
        Question(q: "Как долго длится беременность у слонов?", a: ["20 месяцев", "22 месяца", "12 месяцев"], correctAnswer: "22 месяца"),
        Question(q: "Название какого африканского животного означает \"речная лошадь\"?", a: ["Бегемот", "Крокодил", "Газель"], correctAnswer: "Бегемот"),
        Question(q: "Какая планета ближайшая к Cолнцу?", a: ["Меркурий", "Венера", "Уран"], correctAnswer: "Меркурий"),
        Question(q: "В какой стране производится больше всего кофе в мире?", a: ["Куба", "Бразилия", "Колумбия"], correctAnswer: "Бразилия")

    ]
    var quastionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool{
        if userAnswer == quiz[quastionNumber].rightAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getAnswerText() -> [String]{
        return quiz[quastionNumber].answer
    }
    
    func getQuestionText() -> String{
        return quiz[quastionNumber].text
    }
    
    func getProgress() -> Float {
        Float(quastionNumber + 1) / Float(quiz.count)
    }
    
    func getScore() -> Int {
        return score
    }
    
    mutating func nextQuestion() {
        if quastionNumber + 1 < quiz.count {
            quastionNumber += 1
        } else {
            quastionNumber = 0
            score = 0
        }
    }
}

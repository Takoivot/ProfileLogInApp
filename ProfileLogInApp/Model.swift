//
//  Model.swift
//  ProfileLogInApp
//
//  Created by Артур Сахбиев on 28.04.2022.
//

struct InfoUser {
    let userName: String
    let userPassword: String
    let human: Human
    
    static func getInfoUser() -> InfoUser {
        InfoUser(userName: "Artur",
                 userPassword: "qwerty",
                 human: Human.getHuman())
    }
}

struct Human {
    let name: String
    let surname: String
    let photo: String
    let hobby: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getHuman() -> Human {
        Human(name: "Artur",
              surname: "Sakhbiev",
              photo: "ArturS",
              hobby: "I now Finland language a little , Moi, minun nimeni on Artur. Minä olen 25 vuotta vanha. Minä asun Venäjällä, Pietarissa.")
    
    }
}


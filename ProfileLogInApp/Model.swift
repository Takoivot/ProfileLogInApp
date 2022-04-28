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
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getHuman() -> Human {
        Human(name: "Artur",
              surname: "Sakhbiev",
              photo: "ArturS")
    }
}


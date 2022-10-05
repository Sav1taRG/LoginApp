//
//  Model.swift
//  LoginApp
//
//  Created by Roman Golubinko on 05.10.2022.
//

import Foundation

struct User {
    let name: String
    let password: String
    let person: Person
    
   static func getUser() -> User {
        User(
            name: "User",
            password: "Password",
            person: Person.getPerson()
        )
    }
    
}

struct Person {
    let firstName: String
    let lastName: String
    let age: String
    let company: String
    let division: String
    let position: String
    let description: String
    let photo: String
    let photoBio: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    static func getPerson() -> Person {
        Person(
            firstName: "Roman",
            lastName: "Golubinko",
            age: "32",
            company: "iCenter",
            division: "Apple Authorized Service Provider",
            position: "Head of department ",
            description:
            """
            Greetings from Kaliningrad!
            I love travelling, videogames and coding.
            Work hard. Dream big!
            """,
            photo: "userPhoto",
            photoBio: "bioPhoto"
        )
    }
}

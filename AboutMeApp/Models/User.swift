//
//  Person.swift
//  AboutMeApp
//
//  Created by Rustam Cherezbiev on 02.12.2023.
//

struct User {
    let userName: String
    let password: String
    let person: PersonData
    
    static func getPersonData() -> User {
        User(
            userName: "User",
            password: "123",
            person: PersonData(
                name: "Рустам",
                surename: "Черезбиев",
                age: "32",
                company: "Whykick-Sochi (CyberClub)",
                post: "Управляющий",
                bio: "Родился и вырос в городе Кемерово, Несмотря на то что еще со школьной скамьи мой интерес целиком и полностью был захвачен компьютером, играми и информатикой свой профессиональный путь я начал как юрист, и я с увлечением занимался юриспруденцией, но с течением времени я почувствовал, что мое истинное призвание где-то еще. Мы с другом детства решились на смелый шаг переехали в город Сочи и открыли там собственный компьютерный клуб. А в последствие я решил осуществить детскую мечту и стал изучать swift!👋😊"
            )
        )
    }
}

struct PersonData {
    let name: String
    let surename: String
    let age: String
    let company: String
    let post: String
    let bio: String
}


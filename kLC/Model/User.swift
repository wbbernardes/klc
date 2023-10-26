//
//  User.swift
//  kLC
//
//  Created by Wesley Brito on 26/10/23.
//

import Foundation

struct User: Decodable, Identifiable {
    var id: Int
    var firstName: String
    var lastName: String
    var username: String
    var email: String
    var gender: String
    var pictureURL: String
    var phone: String
    var birthday: String
    var twitterHandle: String
    
    init(id: Int, firstName: String, lastName: String, username: String, email: String, gender: String, pictureURL: String, phone: String, birthday: String, twitterHandle: String) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.username = username
        self.email = email
        self.gender = gender
        self.pictureURL = pictureURL
        self.phone = phone
        self.birthday = birthday
        self.twitterHandle = twitterHandle
    }
    
    static let empty: User = User(id: 0, firstName: "", lastName: "", username: "", email: "", gender: "", pictureURL: "", phone: "", birthday: "", twitterHandle: "")
}

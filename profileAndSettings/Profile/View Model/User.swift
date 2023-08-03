//
//  User.swift
//  profileAndSettings
//
//  Created by Rachel Yoon on 8/2/23.
//

import Foundation

struct User: Identifiable, Hashable, Codable {
    let id: String
    var fullname: String?
    var bio: String?
    var profileImageUrl: String?
    var username: String?
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, fullname: "Michelle Han", bio: "she/her", profileImageUrl: "flowers-m"),
        .init(id: NSUUID().uuidString, fullname: "Emily Markova", bio: "she/her", profileImageUrl: "cookie"),
        .init(id: NSUUID().uuidString, fullname: "Gnapika Birlangi", bio: "she/her", profileImageUrl: "cookie"),
        .init(id: NSUUID().uuidString, fullname: "Rachel Yoon", bio: "OA 2025, she/her", profileImageUrl: "cookie"),
        .init(id: NSUUID().uuidString, fullname: "Alicia Chiang", bio: "she/her", profileImageUrl: "cookie"),
        .init(id: NSUUID().uuidString, fullname: "Aayushi Garg", bio: "she/her", profileImageUrl: "cookie"),
        .init(id: NSUUID().uuidString, fullname: "Margot Robbie", bio: "she/her", profileImageUrl: "cookie"),
        .init(id: NSUUID().uuidString, fullname: "Taylor Swift", bio: "she/her", profileImageUrl: "cookie"),
        .init(id: NSUUID().uuidString, fullname: "Dwayne Johnson", bio: "he/him", profileImageUrl: "cookie"),
        .init(id: NSUUID().uuidString, fullname: "Karlie Kloss", bio: "she/her", profileImageUrl: "cookie"),
    ]
}

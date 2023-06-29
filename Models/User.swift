//
//  User.swift
//  SocialNetworkApp
//
//  Created by Tomislav Zvonarek on 02.06.2023..
//

import Foundation

struct User: Identifiable, Equatable, Codable {
    var id: String
    var name: String
    var imageURL: URL?
}

extension User {
    static let testUser = User(id: "", name: "Jamie Harris", imageURL: URL(string: "htpps://source.unsplash.com/lw9LrnpUmWw/480x480"))
}

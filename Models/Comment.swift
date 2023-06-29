//
//  Comment.swift
//  SocialNetworkApp
//
//  Created by Tomislav Zvonarek on 18.06.2023..
//

import Foundation

struct Comment: Identifiable, Equatable, Codable {
    var content: String
    var author: User
    var timestamp = Date()
    var id = UUID()
}

extension Comment {
    static let testComment = Comment(content: "Lorem ipsum dolor set amet.", author: User.testUser)
}

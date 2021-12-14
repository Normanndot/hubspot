//
//  ModelTypes.swift
//  hubspot
//
//  Created by Norman, ThankaVijay on 06/12/21.
//

import Foundation

// MARK: - Response
struct HubspotChat: Codable {
    let messages: [Message]
    let userID: Int
    let users: [User]

    enum CodingKeys: String, CodingKey {
        case messages
        case userID = "userId"
        case users
    }
}

// MARK: - Message
struct Message: Codable {
    let content: String
    let fromUserID, timestamp, toUserID: Int

    enum CodingKeys: String, CodingKey {
        case content
        case fromUserID = "fromUserId"
        case timestamp
        case toUserID = "toUserId"
    }
}

// MARK: - User
struct User: Codable {
    let avatar, firstName, lastName: String
    let id: Int
}


struct Wrapper<T: Decodable>: Decodable {
    let items: [T]
}

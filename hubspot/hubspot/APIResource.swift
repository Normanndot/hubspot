//
//  APIResource.swift
//  hubspot
//
//  Created by Norman, ThankaVijay on 06/12/21.
//

import Foundation

protocol APIResource {
    associatedtype ModelType: Decodable
    var methodPath: String { get }
}

extension APIResource {
    var url: URL {
        var components = URLComponents(string: "https://candidate.hubteam.com/candidateTest/v3/problem")!
//        var components = URLComponents(string: "https://mocki.io/v1/")!
        components.path = methodPath
        components.queryItems = [
            URLQueryItem(name: "userKey", value: "8b21310bee2633ed1cc54735a92f")
        ]
        return components.url!
    }
}

struct MessageGET: APIResource {
    typealias ModelType = HubspotChat
    let methodPath = "/data"
}

struct MessagePOST: APIResource {
    typealias ModelType = HubspotChat
    let methodPath = "/result"
}

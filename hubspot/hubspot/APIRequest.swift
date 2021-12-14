//
//  APIRequest.swift
//  hubspot
//
//  Created by Norman, ThankaVijay on 06/12/21.
//

import Foundation

class APIRequest<Resource: APIResource> {
    let resource: Resource

    init(resource: Resource) {
        self.resource = resource
    }
}

extension APIRequest: NetworkRequest {
    func decode(_ data: Data) -> [Resource.ModelType]? {
        print("*******************")
        print(String(data: data, encoding: .utf8))
        let wrapper = try? JSONDecoder().decode(Wrapper<Resource.ModelType>.self, from: data)
        return wrapper?.items
    }

    func load(withCompletion completion: @escaping ([Resource.ModelType]?) -> Void) {
        load(resource.url, withCompletion: completion)
    }
}

//
//  NetworkAPIRequest.swift
//  kLC
//
//  Created by Wesley Brito on 26/10/23.
//

import Foundation

class NetworkAPIRequest {
    func getUsers() async throws -> [User] {
        guard let url: URL = URL(string: "https://jserver-api.herokuapp.com/users") else {
            throw URLError(.badURL)
        }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        let users = try JSONDecoder().decode([User].self, from: data)
        return users
    }
}

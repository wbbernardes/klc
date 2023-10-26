//
//  UserViewModel.swift
//  kLC
//
//  Created by Wesley Brito on 26/10/23.
//

import Foundation
import Combine

class UserViewModel: ObservableObject {
    @Published var users: [User] = []
    private let service: NetworkAPIRequest = NetworkAPIRequest()
    
    func loadUsers() async {
        do {
            let fetchedUsers: [User] = try await service.getUsers()
            DispatchQueue.main.async {
                self.users = fetchedUsers
            }
        } catch {
            debugPrint("fail to fetch Users")
        }
    }
}

//
//  UserListView.swift
//  kLC
//
//  Created by Wesley Brito on 26/10/23.
//

import SwiftUI

struct UserListView: View {
    @StateObject var viewModel: UserViewModel = UserViewModel()
    
    var body: some View {
        VStack {
            //        NavigationView {
            List(viewModel.users) { user in
                NavigationLink(destination: UserDetailView()) {
                    UserListItem(user: user)
                        .listRowInsets(EdgeInsets())
                }
            }
            .navigationTitle("Favorites")
            
            //        }
            .onAppear {
                Task {
                    await viewModel.loadUsers()
                }
            }
        }
    }
}

#Preview {
    UserListView()
}

//
//  UserListItem.swift
//  kLC
//
//  Created by Wesley Brito on 26/10/23.
//

import SwiftUI

struct UserListItem: View {
    var user: User
    
    var body: some View {
        HStack {
            AsyncImage(
                url: URL(string: user.pictureURL)) { image in
                    image
                        .resizable()
                } placeholder: {
                    Color.red
                }
                .frame(width: 40, height: 40)
                
            VStack(alignment: .leading, spacing: 4) {
                Text("\(user.firstName) \(user.lastName)")
                    .font(.headline)
                    .foregroundColor(.black)
                
                Text("type")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            Image(systemName: "info.circle")
            
        }
    }
}

#Preview {
    UserListItem(user: .empty)
}

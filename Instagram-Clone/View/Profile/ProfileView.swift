//
//  ProfileView.swift
//  Instagram-Clone
//
//  Created by Surapunya Thongdee on 18/10/2564 BE.
//

import SwiftUI

struct ProfileView: View {
    @State var user: User
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                ProfileHeaderView(viewModel: ProfileViewModel(user: user))
                    .padding()
                
                if let currentProfileID = user.id {
                    PostGridView(config: .profile(currentProfileID))
                }
            }
        }
        
        
    }
}

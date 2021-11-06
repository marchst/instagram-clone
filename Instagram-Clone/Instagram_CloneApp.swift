//
//  Instagram_CloneApp.swift
//  Instagram-Clone
//
//  Created by Surapunya Thongdee on 18/10/2564 BE.
//

import SwiftUI
import Firebase

@main
struct Instagram_CloneApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(AuthViewModel.shared)
        }
    }
}

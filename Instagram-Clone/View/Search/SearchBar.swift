//
//  SearchBar.swift
//  Instagram-Clone
//
//  Created by Surapunya Thongdee on 23/10/2564 BE.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    @Binding var isEditting: Bool
    
    var body: some View {
        HStack {
            TextField("Search...", text: $text)
                .padding(8)
                .padding(.horizontal, 24)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    }.padding(.leading, 8)
            )
            
            Button(action: {
                isEditting = false
                text = ""
                UIApplication.shared.endEditting()
            }) {
                Text("Cancel")
                    .foregroundColor(.black)
            }
            .padding(.trailing, 8)
            .transition(.move(edge: .trailing))
        }
        .onTapGesture {
            isEditting = true
        }
    }
}


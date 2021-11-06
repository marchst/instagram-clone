//
//  SearchView.swift
//  Instagram-Clone
//
//  Created by Surapunya Thongdee on 18/10/2564 BE.
//

import SwiftUI

struct SearchView: View {
    @ObservedObject var viewModel = SearchViewModel()
    @State var searchText = ""
    @State var inSearchMode = false
    var body: some View {
        ScrollView {
            SearchBar(text: $searchText, isEditting: $inSearchMode)
                .padding()
            
            ZStack {
                if inSearchMode {
                    UserListView(viewModel: viewModel, searchText: $searchText)
                        .animation(.default)
                } else {
                    PostGridView(config: .explore)
                }
            }
        }
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

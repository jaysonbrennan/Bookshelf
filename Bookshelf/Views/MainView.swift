//
//  MainView.swift
//  Bookshelf
//
//  Created by Jayson Brennan on 8/25/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            Text("Library")
                .tabItem {
                    Label("Library", systemImage: "building.columns.fill")
                }
            BookshelfView()
                .tabItem {
                    Label("Bookshelf", systemImage: "books.vertical.fill")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

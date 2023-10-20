//
//  BookshelfApp.swift
//  Bookshelf
//
//  Created by Jayson Brennan on 8/25/23.
//

import SwiftUI

@main
struct BookshelfApp: App {
    @State private var bookshelf = Bookshelf()

    var body: some Scene {
        WindowGroup {
            MainView()
                .environment(bookshelf)
        }
    }
}

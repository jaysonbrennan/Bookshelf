//
//  Library.swift
//  Bookshelf
//
//  Created by Jayson Brennan on 9/30/23.
//

import SwiftUI

struct Library: View {
    @State private var books: [Book] = []
    @State private var inProgress: Bool = true

    var body: some View {
        ZStack {
            NavigationStack {
                List {
                    ForEach(books) { book in
                        BookCard(book: book)
                    }
                }
                .navigationTitle("Library")
                .listStyle(.plain)
            }
            if inProgress {
                ProgressView()
                    .scaleEffect(1.5)
            }
        }
        .task {
            books = await fetchBooks()
            inProgress = false
        }
    }
}

#Preview {
    Library()
}

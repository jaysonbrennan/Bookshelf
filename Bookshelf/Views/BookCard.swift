//
//  BookCard.swift
//  Bookshelf
//
//  Created by Jayson Brennan on 8/25/23.
//

import SwiftUI

struct BookCard: View {
    let book: Book
    
    var body: some View {
        HStack {
            Image(systemName: "book.closed.fill")
                .resizable()
                .frame(width: 50, height: 75)
                .padding(.trailing, 10)
            VStack {
                HStack {
                    Text(book.name)
                        .font(.title2)
                    Spacer()
                    Image(systemName: "star.fill")
                    Text("5.0")
                }
                HStack {
                    Text("By " + book.author)
                    Spacer()
                }
            }
        }
        .padding()
    }
}

struct BookCard_Previews: PreviewProvider {
    static var previews: some View {
        BookCard(book: Book(id: 1, name: "Jumanji", author: "Robin Williams"))
    }
}

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
            if let imageLinks = book.volumeInfo.imageLinks {
                AsyncImage(url: URL(string: imageLinks
                        .smallThumbnail)) { image in
                    image.resizable()
                } placeholder: {
                    Image(systemName: "book.closed.fill")
                        .resizable()
                }
                .frame(width: 50, height: 75)
                .padding(.trailing, 10)
            } else {
                Image(systemName: "book.closed.fill")
                    .resizable()
                    .frame(width: 50, height: 75)
                    .padding(.trailing, 10)
            }
            VStack {
                HStack {
                    Text(book.volumeInfo.title)
                        .font(.title2)
                    Spacer()
                    Image(systemName: "star.fill")
                    Text("5.0")
                }
                HStack {
                    if let authors = book.volumeInfo.authors {
                        Text("By " + authors[0])
                    } else {
                        Text("By Unknown")
                    }
                    Spacer()
                }
            }
        }
        .padding()
    }
}

struct BookCard_Previews: PreviewProvider {
    static var previews: some View {
        BookCard(book: Book(id: "xyz",
                            volumeInfo: VolumeInfo(title: "Jumanji",
                                                   authors: ["Robin Williams"],
                                                   description: "Book Description",
                                                   imageLinks: ImageLinks(smallThumbnail: "url",
                                                                          thumbnail: "url"))))
    }
}

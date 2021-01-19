//
//  BookRowView.swift
//  ReadMe
//
//  Created by Rick Brown on 12/01/2021.
//

import SwiftUI

struct BookRowView: View {
  var book: Book
  
  var body: some View {
    NavigationLink(destination: DetailView(book: book)) {
      HStack {
        Book.Image(title: book.title, size: 80)
        
        TitleAndAuthorView(book: book, titleFont: .title2, authorFont: .title3)
          .lineLimit(1)
      }
    }
  }
}

struct BookRowView_Previews: PreviewProvider {
  static var previews: some View {
    BookRowView(book: .init())
  }
}

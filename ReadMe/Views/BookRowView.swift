//
//  BookRowView.swift
//  ReadMe
//
//  Created by Rick Brown on 12/01/2021.
//

import SwiftUI

struct BookRowView: View {
  var book: Book
  @Binding var image: UIImage?
  
  var body: some View {
    NavigationLink(destination: DetailView(book: book, image: $image)) {
      HStack {
        Book.Image(
          uiImage: image,
          title: book.title,
          size: 80,
          cornerRadius: 12
        )
        
        TitleAndAuthorView(
          book: book,
          titleFont: .title2,
          authorFont: .title3
        )
          .lineLimit(1)
      }
      .padding(.vertical, 8)
    }
  }
}

struct BookRowView_Previews: PreviewProvider {
  static var previews: some View {
    BookRowView(book: .init(), image: .constant(nil))
  }
}

//
//  TitleAndAuthorRowView.swift
//  ReadMe
//
//  Created by Rick Brown on 19/01/2021.
//

import SwiftUI

struct TitleAndAuthorView: View {
  let book: Book
  let titleFont: Font
  let authorFont: Font
  
  var body: some View {
    VStack(alignment: .leading) {
      Text(book.title)
        .font(titleFont)
      
      Text(book.author)
        .font(authorFont)
        .foregroundColor(.secondary)
    }
  }
}

struct TitleAndAuthorRowView_Previews: PreviewProvider {
    static var previews: some View {
      TitleAndAuthorView(book: .init(title: "Title", author: "Author"),titleFont: .title, authorFont: .subheadline)
    }
}

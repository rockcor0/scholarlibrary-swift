//
//  BookRow.swift
//  SchoolarLibray
//
//  Created by Ricardo Delgado Carreño on 29/08/20.
//  Copyright © 2020 Ricardo Delgado Carreño. All rights reserved.
//

import SwiftUI

struct BookRow: View {
    var book: Book
    
    var body: some View {
        HStack {
            book.imageName
                .resizable()
                .frame(width: 50, height: 50)
            Text(book.title)
            Spacer()
        }
    }
}

struct BookRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BookRow(book: bookData[0])
            BookRow(book: bookData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}

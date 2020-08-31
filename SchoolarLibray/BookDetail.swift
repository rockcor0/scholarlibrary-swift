//
//  BookDetail.swift
//  SchoolarLibray
//
//  Created by Ricardo Delgado Carreño on 30/08/20.
//  Copyright © 2020 Ricardo Delgado Carreño. All rights reserved.
//

import SwiftUI

struct BookDetail: View {
    var book : Book
    
    var body: some View {
        VStack {
            SquareImage(image: Image("library2"))
                .frame(width: 300, height:200)
                .offset(y: -100)
            
            CircleImage()
                .offset(y: -170)
                .padding(.bottom, -150)
            
            VStack(alignment: .leading) {
                Text(book.title)
                    .font(.title)
                HStack {
                    Text(book.subtitle)
                        .font(.subheadline)
                    Spacer()
                    Text(book.price)
                        .font(.title)
                }
            }
            .padding()
            
            Spacer()
        }
        .navigationBarTitle(Text(book.title), displayMode: .inline)
    }
}

struct BookDetail_Previews: PreviewProvider {
    static var previews: some View {
        BookDetail(book: bookData[0])
    }
}

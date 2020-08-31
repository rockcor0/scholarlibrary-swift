//
//  BookList.swift
//  SchoolarLibray
//
//  Created by Ricardo Delgado Carreño on 29/08/20.
//  Copyright © 2020 Ricardo Delgado Carreño. All rights reserved.
//

import SwiftUI
import UIKit

struct BookList: View {
    
    var name: String
    
    @State var data: Response?
    
    
    var body: some View {
        
        VStack {
            
            NavigationView {
                VStack {
                    Text("Resultados de \(self.name)")
                        .onAppear {
                            getData(from: "https://api.itbook.store/1.0/search/\(self.name)") { data in
                                DispatchQueue.main.async {
                                    self.data = data
                                }
                            }
                    }
                    List(bookData) { book in
                        NavigationLink(destination: BookDetail(book: book)) {
                            BookRow(book: book)
                        }
                    }
                }
                
                .navigationBarTitle(Text("Books"))
            }
        }
    }
}

struct BookList_Previews: PreviewProvider {
    static var previews: some View {
        BookList(name: "Some text")
    }
}

func getData(from url: String, completionHandler: @escaping (Response) -> Void){
    let task = URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: { data, response, error in
        guard let data = data, error == nil else {
            print("Something went wrong")
            return
        }
        
        //Have data
        var result: Response?
        do {
            result = try JSONDecoder().decode(Response.self, from: data)
        } catch {
            print("failed to convert \(error.localizedDescription)")
        }
        
        guard let json = result else{
            return
        }
        
        print("Page: \(json.page)")
        print("Books: \(json.books.first)")
        
        completionHandler(json)
    })
    
    task.resume()
}

//}

struct Response: Codable {
    var error: String
    var total: String
    var page: String
    var books: [MyBook]
}


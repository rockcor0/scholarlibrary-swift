//
//  Book.swift
//  SchoolarLibray
//
//  Created by Ricardo Delgado Carreño on 29/08/20.
//  Copyright © 2020 Ricardo Delgado Carreño. All rights reserved.
//

import SwiftUI

struct Book:  Hashable, Codable, Identifiable {
    
    var id: Int
    var title: String
    var subtitle: String
    var isbn13: String
    var price: String
    var image: String
    var url: String
}

extension Book{
    var imageName: Image {
        ImageStore.shared.image(name: isbn13)
    }
}
 



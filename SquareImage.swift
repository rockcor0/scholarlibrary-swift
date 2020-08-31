//
//  SquareImage.swift
//  SchoolarLibray
//
//  Created by Ricardo Delgado Carreño on 29/08/20.
//  Copyright © 2020 Ricardo Delgado Carreño. All rights reserved.
//

import SwiftUI

struct SquareImage: View {
    var image : Image
    
    
    var body: some View {
        Image("library2")
    }
}

struct SquareImage_Previews: PreviewProvider {
    static var previews: some View {
        SquareImage(image: Image("library2"))
    }
}

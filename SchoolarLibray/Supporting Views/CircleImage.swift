//
//  CircleImage.swift
//  SchoolarLibray
//
//  Created by Ricardo Delgado Carreño on 28/08/20.
//  Copyright © 2020 Ricardo Delgado Carreño. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("samplebook")
            .clipShape(Circle())
        .overlay(
            Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}

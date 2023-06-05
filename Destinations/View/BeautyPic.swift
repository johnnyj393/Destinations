//
//  BeautyPic.swift
//  Destinations
//
//  Created by John Santangelo on 2023/6/4.
//

import SwiftUI

struct BeautyPic: View {
    
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .overlay {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(.black, lineWidth: 8)
            }
            .frame(height: 150)
            .cornerRadius(20)
    }
}

struct BeautyPic_Previews: PreviewProvider {
    static var previews: some View {
        BeautyPic(image: Image("taipei"))
            .previewLayout(.fixed(width: 300, height: 150))
    }
}

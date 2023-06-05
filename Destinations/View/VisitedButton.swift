//
//  VisitedButton.swift
//  Destinations
//
//  Created by John Santangelo on 2023/6/4.
//

import SwiftUI

struct VisitedButton: View {
    @Binding var haveVisited: Bool
    
    let have = "checkmark.circle.fill"
    let havenot = "x.circle"
    
    var body: some View {
        Button {
            haveVisited.toggle()
        } label: {
            Label("Toggle Visited", systemImage: haveVisited ? have : havenot)
                .labelStyle(.iconOnly)
                .foregroundColor(haveVisited ? .yellow : .black)
        }
    }
}

struct VisitedButton_Previews: PreviewProvider {
    static var previews: some View {
        VisitedButton(haveVisited: .constant(true))
    }
}

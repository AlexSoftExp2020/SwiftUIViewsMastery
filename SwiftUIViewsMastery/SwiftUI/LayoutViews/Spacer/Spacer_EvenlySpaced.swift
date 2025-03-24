//
//  Spacer_EvenlySpaced.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 24.03.2025.
//

import SwiftUI

struct Spacer_EvenlySpaced: View {
    var body: some View {
        
        Text("Use Spacer to evenly space views horizontally so they look good on any device.")
            .background(Color.yellow)
        
        Text("After")
        
        HStack {
            Spacer()
            
            VStack(alignment: .leading) {
                Text("Names")
                    .font(.largeTitle)
                    .underline()
                Text("Chase")
                Text("Rodrigo")
                Text("Mark")
                Text("Evans")
            }
            
            Spacer()
            
            VStack(alignment: .leading) {
                Text("Color")
                    .font(.largeTitle)
                    .underline()
                Text("Red")
                Text("Orange")
                Text("Green")
                Text("Blue")
            }
            
            Spacer()
        }
    }
}

#Preview {
    Spacer_EvenlySpaced()
}

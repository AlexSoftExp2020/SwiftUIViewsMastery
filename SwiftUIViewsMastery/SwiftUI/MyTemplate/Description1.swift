//
//  Description.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 19.03.2025.
//

import SwiftUI

struct Description1: View {
    var body: some View {
        Text("Title")
            .font(.largeTitle)
        
        Text("Subtitle")
            .font(.title)
            .foregroundStyle(.gray)
        
        Text("Description")
            .font(.title)
            .foregroundStyle(Color.white)
            .background(Color.blue) // Add the color blue behind the text.
    }
}

#Preview {
    Description1()
}

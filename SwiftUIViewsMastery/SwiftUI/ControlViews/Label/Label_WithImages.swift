//
//  Label_WithImages.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 15.04.2025.
//

import SwiftUI

struct Label_WithImages: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Label",
                       subtitle: "With Images",
                       desc: "Instead of SF Symbols, you can also use images.",
                       back: .pink)
            
            Spacer()
            
            Label("Helena", image: "profile")
                .border(Color.pink, width: 3)
            
            Spacer()
            
            DescView("It's important to know that the Label will not resize your image. You will have to resize your images before they are used in the Label.",
                     back: .pink)
        }
        .font(.title)
    }
}

#Preview {
    Label_WithImages()
}

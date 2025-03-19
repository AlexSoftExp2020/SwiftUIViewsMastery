//
//  DescView.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 19.03.2025.
//

import SwiftUI

struct DescView: View {
    var desc = "Use this to..."
    var back = Color.orange
    var textColor = Color.black
    
    init(_ desc: String, back: Color = .orange,
         textColor: Color = .black) {
        self.desc = desc
        self.back = back
        self.textColor = textColor
    }
    
    var body: some View {
        Text(desc)
            .frame(maxWidth: .infinity)
            .padding()
            .background(back)
            .foregroundStyle(textColor)
    }
}

#Preview {
    DescView("Description View")
}

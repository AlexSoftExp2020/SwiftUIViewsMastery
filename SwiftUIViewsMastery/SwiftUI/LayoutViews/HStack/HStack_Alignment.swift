//
//  HStack_Alignment.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 20.03.2025.
//

import SwiftUI

struct HStack_Alignment: View {
    var body: some View {
        Text("By default, views within an HStack are vertically aligned in the center.")
        HStack {
            Rectangle().foregroundStyle(.orange).frame(width: 25)
            Text("Leading")
            Spacer()
            Text("Center")
            Spacer()
            Text("Trailing")
                .padding(.trailing)
        }
        .border(Color.orange)
        
        HStack(alignment: .top) {
            Rectangle().foregroundStyle(.orange).frame(width: 25)
            Text("Leading")
            Spacer()
            Text("Top")
            Spacer()
            Text("Trailing")
                .padding(.trailing)
        }
        .border(Color.orange)
        
        HStack(alignment: .bottom) {
            Rectangle().foregroundStyle(.orange).frame(width: 25)
            Text("Leading")
            Spacer()
            Text("Top")
            Spacer()
            Text("Trailing")
                .padding(.trailing)
        }
        .border(Color.orange)
    }
}

#Preview {
    HStack_Alignment()
}

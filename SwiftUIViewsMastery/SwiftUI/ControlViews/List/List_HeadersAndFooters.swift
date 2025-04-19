//
//  List_HeadersAndFooters.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 19.04.2025.
//

import SwiftUI

struct List_HeadersAndFooters: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    List_HeadersAndFooters()
}

struct Header: View {
    var body: some View {
        Image("mountains")
            .resizable()
            .scaledToFill()
            .frame(maxWidth: .infinity)
            .overlay {Text("STAFF")
                    .font(.system(size: 120, design: .serif))
                    .foregroundStyle(.green)
            }
            .padding(.horizontal, -40)
            .padding(.top, -25)
    }
}

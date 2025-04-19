//
//  List_HeadersAndFooters.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 19.04.2025.
//

import SwiftUI

struct List_HeadersAndFooters: View {
    var data = ["Evans", "Lemuel James Guerrero", "Mark", "Durtschi", "Chase", "Rodrigo"]
    var body: some View {
        List {
            Section {
                ForEach(data, id: \.self) { datum in
                    Text(datum)
                }
            } header: {
                Header()
            } footer: {
                Text("7 people on Staff")
            }
        }
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

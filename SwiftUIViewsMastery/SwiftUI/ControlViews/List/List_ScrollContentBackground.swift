//
//  List_ScrollContentBackground.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 22.04.2025.
//

import SwiftUI

struct List_ScrollContentBackground: View {
    private var stringArray = ["Evans", "Lemuel", "Mark", "Durtschi", "Chase", "Adam", "Rodrigo"]
    @State private var show = false
    @State private var showSystemBackground: Visibility = .visible
    
    var body: some View {
        List(stringArray, id: \.self) { string in
            Text(string)
        }
        .background(Color.green.opacity(0.25))
        .scrollContentBackground(showSystemBackground)
        .safeAreaInset(edge: .bottom) {
            VStack {
                Divider()
                
                Button {
                    show.toggle()
                    showSystemBackground = show ? .hidden : .visible
                } label: {
                    if show {
                        Image(systemName: "eye.slash")
                    } else {
                        Image(systemName: "eye")
                            .buttonStyle(.borderedProminent)
                    }
                }
                .symbolVariant(.fill)
                .padding()
            }
            .background(.thinMaterial)
        }
        .font(.title)
    }
}

#Preview {
    List_ScrollContentBackground()
}

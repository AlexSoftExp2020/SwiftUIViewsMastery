//
//  List_SwipeActions_Options.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 21.04.2025.
//

import SwiftUI

struct List_SwipeActions_Options: View {
    var body: some View {
        VStack(spacing: 20.0) {
            HeaderView("List",
                       subtitle: "SwipeActions - Options",
                       desc: "You can specify which side to swipe with the edge parameter and if you want a full swipe.").layoutPriority(1)
            List {
                ForEach(0..<3) { item in
                    Text("Item \(item)")
                        .swipeActions(allowsFullSwipe: false) {
                            Button { } label: {
                                Image(systemName: "xmark")
                            }
                            .tint(.red)
                            Button { } label: {
                                Image(systemName: "checkmark.square")
                            }
                            .tint(.green)
                        }
                }
            }
            List {
                ForEach(3..<6) { item in
                    Text("Item \(item)")
                        .swipeActions(edge: .leading, allowsFullSwipe: true) {
                            Button { } label: {
                                Image(systemName: "flag")
                            }
                            .tint(.purple)
                        }
                }
            }
        }
        .font(.title)
    }
}

#Preview {
    List_SwipeActions_Options()
}

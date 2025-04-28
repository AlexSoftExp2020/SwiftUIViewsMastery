//
//  ScrollView_SafeAreaInset.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 28.04.2025.
//

import SwiftUI

struct ScrollView_SafeAreaInset: View {
    @State private var names = ["Scott",
                                "Mark",
                                "Chris",
                                "Sean",
                                "Rod",
                                "Meng",
                                "Natasha",
                                "Chase",
                                "Evans",
                                "Paul",
                                "Durtschi",
                                "Max"]
    var body: some View {
        ScrollView {
            ForEach(names, id: \.self) { name in
                HStack {
                    Text(name)
                        .foregroundStyle(.primary)
                    Image(systemName: "checkmark.seal.fill")
                        .foregroundStyle(.green)
                    Spacer()
                }
                .padding()
                .background(Color.white.shadow(.drop(radius: 1, y: 1)),
                            in: RoundedRectangle(cornerRadius: 8))
            }
            .padding(.horizontal)
        }
        .safeAreaInset(edge: .bottom) {
            VStack(spacing: 20) {
                Divider()
                Text("12 People")
            }
            .background(.regularMaterial)
        }
        .font(.title)
    }
}

#Preview {
    ScrollView_SafeAreaInset()
}

//
//  List_SafeAreaInset_ScrollView.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 19.04.2025.
//

import SwiftUI

struct List_SafeAreaInset_ScrollView: View {
    var body: some View {
        VStack(spacing: 0) {
            HeaderView("ScrollView",
                       subtitle: "SafeAreaInset",
                       desc: "SafeAreaInset works well with the ScrollView.")
            ScrollView {
                ForEach(1..<21) { number in
                    Text("\(number)")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.green, in: RoundedRectangle(cornerRadius: 10))
                }
            }
            .padding(.horizontal)
            .safeAreaInset(edge: .bottom) {
                VStack {
                    Divider()
                    Text("Total: 20")
                        .foregroundStyle(.secondary)
                }
                .background(.bar)
            }
        }
        .font(.title)
    }
}

#Preview {
    List_SafeAreaInset_ScrollView()
}

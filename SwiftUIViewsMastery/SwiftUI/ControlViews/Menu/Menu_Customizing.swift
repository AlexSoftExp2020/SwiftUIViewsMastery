//
//  Menu_Customizing.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 22.04.2025.
//

import SwiftUI

struct Menu_Customizing: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("Menu",
                       subtitle: "Customizing",
                       desc: "The label parameter can be any composition of views.",
                       back: .blue,
                       textColor: .white)
            
            Spacer()
            
            Menu {
                Button { } label: {
                    Text("Add color")
                    Image(systemName: "eyedropper.full")
                }
                Button { } label: {
                    Image(systemName: "circle.lefthalf.fill")
                    Text("Change contrast")
                }
                Button { } label: {
                    Text("Skew")
                    Image(systemName: "skew")
                }
            } label: {
                VStack(spacing: 16) {
                    Image(systemName: "paintbrush.pointed.fill")
                    Text("Editing Options")
                }
                .foregroundStyle(.white)
                .padding()
                .background(RoundedRectangle(cornerRadius: 20))
            }
            Spacer()
        }
        .font(.title)
    }
}

#Preview {
    Menu_Customizing()
}

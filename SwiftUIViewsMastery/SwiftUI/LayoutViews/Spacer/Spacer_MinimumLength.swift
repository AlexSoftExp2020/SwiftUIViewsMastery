//
//  Spacer_MinimumLength.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 24.03.2025.
//

import SwiftUI

struct Spacer_MinimumLength: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Spacer")
                .font(.largeTitle)
            Text("Minimum Length")
                .font(.title)
                .foregroundStyle(.gray)
            Text("You can set a minimum space to exist between views using the minLength modifier on the Spacer.")
            Text("No minLength set (system default is used)")
                .bold()
            HStack {
                Image("yosemite")
                Spacer()
                Text("This is Yosemite National Park").lineLimit(1)
            }.padding()
            
            Text("minLength = 0")
                .bold()
            HStack {
                Image("yosemite")
                Spacer(minLength: 0)
                Text("This is Yosemite National Park").lineLimit(1)
            }.padding()
            
            Text("minLength = 20")
                .bold()
            HStack {
                Image("yosemite")
                Spacer(minLength: 20)
                Text("This is Yosemite National Park").lineLimit(1)
            }.padding()
        }
    }
}

#Preview {
    Spacer_MinimumLength()
}

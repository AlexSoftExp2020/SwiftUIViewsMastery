//
//  List_WithStaticData.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 16.04.2025.
//

import SwiftUI

struct List_WithStaticData: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("List").font(.largeTitle)
            Text("Static Data").font(.title).foregroundStyle(.gray)
            Text("You can show static views or data within the List view. It does not have to be bound with data. It gives you a scrollable view.")
                .frame(maxWidth: .infinity)
                .font(.title).padding()
                .background(Color.green)
                .foregroundStyle(.black)
            
            List {
                Text("Line One")
                Text("Line Two")
                Text("Line Three")
                Image("profile")
                Button("Click Here", action: {})
                    .foregroundStyle(.green)
                HStack {
                    Spacer()
                    Text("Centered Text")
                    Spacer()
                }.padding()
            }
            .font(.title)
        }
    }
}

#Preview {
    List_WithStaticData()
}

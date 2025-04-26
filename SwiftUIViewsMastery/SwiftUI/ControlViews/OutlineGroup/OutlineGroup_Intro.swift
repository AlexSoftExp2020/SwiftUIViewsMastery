//
//  OutlineGroup_Intro.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 26.04.2025.
//

import SwiftUI

struct OutlineGroup_Intro: View {
    var parents = [Parent1(name: "Mark",
                          children: [Parent1(name: "Paola")]),
                   Parent1(name: "Rodrigo",
                          children: [Parent1(name: "Kai"),
                                     Parent1(name: "Brennan"),
                                     Parent1(name: "Easton")]),
                   Parent1(name: "Marcella",
                           children: [Parent1(name: "Sam",
                                              children: [Parent1(name: "Joe")]),
                                     Parent1(name: "Melissa"),
                                     Parent1(name: "Melanie")])]
    var body: some View {
        VStack(spacing: 20.0) {
            HeaderView("OutlineGroup",
                       subtitle: "Introduction",
                       desc: "This is very similar to using the List with the children parameter except this container does not scroll.",
                       back: Color.red,
                       textColor: .primary)
            
            OutlineGroup(parents, children: \.children) { parent in
                HStack {
                    Image(systemName: "person.circle")
                    Text("\(parent.name)")
                    Spacer()
                }
            }
            .padding(.horizontal)
            .tint(.red)
        }
        .font(.title)
    }
}

#Preview {
    OutlineGroup_Intro()
}

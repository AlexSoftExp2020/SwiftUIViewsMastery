//
//  LazyHStack_Intro.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 21.03.2025.
//

import SwiftUI

struct LazyHStack_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            HeaderView("LazyHStack",
                       subtitle: "Introduction",
                       desc: "When using the LazyHStack by itself, you won't notice much of a difference from the HStack.")
            .layoutPriority(1)
            
            Text("LazyHStack")
            LazyHStack(spacing: 40) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            .border(Color.red, width: 2)
            
            Text("HStack")
            HStack(spacing: 40) {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            .border(Color.red, width: 2)
            
            Text("Notice the LazyHStack pushes out vetically. (No Spacers being used here.)")
        }
        .font(.title)
    }
}

#Preview {
    LazyHStack_Intro()
}

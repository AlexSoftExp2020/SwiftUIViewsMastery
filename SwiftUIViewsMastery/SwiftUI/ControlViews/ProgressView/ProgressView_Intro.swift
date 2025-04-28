//
//  ProgressView_Intro.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 28.04.2025.
//

import SwiftUI

struct ProgressView_Intro: View {
    var body: some View {
        VStack {
            HeaderView("ProgressView",
                       subtitle: "Introduction",
                       desc: "Use ProgressView to show that some activity is happening. If you do not pass in any values, it will just show an indeterminate spinner.",
                       back: .blue,
                       textColor: .white)
            
            ProgressView()
            
            DescView("You can add a label to it as well:", back: .blue, textColor: .white)
            
            ProgressView("Loading...")
                .font(Font.system(.title2, design: .monospaced).weight(.bold))
            
            DescView("Which, as you can see, can be customized.",
                     back: .blue,
                     textColor: .white)
        }
        .font(.title)
    }
}

#Preview {
    ProgressView_Intro()
}

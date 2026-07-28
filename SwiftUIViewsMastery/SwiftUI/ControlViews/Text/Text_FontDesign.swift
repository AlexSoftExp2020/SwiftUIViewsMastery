//
//  Text_FontDesign.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii Pidhornyi on 28/07/2026.
//

import SwiftUI

struct Text_FontDesign: View {
    var body: some View {
        VStack(spacing: 10) {
            HeaderView("Text",
                       subtitle: "Font Design",
                       desc: "There are 4 font designs now in iOS. Use Font.system to set the font design you want.",
                       back: .green,
                       textColor: .white)
            Text("Default font design")
                .font(Font.system(size: 30, design: Font.Design.default))

            // You can remove the "Font.Design" of the enum
            Text("Here is monospaced")
                .font(.system(size: 30, design: .monospaced))// Set the design witha hard-coded size or use a text style.
            Text("And there is rounded")
                .font(.system(.title, design: .rounded))// Set the design witha hard-coded size or use a text style.
            Text("Finally, we have serif!")
                .font(.system(.title, design: .serif))
            DescView("A \"serif\" is a little piece that comes off the letter.",
                     back: .green,
                     textColor: .white)
            Image("Serif")
        }
        .font(.title)
    }
}

#Preview {
    Text_FontDesign()
}

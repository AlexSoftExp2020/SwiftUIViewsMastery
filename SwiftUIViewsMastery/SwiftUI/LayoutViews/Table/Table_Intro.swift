//
//  Table_Intro.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 01.04.2025.
//

import SwiftUI

struct Table_Intro: View {
    @State private var colors = [
        ColorInfo(name: "Red", desc: Color.red),
        ColorInfo(name: "Blue", desc: Color.blue),
        ColorInfo(name: "Purple", desc: Color.purple)
    ]
    
    var body: some View {
        Table(colors) {
            TableColumn("Names") { color in
                Text(color.name)
            }
            TableColumn("Colors") { color in
                color.desc
            }
        }
        .font(.title)
    }
}

#Preview {
    Table_Intro()
}

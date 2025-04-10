//
//  Form_HeadersAndFooters.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 07.04.2025.
//

import SwiftUI

struct Form_HeadersAndFooters: View {
    var body: some View {
        Form {
            
            Section {
                Text("You can add any view in a section header")
                Text("Notice the default foreground color is gray")
            } header: {
                Text("Section Header Text")
            }
            
            Section {
                Text("Here's and example of a section header with image and text")
            } header: {
                SectionTextAndImage(name: "People", image: "person.2.square.stack.fill")
            }
            
            Section {
                Text("Here is an example of a section footer")
            } header: {
                Text("Total: $5,600.00").bold()
            }
        }
    }
}

#Preview {
    Form_HeadersAndFooters()
}

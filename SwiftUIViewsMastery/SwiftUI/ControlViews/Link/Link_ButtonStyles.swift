//
//  Link_ButtonStyles.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 16.04.2025.
//

import SwiftUI

struct Link_ButtonStyles: View {
    var body: some View {
        VStack(spacing: 40) {
            HeaderView("Link",
                       subtitle: "Button Styles",
                       desc: "You can use any of the same styling options that you also use on buttons.")
            Link("Go to Apple", destination: URL(string: "https://www.apple.com")!)
                .buttonStyle(.bordered)
            
            Link("Call Now", destination: URL(string: "tel: 8005551234")!)
                .buttonStyle(.bordered)
                .buttonBorderShape(.capsule)
                .controlSize(.large)
            
            Link("Email Me", destination: URL(string: "mailto:myemail@swiftui.com")!)
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.roundedRectangle)
                .controlSize(.large)
                .tint(.mint)
            
            Link("Message Me", destination: URL(string: "sms:+18885551212&body=Hello")!)
                .buttonStyle(.borderedProminent)
            
            Spacer()
        }
        .font(.title)
    }
}

#Preview {
    Link_ButtonStyles()
}

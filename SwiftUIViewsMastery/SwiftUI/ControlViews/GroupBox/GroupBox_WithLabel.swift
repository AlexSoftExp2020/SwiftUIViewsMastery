//
//  GroupBox_WithLabel.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 14.04.2025.
//

import SwiftUI

struct GroupBox_WithLabel: View {
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        VStack(spacing: 10) {
            HeaderView("GroupBox",
                       subtitle: "With Label",
                       desc: "Instead of using your own text label, the GroupBox has one built in.",
                       back: .blue,
                       textColor: .white)
            
            GroupBox("Login (Default text format)") {
                TextField("Username", text: $username)
                    .textFieldStyle(.roundedBorder)
                SecureField("Password", text: $username)
                    .textFieldStyle(.roundedBorder)
            }
            
            DescView("You can override the default label formatting.",
                     back: .blue,
                     textColor: .white)
            
            GroupBox {
                TextField("Username", text: $username)
                    .textFieldStyle(.roundedBorder)
                TextField("Password", text: $username)
                    .textFieldStyle(.roundedBorder)
            } label: {
                Text("Reset Password")
                    .font(.title2)
                    .fontWeight(.light)
            }
        }
        .font(.title)
    }
}

#Preview {
    GroupBox_WithLabel()
}

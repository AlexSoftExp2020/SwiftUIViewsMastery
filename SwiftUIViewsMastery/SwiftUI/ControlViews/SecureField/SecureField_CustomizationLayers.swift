//
//  SecureField_CustomizationLayers.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 20.05.2025.
//

import SwiftUI

struct SecureField_CustomizationLayers: View {
    @State private var userName = ""
    @State private var password = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Text("SeureField")
                .font(.largeTitle)
            Text("Customization Layers")
                .font(.title)
                .foregroundStyle(.gray)
            Text("You can also add a background to the SecureField. It's all the same idea: adjust the layers.")
            
            SecureField("password", text: $password)
                .foregroundStyle(Color.white)
                .frame(height: 40)
                .padding(.horizontal)
                .background {
                    Capsule()
                        .foregroundStyle(.purple)
                }
                .padding(.horizontal)
            
            Image("SecureFieldLayers")
            Text("The highlighted layer in that image is the actual text field layer of the view.")
                .font(.title)
                .padding(.horizontal)
        }
    }
}

#Preview {
    SecureField_CustomizationLayers()
}

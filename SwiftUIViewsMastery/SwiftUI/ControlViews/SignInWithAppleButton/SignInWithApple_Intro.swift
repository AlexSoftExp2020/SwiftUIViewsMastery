//
//  SignInWithApple_Intro.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 26.05.2025.
//

import SwiftUI
import AuthenticationServices

struct SignInWithApple_Intro: View {
    var body: some View {
        VStack(spacing: 15) {//
            HeaderView("SignInWithAppleButton",
                       subtitle: "Introduction",
                       desc: "This view allows you to display Apple's sign in, continue and sign up buttons.")
            VStack {
                Text("Sign In")
                SignInWithAppleButton(.signIn) { request in } onCompletion: { result in }
                    .frame(height: 50)

                Text("Continue")
                SignInWithAppleButton(.continue) { request in } onCompletion: { result in }
                    .frame(height: 50)
                
                Text("Sign Up")
                SignInWithAppleButton(.signUp) { request in } onCompletion: { result in }
                    .frame(height: 50)
                    .shadow(radius: 8, y: 12)
            }
            .padding(.horizontal)
        }
        .font(.title)
    }
}

#Preview {
    SignInWithApple_Intro()
}

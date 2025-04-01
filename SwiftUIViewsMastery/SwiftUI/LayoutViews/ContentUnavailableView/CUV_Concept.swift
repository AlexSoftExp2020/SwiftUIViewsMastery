//
//  CUV_Concept.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 01.04.2025.
//

import SwiftUI

struct CUV_Concept: View {
    var body: some View {
        ContentUnavailableView("Title",
                               systemImage: "paintbrush",
                               description: Text("Description (Optinal)"))
    }
}

#Preview {
    CUV_Concept()
}

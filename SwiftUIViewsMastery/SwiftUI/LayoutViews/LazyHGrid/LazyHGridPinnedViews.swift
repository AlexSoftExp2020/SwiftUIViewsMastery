//
//  LazyHGridPinnedViews.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 25.03.2025.
//

import SwiftUI

//struct LazyHGridPinnedViews: View {
//    @State private var teams = Data.getTeams()
//    var body: some View {        VStack(spacing: 15) {
//        HeaderView("LazyHGrid",
//                   subtitle: "Pinned Views",
//                   desc: "LazyHGrids can also have section headers and section footers that can be pinned so they only scroll when the next header/footer comes.",
//                   back: .yellow)
//        let rows = [GridItem(.adaptive(minimum: 150, maximum: 300))]
//        ScrollView(.horizontal) {
//            LazyHGrid(rows: rows, pinnedViews: [.sectionHeaders, .sectionFooters]) {
//                ForEach(teams) { team in
//                    Section {
//                        ForEach(team.people) { person in
//                            Image("\(person.imageName)")
//                                .resizable()
//                                .aspectRatio(contentMode: .fill)
//                        }
//                    } header: {
//                        TeamHeaderHGridView(team: team)
//                    } footer: {
//                        TeamFooterHGridView(team: team)
//                    }
//                }
//            }
//        }
//    }
//    .font(.title)
//    }
//}
//
//#Preview {
//    LazyHGridPinnedViews()
//}

//
//  LazyVGrid_PinnedViews.swift
//  SwiftUIViewsMastery
//
//  Created by Oleksii on 27.03.2025.
//

import SwiftUI

//struct LazyVGrid_PinnedViews: View {
//    @State private var teams = Data.getTeams()
//    var body: some View {
//        VStack(spacing: 15) {
//            HeaderView("LazyVGrid",
//                       subtitle: "Pinned Views",
//                       desc: "LazyVGrids can also have section headers and section footers that can be pinned so they only scroll when the next header/footer comes.")
//            let cols = [GridItem(.adaptive(minimum: 100, maximum: 200))]
//            ScrollView {                LazyVGrid(columns: cols, pinnedViews: [.sectionHeaders, .sectionFooters]) {
//                ForEach(teams) { team in
//                    Section(header: TeamHeaderVGridView(team: team),
//                            footer: TeamFooterVGridView(team: team)) {
//                        ForEach(team.people) { person in
//                            Image("\(person.imageName)")
//                                .resizable()
//                                .aspectRatio(contentMode: .fill)
//                        }
//                    }
//                }
//            }
//            }
//            Spacer()
//        }
//        .font(.title)
//    }
//}
//
//#Preview {
//    LazyVGrid_PinnedViews()
//}

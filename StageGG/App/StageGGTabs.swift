//
//  StageGGTabs.swift
//  StageGG
//
//  Created by Evan Teters on 4/9/21.
//

import SwiftUI

struct StageGGTabs: View {
    var body: some View {
        TabView {
            StageView()
                .tabItem {
                    Label("Stages", systemImage: "list.dash")
                }

            RulesView()
                .tabItem {
                    Label("Rules", systemImage: "square.and.pencil")
                }
        }
    }
}

struct StageGGTabs_Previews: PreviewProvider {
    static var previews: some View {
        StageGGTabs()
    }
}

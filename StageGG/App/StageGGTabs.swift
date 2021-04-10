//
//  StageGGTabs.swift
//  StageGG
//
//  Created by Evan Teters on 4/9/21.
//

import SwiftUI

struct StageGGTabs: View {
    
    var stages: [Stage]
    
    var body: some View {
        TabView {
            StageView(stages: stages)
                .tabItem {
                    Label("Stages & Bans", image: "Stage Icon Vector")
                }

            StageListView(stages: stages)
                .tabItem {
                    Label("Stage List", systemImage: "list.bullet")
                }
        }
    }
}

struct StageGGTabs_Previews: PreviewProvider {
    static var previews: some View {
        StageGGTabs(stages: stages)
    }
}

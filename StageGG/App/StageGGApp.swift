//
//  StageGGApp.swift
//  StageGG
//
//  Created by Evan Teters on 4/9/21.
//

import SwiftUI

// TODO Pass this list into StageGGTabs so it can go into the stage Tab.
// We might want to make an overarching "ViewModel" that has a lot of the stuff we need in it
// Because we'll also be passing in whatever configuration the Stage selecting/Rules tab needs

var stages: [Stage] = [
    Stage(id: 0, name: "Final Destination", stageInfo: StageInfo(sizeClass: .Medium, category: .Starters), imageName: "fd_stage_name" ),
    Stage(id: 1, name: "Battlefield", stageInfo: StageInfo(sizeClass: .Medium, category: .Starters), imageName: "fd_stage_name" )
]

@main
struct StageGGApp: App {
    var body: some Scene {
        WindowGroup {
            StageGGTabs(stages: stages)
        }
    }
}



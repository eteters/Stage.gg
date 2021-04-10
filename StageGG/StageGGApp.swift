//
//  StageGGApp.swift
//  StageGG
//
//  Created by Evan Teters on 4/9/21.
//

import SwiftUI

var landmarks: [Stage] = [
    Stage(id: 0, name: "Final Destination", stageInfo: StageInfo(sizeClass: .Medium), imageName: "fd_stage_name" ),
    Stage(id: 1, name: "Final Destination 2", stageInfo: StageInfo(sizeClass: .Medium), imageName: "fd_stage_name" )
]

@main
struct StageGGApp: App {
    var body: some Scene {
        WindowGroup {
            StageGGTabs()
        }
    }
}



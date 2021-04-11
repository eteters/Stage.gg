//
//  StageModels.swift
//  StageGG
//
//  Created by Evan Teters on 4/9/21.
//

import SwiftUI

// TODO: Add all the StageInfo we want

class AppViewModel: ObservableObject {
    @Published var stages: [Stage]
    
    init(stages: [Stage]) {
        self.stages = stages
    }
}

struct Stage: Identifiable, Hashable {
    let id = UUID()

    var name: String
    
    var isEnabled: Bool
    var isBanned: Bool = false

    var stageInfo: StageInfo

    var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    init(name:String, stageInfo: StageInfo, imageName: String, isEnabled: Bool = true, isBanned: Bool = false) {
        self.name = name
        self.stageInfo = stageInfo
        self.imageName = imageName
        self.isEnabled = isEnabled
    }
    
    // Hashable
    static func == (lhs: Stage, rhs: Stage) -> Bool {
        return lhs.id == rhs.id
    }
    
    // Preview Generators
    static func oneStage() -> Stage {
        return Stage(name: "Final Destination", stageInfo: StageInfo(sizeClass: .Medium, category: .Starters, description: "platforms", loves: "Mario", hates: "Luigi"), imageName: "fd_stage_image" )
    }
    
    static func multiStage(count: Int) -> [Stage] {
        let stage = oneStage()
        return Array.init(repeating: stage, count: count)
    }
    
}

struct StageInfo: Hashable {
    var sizeClass: StageSizeClass
    
    var category: StageCategory
    
    var description: String
    
    var loves: String
    
    var hates: String
}

enum StageSizeClass {
    case Large
    case Medium
    case Small
}

enum StageCategory {
    case Starters
    case CounterPicks
    case Other
}


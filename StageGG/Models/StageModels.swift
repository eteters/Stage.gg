//
//  StageModels.swift
//  StageGG
//
//  Created by Evan Teters on 4/9/21.
//

import SwiftUI

// TODO: Add all the StageInfo we want 

struct Stage {
    var id: Int
    var name: String
    
    var isEnabled: Bool

    var stageInfo: StageInfo

    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    init(id:Int, name:String, stageInfo: StageInfo, imageName: String, isEnabled: Bool = true) {
        self.id = id
        self.name = name
        self.stageInfo = stageInfo
        self.imageName = imageName
        self.isEnabled = isEnabled
    }
}

struct StageInfo {
    var sizeClass: StageSizeClass
    
    var category: StageCategory
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


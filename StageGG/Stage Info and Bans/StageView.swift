//
//  StageView.swift
//  StageGG
//
//  Created by Evan Teters on 4/9/21.
//

import SwiftUI

// TODO make Vstack into a scrollable list of items that can be tapped
// StageView should take in a list or an object with a list on it 

struct StageView: View {
    static let title = "Stages"

    @ObservedObject var viewModel: AppViewModel
    
    @State private var stageType = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Picker(selection: $stageType, label: Text("Stage Ban Phase")) {
                        
                        Text("Starters").tag(0)
                        Text("Counterpicking").tag(1)
                        
                    }.pickerStyle(SegmentedPickerStyle())
                    .padding()
                    
                    ForEach(viewModel.stages) { stage in
                        
                        if(stageType == 0 && stage.stageInfo.category == .Starters && stage.isEnabled) {
                            StageRow(stage: stage )
                        } else if (stageType == 1 && stage.isEnabled) {
                            StageRow(stage: stage )
                        }
                    }
                }
            }.navigationTitle(StageView.title)
        }
    }
}

struct StageView_Preview: PreviewProvider {
    static var previews: some View {
        StageView(viewModel: AppViewModel(stages: Stage.multiStage(count: 5)))
    }
}

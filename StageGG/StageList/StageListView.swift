//
//  RulesView.swift
//  StageGG
//
//  Created by Evan Teters on 4/9/21.
//

import SwiftUI

struct StageListView: View {
    
    @ObservedObject var viewModel: AppViewModel
    
    @State private var multiSelection = Set<UUID>()
        
    var body: some View {
        
        NavigationView {
               List(selection: $multiSelection) {
                Section(header: Text("Starters")) {
                    ForEach (viewModel.stages.filter { $0.stageInfo.category == .Starters } ) { stage in
                        Text(stage.name)
                    }
                }
                
                Section(header: Text("CounterPicks")) {
                    ForEach(viewModel.stages.filter( {$0.stageInfo.category == .CounterPicks } )) { stage in
                        Text(stage.name)
                    }
                }
               }
               .onChange(of: multiSelection) { (uuids) in
                for (index, stage) in viewModel.stages.enumerated() {
                    if uuids.contains(stage.id) {
                        viewModel.stages[index].isEnabled = true
                    } else {
                        viewModel.stages[index].isEnabled = false
                    }
                }
               }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Stage List")
            .environment(\.editMode, Binding.constant(EditMode.active))
            //https://stackoverflow.com/questions/56691630/swiftui-state-var-initialization-issue
            .onAppear(perform: {
                multiSelection = Set(
                    viewModel.stages.compactMap({ (stage) -> UUID? in
                        if (stage.isEnabled) {
                            return stage.id
                        } else {
                            return nil
                        }
                    })
                )
               })
               
        }
    }
}

struct RulesView_Previews: PreviewProvider {
    static var previews: some View {
        StageListView(viewModel: AppViewModel(stages: Stage.multiStage(count: 5)))
    }
}



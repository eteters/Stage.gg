//
//  RulesView.swift
//  StageGG
//
//  Created by Evan Teters on 4/9/21.
//

import SwiftUI

struct StageListView: View {
    
    var stages: [Stage]
    
    @State private var multiSelection = Set<UUID>()
        
    var body: some View {
        
        NavigationView {
               List(selection: $multiSelection) {
                Section(header: Text("Starters")) {
                    ForEach (stages.filter { $0.stageInfo.category == .Starters } ) { stage in
                        Text(stage.name)
                    }
                }
                
                Section(header: Text("CounterPicks")) {
                    ForEach(stages.filter( {$0.stageInfo.category == .CounterPicks } )) { stage in
                        Text(stage.name)
                    }
                }
                
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Stage List")
            .environment(\.editMode, Binding.constant(EditMode.active))
            //https://stackoverflow.com/questions/56691630/swiftui-state-var-initialization-issue
            .onAppear(perform: {
                multiSelection = Set(
                    stages.compactMap({ (stage) -> UUID? in
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
        StageListView(stages: stages)
    }
}



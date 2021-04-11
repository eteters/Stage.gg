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
    
    //@State private var singleSelection : UUID?
    
    var body: some View {
        
        NavigationView{
            
            
            
            
            
            
            List(selection: $multiSelection){
                Section(header: Text("Starters")){
                    ForEach (stages.filter{$0.stageInfo.category == .Starters}) { stage in
                        Text(stage.name)
                    }
                }
                
                Section(header: Text("CounterPicks")){
                    ForEach(stages.filter({$0.stageInfo.category == .CounterPicks})) { stage in
                        Text(stage.name)
                    }
                }
                
            }
            
            
            
            
            
            
            
            
                
            
//            Section(header: Text("Starters")){
//                List(stages, selection: $multiSelection){
//
//                }
//            }
            
//            VStack{
//
//                Section(header: Text("Starters")){
//                    List(stages, selection: $multiSelection){
//
//                        Text($0.name)
//
//
//                    }
//                }
//
//                Section(header: Text("CounterPick")){
//
//                }
//
//
//            }
            
            
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Stage List")
            .toolbar { EditButton() }
            
            
//            List(stages, selection: $multiSelection) {
//                Text($0.name)
//
//            }
            
        
        }
        
        
        
        
        
        
    }
    
}

struct RulesView_Previews: PreviewProvider {
    static var previews: some View {
        StageListView(stages: stages)
    }
}



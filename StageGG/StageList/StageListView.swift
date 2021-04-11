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
        
        NavigationView{
            List(stages, selection: $multiSelection) {
                Text($0.name)
                
            }
            .navigationTitle("Starters")
            .toolbar { EditButton() }
        }
        
        
        
        
        
    }
    
}

struct RulesView_Previews: PreviewProvider {
    static var previews: some View {
        StageListView(stages: stages)
    }
}



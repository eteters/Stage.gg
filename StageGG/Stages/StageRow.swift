//
//  StageRow.swift
//  StageGG
//
//  Created by Evan Teters on 4/9/21.
//

import SwiftUI

// TODO make stagerow look correct

struct StageRow: View {
    var body: some View {
        HStack {
            // Image
            Image(uiImage: UIImage(named: "fd_stage_image")!).resizable()
                .frame(height: 112)
            // image asset for check?
            
        }
    }
}

struct StageRow_Previews: PreviewProvider {
    static var previews: some View {
        StageRow()
    }
}

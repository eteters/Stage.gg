//
//  StageRow.swift
//  StageGG
//
//  Created by Evan Teters on 4/9/21.
//

import SwiftUI

// TODO make stagerow look correct

struct StageRow: View {
    
    // Define the properties we need for a row
    struct Props {
        let id: Int
        let imageName: String
        var isBanned: Bool = false
    }
    // instance of our props
    var props: Props
    
    var body: some View {
        HStack {
            Image(uiImage: UIImage(named: props.imageName)!)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 112)
            
            // note that the checkbox isn't passing up the ban state rn
            StageBanBox(isBanned: props.isBanned)
                .padding()
        }
    }
}

struct StageRow_Previews: PreviewProvider {
    static var previews: some View {
        StageRow(props: StageRow.Props(id: 0, imageName: "fd_stage_image"))
    }
}

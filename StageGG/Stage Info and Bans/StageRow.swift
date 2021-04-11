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
        
        var image: Image {
            Image(imageName)
        }
        
        init(stage: Stage) {
            id = stage.id
            imageName = stage.imageName
            isBanned = stage.isBanned
        }
    }
    // instance of our props
    var props: Props
    
    var body: some View {
        HStack {
            props.image
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 112)
                .clipped()
            
            // note that the checkbox isn't passing up the ban state rn
            StageBanBox(isBanned: props.isBanned)
                .padding()
            Spacer()
        }
    }
}

struct StageRow_Previews: PreviewProvider {
    static var previews: some View {
        StageRow(props: StageRow.Props(stage: stages[0]))
    }
}

//
//  MosaicView.swift
//  GenerativeArt
//
//  Created by Justin Zack Wei on 2023-10-24.
//

import SwiftUI

struct MosaicView: View {
    var body: some View {
        ZStack{
            Grid(horizontalSpacing: 0, verticalSpacing: 0){
                
                ForEach(1..<4){ j in
                    GridRow{
                        ForEach(1..<4) { i in
                            TileView()
                        }
                    }
                    
                    
                    
                    
                }
            }
        }
    }
}

#Preview {
    MosaicView()
}

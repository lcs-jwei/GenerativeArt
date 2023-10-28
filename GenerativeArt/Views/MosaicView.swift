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
                GridRow{
                    ForEach(1..<4) { i in
                        TileView()
                    }
                }
                GridRow{
                    ForEach(1..<4) { i in
                        TileView()
                    }
                }
                GridRow{
                    ForEach(1..<4) { i in
                        TileView()
                    }
                }

            }
        }
    }
}

#Preview {
    MosaicView()
}

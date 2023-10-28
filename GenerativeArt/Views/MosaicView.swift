//
//  MosaicView.swift
//  GenerativeArt
//
//  Created by Justin Zack Wei on 2023-10-24.
//

import SwiftUI

struct MosaicView: View {
    
    //MARK: Stored Properties
    @State var columns = 7.0
    @State var rows = 4
    //MARK: Computed Properties
    
    var body: some View {
        VStack{
            Grid(horizontalSpacing: 0, verticalSpacing: 0){
                
                ForEach(0..<rows, id:\.self){ j in
                    GridRow{
                        ForEach(0..<Int(columns), id:\.self) { i in
                            TileView()
                        }
                    }
                    
                    
                    
                    
                }
            }
            Slider(value: $columns, in:1...1000, step: 1.0)
        }
    }
}

#Preview {
    MosaicView()
}

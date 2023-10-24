//
//  TileView.swift
//  GenerativeArt
//
//  Created by Justin Zack Wei on 2023-10-24.
//

import SwiftUI


//MARK: STORED PROPERTIES:
let flipOne = Int.random(in:1...2)


//MARK: COMPUTED PROPERTIES:



struct TileView: View {
    var body: some View {
        VStack {
            
            if flipOne == 1{
                
                TriangleTopRight()
                    .stroke(.black)
                    .aspectRatio(1.0, contentMode: .fit)
                TriangleBottomLeft()
                    .stroke(.black)
                    .aspectRatio(1.0, contentMode: .fit)
            } else{
                TriangleTopLeft()
                    .stroke(.black)
                    .aspectRatio(1.0, contentMode: .fit)
                TriangleBottomRight()
                    .stroke(.black)
                    .aspectRatio(1.0, contentMode: .fit)
            }
        }
        .padding()
    }
}
#Preview {
    TileView()
}

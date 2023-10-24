//
//  TileView.swift
//  GenerativeArt
//
//  Created by Justin Zack Wei on 2023-10-24.
//

import SwiftUI


struct TileView: View {
    var body: some View {
        VStack {
            
            TriangleTopRight()
                .stroke(.black)
                .aspectRatio(1.0, contentMode: .fit)
            TriangleBottomLeft()
                .stroke(.black)
                .aspectRatio(1.0, contentMode: .fit)
            TriangleTopLeft()
                .stroke(.black)
                .aspectRatio(1.0, contentMode: .fit)
            TriangleBottomRight()
                .stroke(.black)
                .aspectRatio(1.0, contentMode: .fit)
                    }
        .padding()
    }
}
#Preview {
    TileView()
}

//
//  TileView.swift
//  GenerativeArt
//
//  Created by Justin Zack Wei on 2023-10-24.
//

import SwiftUI

enum Coin: Int{
    case heads = 1
    case tails = 2
    
    static func flip() -> Coin{
        let decision = Bool.random()
        
        if decision == true{
            return .heads
        }else {
            return .tails
        }
    }
}

//MARK: STORED PROPERTIES:
let flipOne = Coin.flip()


//MARK: COMPUTED PROPERTIES:



struct TileView: View {
    var body: some View {
        ZStack {
            
            if flipOne == .heads{
                
                TriangleTopRight()
                    .stroke(.black)
                    .fill(.clear)
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

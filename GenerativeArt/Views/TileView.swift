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




struct TileView: View {
    //MARK: STORED PROPERTIES:
    let flipOne = Coin.flip()
    let markerOne = Color.black
    let markerTwo = Color.red
    let flipForColor = Coin.flip()


    //MARK: COMPUTED PROPERTIES:
    
    var colorOne: Color{
        return flipForColor == .heads ? markerOne : markerTwo
        
    }
    var colorTwo: Color {
        return flipForColor == .heads ? markerTwo : markerOne
    }
    var body: some View {
        ZStack {
            
            if flipOne == .heads{
                
                TriangleTopRight()
                    .stroke(.black)
                    .fill(colorOne)
                    .aspectRatio(1.0, contentMode: .fit)
                TriangleBottomLeft()
                    .stroke(.black)
                    .fill(colorTwo)
                    .aspectRatio(1.0, contentMode: .fit)
            } else{
                TriangleTopLeft()
                    .stroke(.black)
                    .fill(colorOne)
                    .aspectRatio(1.0, contentMode: .fit)
                TriangleBottomRight()
                    .stroke(.black)
                    .fill(colorTwo)
                    .aspectRatio(1.0, contentMode: .fit)
            }
        }
        .padding()
    }
}
#Preview {
    TileView()
}

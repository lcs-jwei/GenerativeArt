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
    let flipTwo = Coin.flip()
    let flipThree = Coin.flip()
    let markerOne = Color.red
    let markerTwo = Color.black
    let flipForColor = Coin.flip()


    //MARK: COMPUTED PROPERTIES:
    
    var colorOne: Color{
        return flipForColor == .heads ? markerOne : markerTwo
        
    }
    var colorTwo: Color {
        return flipForColor == .heads ? markerTwo : markerOne
    }
    
    var remainingTriangleFillColor: Color {
        if flipThree == .heads{
            return colorTwo
        }else{
            return .clear
        }
    }
    
    var body: some View {
        ZStack {
            
            if flipOne == .heads{
                
                TriangleTopRight()
                    .stroke(.black)
                    .fill(flipTwo == .heads ? colorOne : remainingTriangleFillColor)
                    .aspectRatio(1.0, contentMode: .fit)
                TriangleBottomLeft()
                    .stroke(.black)
                    .fill(flipTwo == .tails ? colorOne : remainingTriangleFillColor)
                    .aspectRatio(1.0, contentMode: .fit)
            } else{
                TriangleTopLeft()
                    .stroke(.black)
                    .fill(flipTwo == .heads ? colorOne : remainingTriangleFillColor)
                    .aspectRatio(1.0, contentMode: .fit)
                TriangleBottomRight()
                    .stroke(.black)
                    .fill(flipTwo == .tails ? colorOne : remainingTriangleFillColor)
                    .aspectRatio(1.0, contentMode: .fit)
            }
        }
        
    }
}
#Preview {
    TileView()
}

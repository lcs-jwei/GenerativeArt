//
//  TileView.swift
//  GenerativeArt
//
//  Created by Justin Zack Wei on 2023-10-24.
//

import SwiftUI

struct TriangleTopRight: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        //define the path
        path.move(to: CGPoint(x: rect.maxX, y: rect.minY))
        
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))
        
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        
        //return the path
        return path
    }
    
    
}
struct TriangleBottomRight: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        //define the path
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))
        
        //return the path
        return path
    }
    
    
}
struct TriangleTopLeft: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        //define the path
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        
        path.addLine(to: CGPoint(x: rect.minX, y: rect.minY))
        
        //return the path
        return path
    }
    
    
}

struct TileView: View {
    var body: some View {
        VStack {
            TriangleTopLeft()
                .aspectRatio(1.0, contentMode: .fit)
                    }
        .padding()
    }
}
#Preview {
    TileView()
}

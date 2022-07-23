//
//  Arrow.swift
//  Drawing
//
//  Created by Meitar Basson on 23/07/2022.
//

import SwiftUI

struct Arrow: Shape {
    
    var arrowThickness: Double = 1
    var arrowLength: Double = 1
    


    var animatableData: AnimatablePair<Double, Double> {
        get { AnimatablePair(arrowThickness, arrowLength) }
        set {
            arrowThickness = newValue.first
            arrowLength = newValue.second
        }
    }

    
    func path(in rect: CGRect) -> Path {
        Path { path in

            path.addLines( [
                CGPoint(x: rect.midX - arrowThickness / 2, y: rect.maxY),
                CGPoint(x: rect.midX + arrowThickness / 2, y: rect.maxY),
                CGPoint(x: rect.midX + arrowThickness / 2, y: rect.maxY - arrowLength),
                CGPoint(x: rect.midX + (arrowThickness / 2 + arrowThickness * 0.3), y: rect.maxY - arrowLength),
                CGPoint(x: rect.midX, y: rect.maxY - arrowLength * 1.8),
                CGPoint(x: rect.midX - (arrowThickness / 2 + arrowThickness * 0.3), y: rect.maxY - arrowLength),
                CGPoint(x: rect.midX - (arrowThickness / 2), y: rect.maxY - arrowLength),
                CGPoint(x: rect.midX - (arrowThickness / 2), y: rect.maxY),
            ])
            path.closeSubpath()
        }
    }
}

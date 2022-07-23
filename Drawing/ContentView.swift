//
//  ContentView.swift
//  Drawing
//
//  Created by Meitar Basson on 21/07/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var arrowThickness: Double = 100
    @State private var arrowLength: Double = 100
    
    @State private var colorCycle: Double = 3
    
    var body: some View {
        
        VStack {
            Arrow(arrowThickness: arrowThickness, arrowLength: arrowLength)
                .stroke(lineWidth: 3)
                .onTapGesture {
                    withAnimation (.linear(duration: 2)) {
                        arrowThickness = arrowThickness * 1.2
                        arrowLength = arrowLength * 1.3
                    }
                }

        }
        .frame(width: 300, height: 300)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

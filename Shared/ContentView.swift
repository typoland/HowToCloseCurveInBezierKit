//
//  ContentView.swift
//  Shared
//
//  Created by Łukasz Dziedzic on 07/05/2022.
//

import SwiftUI
import BezierKit

struct ContentView: View {
    var path: SwiftUI.Path {
        
        let curvesOfO: [[BezierCurve]] = [
           [ CubicCurve(p0: CGPoint(x: 118.0, y: 350.0),
                       p1: CGPoint(x: 187.0, y: 541.0),
                       p2: CGPoint(x: 233.0, y: 604.0),
                       p3: CGPoint(x: 300.0, y: 604.0)) as BezierCurve,
            CubicCurve(p0: CGPoint(x: 300.0, y: 604.0),
                       p1: CGPoint(x: 505.0, y: 604.0),
                       p2: CGPoint(x: 551.0, y: 541.0),
                       p3: CGPoint(x: 481.0, y: 350.0)) as BezierCurve,
            CubicCurve(p0: CGPoint(x: 481.0, y: 350.0),
                       p1: CGPoint(x: 481.0, y: 158.0),
                       p2: CGPoint(x: 436.0, y: 95.0),
                       p3: CGPoint(x: 300.0, y: 95.0)) as BezierCurve,
            CubicCurve(p0: CGPoint(x: 300.0, y: 95.0),
                       p1: CGPoint(x: 163.0, y: 95.0),
                       p2: CGPoint(x: 118.0, y: 158.0),
                       p3: CGPoint(x: 118.0, y: 350.0)) as BezierCurve],
            [CubicCurve(p0: CGPoint(x: 618.0, y: 350.0),
                       p1: CGPoint(x: 702.0, y: 580.0),
                       p2: CGPoint(x: 590.0, y: 705.0),
                        p3: CGPoint(x: 300.0, y: 705.0)) as BezierCurve,
            CubicCurve(p0: CGPoint(x: 300.0, y: 705.0),
                       p1: CGPoint(x: 177.0, y: 705.0),
                       p2: CGPoint(x: 65.0, y: 580.0),
                       p3: CGPoint(x: -18.0, y: 350.0)) as BezierCurve,
             CubicCurve(p0: CGPoint(x: -18.0, y: 350.0),
                        p1: CGPoint(x: -18.0, y: 119.0),
                        p2: CGPoint(x: 93.0, y: -5.0),
                        p3: CGPoint(x: 300.0, y: -5.0)) as BezierCurve,
             CubicCurve(p0: CGPoint(x: 300.0, y: -5.0),
                        p1: CGPoint(x: 506.0, y: -5.0),
                        p2: CGPoint(x: 618.0, y: 119.0),
                        p3: CGPoint(x: 618.0, y: 350.0)) as BezierCurve]]
        var components = [PathComponent]()
        
        for curve in curvesOfO {
            components.append(PathComponent(curves: curve))
        }
        
        return Path(BezierKit.Path(components: components).cgPath)
    }
    
    var body: some View {
        path.stroke(style: StrokeStyle(lineWidth: 75, lineCap: .butt, lineJoin: CGLineJoin.bevel, miterLimit: 6))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

//
//  TransitionType.swift
//  PushTransition
//
//  Created by Iman Mosayyebi on 2023-05-16.
//

import UIKit

public enum TransitionType {
    case fade
    case rotate
    case moveIn(_ side: CATransitionSubtype = .fromLeft)
    case push(_ side: CATransitionSubtype = .fromRight)
    case reveal(_ side: CATransitionSubtype = .fromLeft)
    case flip(_ side: CATransitionSubtype = .fromLeft)
    case alignedFlip(_ side: CATransitionSubtype = .fromLeft)
    case pageCurl(_ side: CATransitionSubtype = .fromLeft)
    case pageUnCurl(_ side: CATransitionSubtype = .fromLeft)
    case cube(_ side: CATransitionSubtype = .fromLeft)
    case alignedCube(_ side: CATransitionSubtype = .fromLeft)
    case none
    case `default`
}

extension TransitionType {
    public static var allCases: [[(title: String, type: TransitionType)]] {
        return [
            [("no transition or animation", .none), ("default navigation", .default), ("fade transition", .fade), ("rotate transition", .rotate)],
            [("flip from left", .flip(.fromLeft)), ("flip from right", .flip(.fromRight)), ("flip from top", .flip(.fromTop)), ("flip from bottom", .flip(.fromBottom)),
             ("alignedFlip from left", .alignedFlip(.fromLeft)), ("alignedFlip from right", .alignedFlip(.fromRight)), ("alignedFlip from top", .alignedFlip(.fromTop)), ("alignedFlip from bottom", .alignedFlip(.fromBottom))],
            [("pageCurl from left", .pageCurl(.fromLeft)), ("pageCurl from right", .pageCurl(.fromRight)), ("pageCurl from top", .pageCurl(.fromTop)), ("pageCurl from bottom", .pageCurl(.fromBottom)),
             ("pageUnCurl from left", .pageUnCurl(.fromLeft)), ("pageUnCurl from right", .pageUnCurl(.fromRight)), ("pageUnCurl from top", .pageUnCurl(.fromTop)), ("pageUnCurl from bottom", .pageUnCurl(.fromBottom))],
            
            [("cube from left", .cube(.fromLeft)), ("cube from right", .cube(.fromRight)), ("cube from top", .cube(.fromTop)), ("cube from bottom", .cube(.fromBottom)),
             ("alignedCube from left", .alignedCube(.fromLeft)), ("alignedCube from right", .alignedCube(.fromRight)), ("alignedCube from top", .alignedCube(.fromTop)), ("alignedCube from bottom", .alignedCube(.fromBottom))],
            [("move in from left", .moveIn(.fromLeft)), ("move in from right", .moveIn(.fromRight)), ("move in from top", .moveIn(.fromTop)), ("move in from bottom", .moveIn(.fromBottom))],
            [("push from left", .push(.fromLeft)), ("push from right", .push(.fromRight)), ("push from top", .push(.fromTop)), ("push from bottom", .push(.fromBottom))],
            [("reveal from left", .reveal(.fromLeft)), ("reveal from right", .reveal(.fromRight)), ("reveal from top", .reveal(.fromTop)), ("reveal from bottom", .reveal(.fromBottom))]
        ]
    }
}

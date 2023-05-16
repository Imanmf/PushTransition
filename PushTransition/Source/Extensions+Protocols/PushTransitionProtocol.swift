//
//  PushTransition.swift
//  PushTransition
//
//  Created by Iman Mosayyebi on 2023-05-16.
//

import UIKit

public protocol PushTransition {
    func pushViewController(_ viewController: UIViewController, type: TransitionType)
    func popViewController(type: TransitionType)
}

extension PushTransition {
    internal func transition(_ type: TransitionType) -> CATransition? {
        let transition = CATransition()
        transition.duration = 0.3
        switch type {
        case .fade:
            transition.type = CATransitionType.fade
        case .moveIn(let side):
            transition.type = .moveIn
            transition.subtype = side
        case .push(let side):
            transition.type = .push
            transition.subtype = side
        case .reveal(let side):
            transition.type = .reveal
            transition.subtype = side
        case .flip(let side):
            transition.type = CATransitionType(rawValue: "flip")
            transition.subtype = side
        case .alignedFlip(let side):
            transition.type = CATransitionType(rawValue: "alignedFlip")
            transition.subtype = side
        case .pageCurl(let side):
            transition.type = CATransitionType(rawValue: "pageCurl")
            transition.subtype = side
        case .pageUnCurl(let side):
            transition.type = CATransitionType(rawValue: "pageUnCurl")
            transition.subtype = side
        case .cube(let side):
            transition.type = CATransitionType(rawValue: "cube")
            transition.subtype = side
        case .alignedCube(let side):
            transition.type = CATransitionType(rawValue: "alignedCube")
            transition.subtype = side
        case .rotate:
            transition.type = CATransitionType(rawValue: "rotate")
        default:
            return nil
        }
        return transition
    }
    
    internal func pushWithoutTransition(_ navigationController: UINavigationController,_ viewController: UIViewController, type: TransitionType) {
        switch type {
        case .none:
            navigationController.pushViewController(viewController, animated: false)
        default:
            navigationController.pushViewController(viewController, animated: true)
        }
    }
    
    internal func popWithoutTransition(_ navigationController: UINavigationController, type: TransitionType) {
        switch type {
        case .none:
            navigationController.popViewController(animated: false)
        default:
            navigationController.popViewController(animated: true)
        }
    }
}

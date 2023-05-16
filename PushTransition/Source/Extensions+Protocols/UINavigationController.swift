//
//  UINavigationController.swift
//  PushTransition
//
//  Created by Iman Mosayyebi on 2023-05-16.
//

import UIKit

extension PushTransition where Self: UINavigationController {
    public func pushViewController(_ viewController: UIViewController, type: TransitionType) {
        guard let transition = transition(type) else {
            pushWithoutTransition(self, viewController, type: type)
            return
        }
        self.view.layer.add(transition, forKey:nil)
        self.pushViewController(viewController, animated: false)
    }
    
    public func popViewController(type: TransitionType) {
        guard let transition = transition(type) else {
            popWithoutTransition(self, type: type)
            return
        }
        self.view.layer.add(transition, forKey:nil)
        self.popViewController(animated: false)
    }
}

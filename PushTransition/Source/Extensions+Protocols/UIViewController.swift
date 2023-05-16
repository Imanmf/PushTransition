//
//  UIViewController.swift
//  PushTransition
//
//  Created by Iman Mosayyebi on 2023-05-16.
//

import UIKit

extension PushTransition where Self: UIViewController {
    public func pushViewController(_ viewController: UIViewController, type: TransitionType) {
        guard let navigationController = self.navigationController else { return }
        guard let transition = transition(type) else {
            pushWithoutTransition(navigationController, viewController, type: type)
            return
        }
        navigationController.view.layer.add(transition, forKey:nil)
        navigationController.pushViewController(viewController, animated: false)
    }
    
    public func popViewController(type: TransitionType) {
        guard let navigationController = self.navigationController else { return }
        guard let transition = transition(type) else {
            popWithoutTransition(navigationController, type: type)
            return
        }
        navigationController.view.layer.add(transition, forKey:nil)
        navigationController.popViewController(animated: false)
    }
}

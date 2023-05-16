//
//  SecondViewController.swift
//  Example
//
//  Created by Iman Mosayyebi on 2023-05-16.
//

import UIKit
import PushTransition

class SecondViewController: UIViewController {

    var transitionType: TransitionType?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        switch transitionType {
            
        case .moveIn(.fromBottom):
            transitionType = .moveIn(.fromTop)
        case .moveIn(.fromTop):
            transitionType = .moveIn(.fromBottom)
        case .moveIn(.fromLeft):
            transitionType = .moveIn(.fromRight)
        case .moveIn(.fromRight):
            transitionType = .moveIn(.fromLeft)
            
        case .push(.fromBottom):
            transitionType = .push(.fromTop)
        case .push(.fromTop):
            transitionType = .push(.fromBottom)
        case .push(.fromLeft):
            transitionType = .push(.fromRight)
        case .push(.fromRight):
            transitionType = .push(.fromLeft)
            
        case .reveal(.fromBottom):
            transitionType = .reveal(.fromTop)
        case .reveal(.fromTop):
            transitionType = .reveal(.fromBottom)
        case .reveal(.fromLeft):
            transitionType = .reveal(.fromRight)
        case .reveal(.fromRight):
            transitionType = .reveal(.fromLeft)
            
        case .flip(.fromBottom):
            transitionType = .flip(.fromTop)
        case .flip(.fromTop):
            transitionType = .flip(.fromBottom)
        case .flip(.fromLeft):
            transitionType = .flip(.fromRight)
        case .flip(.fromRight):
            transitionType = .flip(.fromLeft)
            
        case .alignedFlip(.fromBottom):
            transitionType = .alignedFlip(.fromTop)
        case .alignedFlip(.fromTop):
            transitionType = .alignedFlip(.fromBottom)
        case .alignedFlip(.fromLeft):
            transitionType = .alignedFlip(.fromRight)
        case .alignedFlip(.fromRight):
            transitionType = .alignedFlip(.fromLeft)
            
        case .pageCurl(.fromBottom):
            transitionType = .pageUnCurl(.fromBottom)
        case .pageCurl(.fromTop):
            transitionType = .pageUnCurl(.fromTop)
        case .pageCurl(.fromLeft):
            transitionType = .pageUnCurl(.fromLeft)
        case .pageCurl(.fromRight):
            transitionType = .pageUnCurl(.fromRight)
            
        case .pageUnCurl(.fromBottom):
            transitionType = .pageCurl(.fromBottom)
        case .pageUnCurl(.fromTop):
            transitionType = .pageCurl(.fromTop)
        case .pageUnCurl(.fromLeft):
            transitionType = .pageCurl(.fromLeft)
        case .pageUnCurl(.fromRight):
            transitionType = .pageCurl(.fromRight)
            
        case .cube(.fromBottom):
            transitionType = .cube(.fromTop)
        case .cube(.fromTop):
            transitionType = .cube(.fromBottom)
        case .cube(.fromLeft):
            transitionType = .cube(.fromRight)
        case .cube(.fromRight):
            transitionType = .cube(.fromLeft)
            
        case .alignedCube(.fromBottom):
            transitionType = .alignedCube(.fromTop)
        case .alignedCube(.fromTop):
            transitionType = .alignedCube(.fromBottom)
        case .alignedCube(.fromLeft):
            transitionType = .alignedCube(.fromRight)
        case .alignedCube(.fromRight):
            transitionType = .alignedCube(.fromLeft)
            
        default:
            break
        }
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(back))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc private func back() {
        popViewController(type: self.transitionType ?? .fade)
    }
}

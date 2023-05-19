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
    var label: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.text = "press view to pop viewcontroller with transition\nor\npress back button to pop as default."
        lbl.textAlignment = .center
        lbl.numberOfLines = 0
        return lbl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setupLabel()
        
        convertTransitionForPop()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(back))
        view.addGestureRecognizer(tapGesture)
    }
    
    /*
     set transition like back from pervious transition
     */
    private func convertTransitionForPop() {
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
    }
    
    private func setupLabel() {
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        label.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    @objc private func back() {
        popViewController(type: self.transitionType ?? .fade)
    }
}

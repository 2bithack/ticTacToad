//
//  ViewController.swift
//  ticTacToad
//
//  Created by enzo bot on 12/9/16.
//  Copyright © 2016 GarbageGames. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

 

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let boardHeight = view.frame.size.height/3
        let boardWidth = view.frame.size.width/3
        
        for i in 0..<9{
            let squarez = UIView(frame: CGRect.zero)
            squarez.translatesAutoresizingMaskIntoConstraints = false
            squarez.backgroundColor = .white
            squarez.layer.borderColor = UIColor.black.cgColor
            squarez.layer.borderWidth = 3
            view.addSubview(squarez)
            
            NSLayoutConstraint(item: squarez, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 1/3, constant: 0).isActive = true
            NSLayoutConstraint(item: squarez, attribute: .height, relatedBy: .equal, toItem: squarez, attribute: .width, multiplier: 1, constant: 0).isActive = true
            NSLayoutConstraint(item: squarez, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: (boardWidth * CGFloat(i % 3))).isActive = true
       
            if i > 2 && i <= 5 {
                NSLayoutConstraint(item: squarez, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: boardWidth).isActive = true
            }else if i > 5 {
                NSLayoutConstraint(item: squarez, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: (boardWidth * 2)).isActive = true
            }
        }
    }




}


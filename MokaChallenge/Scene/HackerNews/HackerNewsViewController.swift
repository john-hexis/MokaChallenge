//
//  HackerNewsViewController.swift
//  MokaChallenge
//
//  Created by John Harries on 18/2/20.
//  Copyright © 2020 John Harries. All rights reserved.
//

import Foundation
import UIKit

class HackerNewsViewController: UIViewController {
    fileprivate var presenter: HackerNewsPresenterInput?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
}

extension HackerNewsViewController: HackerNewsViewInput {
    func initView() {
        
    }
    
    func initViper() {
        
    }
    
    func deinitView() {
        
    }
    
    
}

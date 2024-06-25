//
//  ViewController.swift
//  SwiftCoordinator
//
//  Created by Angelos Staboulis on 25/6/24.
//

import UIKit

class ViewController: UIViewController {
    weak var mainCoordinator:MainCoordinator?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func btnSecond(_ sender: Any) {
        mainCoordinator?.second()
    }
    
    @IBAction func btnThird(_ sender: Any) {
        mainCoordinator?.third()
    }
    
}


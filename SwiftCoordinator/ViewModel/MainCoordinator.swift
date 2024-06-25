//
//  MainCoordinator.swift
//  SwiftCoordinator
//
//  Created by Angelos Staboulis on 25/6/24.
//

import Foundation
import UIKit
class MainCoordinator:Coordinator,Storyboarded{
    var childCoordinator =  [Coordinator] ()
    
    var navigationController: UINavigationController
    
    
    func start() {
        let viewController:ViewController = getViewController(viewID: "ViewController") as! ViewController
        viewController.mainCoordinator = self
        self.navigationController.pushViewController(viewController, animated: true)
        
    }
    func second(){
        let viewController:SecondViewController = getViewController(viewID: "SecondViewController") as! SecondViewController
        viewController.mainCoordinator = self
        self.navigationController.pushViewController(viewController, animated: true)
        
    }
    func third(){
        let viewController:ThirdViewController = getViewController(viewID: "ThirdViewController") as! ThirdViewController
        viewController.mainCoordinator = self
        self.navigationController.pushViewController(viewController, animated: true)
        
    }
    init(childCoordinator: [any Coordinator] = [Coordinator] (), navigationController: UINavigationController) {
        self.childCoordinator = childCoordinator
        self.navigationController = navigationController
    }
    
}

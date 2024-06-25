//
//  Coordinator.swift
//  SwiftCoordinator
//
//  Created by Angelos Staboulis on 25/6/24.
//

import Foundation
import UIKit
protocol Coordinator{
    var childCoordinator:[Coordinator]{get set}
    var navigationController:UINavigationController{get set}
    func start()
}

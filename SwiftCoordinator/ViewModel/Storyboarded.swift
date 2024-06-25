//
//  Storyboarded.swift
//  SwiftCoordinator
//
//  Created by Angelos Staboulis on 25/6/24.
//

import Foundation
import UIKit
protocol Storyboarded{
    func getViewController(viewID:String)->UIViewController
}
extension Storyboarded{
    func getViewController(viewID: String) -> UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController:UIViewController = storyboard.instantiateViewController(withIdentifier: viewID)
        viewController.modalPresentationStyle = .fullScreen
        return viewController
    }
}

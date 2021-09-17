//
//  AddEventCoordinator.swift
//  Event CountDown
//
//  Created by Decagon on 17/09/2021.
//

import UIKit

final class AddEventCoordinator: Coordinator{
  
  private(set) var childCoordinators: [Coordinator] = []
  let navigationController: UINavigationController
  
  init (navigationController: UINavigationController){
    self.navigationController = navigationController
  }
  
  func start() {
//    create add event view controller
    let addEventViewController = AddEventViewController()
    addEventViewController.viewDidLoad()
//      addEventViewController.view.backgroundColor = .blue
    navigationController.present(addEventViewController, animated: true, completion: nil)
    }
    
//    let viewController = UIViewController()
//    viewController.view.backgroundColor = .blue
//    navigationController.present(viewController, animated: true, completion: nil)
//    create add event view model
//    present modally controller using navigation controller
  }
  
  


//
//  AddEventCoordinator.swift
//  Event CountDown
//
//  Created by Decagon on 17/09/2021.
//

import UIKit

final class AddEventCoordinator: Coordinator {
  
  private(set) var childCoordinators: [Coordinator] = []
  let navigationController: UINavigationController
  
  var parentCoordinator: EventListCoordinator?
  
  init (navigationController: UINavigationController){
    self.navigationController = navigationController
  }
  
  func start() {
//    create add event view controller 
    let addEventViewController = AddEventViewController()
    let addEventViewModel = AddEventViewModel()
    addEventViewModel.coordinator = self
    addEventViewController.viewModel = addEventViewModel
    navigationController.present(addEventViewController, animated: true, completion: nil)
    }
  
  func didFinishAddEvent(){
    parentCoordinator?.childDidFinish(self)
  }
  
}
  
  


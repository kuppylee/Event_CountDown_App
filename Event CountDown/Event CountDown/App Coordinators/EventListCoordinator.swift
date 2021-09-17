//
//  EventListCoordinator.swift
//  Event CountDown
//
//  Created by Decagon on 17/09/2021.
//

import UIKit

final class EventListCoordinator: Coordinator {
  
  private(set) var childCoordinators: [Coordinator] = []
  
  private let navigationController: UINavigationController
  
  init(navigationController: UINavigationController) {
    self.navigationController = navigationController
  }
  
  func start() {
    let eventListViewController = EventListViewController()
    let eventListViewModel = EventListViewModel()
    eventListViewModel.coordinator = self
    eventListViewController.viewModel = eventListViewModel
    navigationController.setViewControllers([eventListViewController], animated: false)
  }
  
  func startAddEvent(){
    let addEventCoordinator = AddEventCoordinator(navigationController: navigationController)
    childCoordinators.append(addEventCoordinator)
    addEventCoordinator.start()
  }
  
}

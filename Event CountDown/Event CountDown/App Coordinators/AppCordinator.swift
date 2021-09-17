//
//  AppCordinator.swift
//  Event CountDown
//
//  Created by Decagon on 17/09/2021.
//

import UIKit

protocol Coordinator {
  var childCoordinators: [Coordinator]{ get }
  func start()
}

final class AppCoordinator: Coordinator {
  
  private(set) var childCoordinators: [Coordinator] = []
  
  private let window: UIWindow
  
  //  injecting the window
  init(window:UIWindow) {
    self.window = window
  }
  
  func start() {
    let navigationController = UINavigationController()
    let eventListCoordinator = EventListCoordinator(navigationController: navigationController)
    childCoordinators.append(eventListCoordinator)
    eventListCoordinator.start()
    
    window.rootViewController = navigationController
    window.makeKeyAndVisible()
    
  }
  
  
}

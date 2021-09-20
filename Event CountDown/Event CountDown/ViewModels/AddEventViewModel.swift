//
//  AddEventViewModel.swift
//  Event CountDown
//
//  Created by Decagon on 17/09/2021.
//

import Foundation

final class AddEventViewModel {
  
  var coordinator: AddEventCoordinator?
  
  func viewDidDisappear() {
    coordinator?.didFinishAddEvent()
  }
  
}

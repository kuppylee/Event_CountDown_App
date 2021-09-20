//
//  EventListViewModel.swift
//  Event CountDown
//
//  Created by Decagon on 17/09/2021.
//

import Foundation


final class EventListViewModel {
  
  let title = "Events"
  
  var coordinator: EventListCoordinator?
  
  func tappedAddEvent(){
//    create a reference to the coordinator
    coordinator?.startAddEvent()
  }
}

//
//  EventListViewController.swift
//  Event CountDown
//
//  Created by Decagon on 17/09/2021.
//

import UIKit

class EventListViewController: UIViewController {
  
  var viewModel: EventListViewModel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    doBasicSetUp()
    
    
  }
  
//  function to do the views set up
  private func doBasicSetUp(){
    let plusImage = UIImage(systemName: "plus.circle.fill")
    let barButton = UIBarButtonItem(image: plusImage, style: .plain, target: self, action: #selector(tappedAddEventButton))
    barButton.tintColor = .primary
    navigationItem.rightBarButtonItem = barButton
    navigationItem.title = viewModel.title
    navigationController?.navigationBar.prefersLargeTitles = true
  }
  
//  function to Navigate to the Add Event scene 
  @objc func tappedAddEventButton(){
    viewModel.tappedAddEvent()
  }
  
}

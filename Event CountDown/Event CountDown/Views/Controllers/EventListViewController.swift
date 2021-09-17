//
//  EventListViewController.swift
//  Event CountDown
//
//  Created by Decagon on 17/09/2021.
//

import UIKit

class EventListViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    doNavigationBarSetUp()
    
    
  }
  
  private func doNavigationBarSetUp(){
    let plusImage = UIImage(systemName: "plus.circle.fill")
    let barButton = UIBarButtonItem(image: plusImage, style: .plain, target: self, action: #selector(tappedRightBarButton))
    barButton.tintColor = .primary
    navigationItem.rightBarButtonItem = barButton
    navigationItem.title = "Events"
    navigationController?.navigationBar.prefersLargeTitles = true
  }
  
  
  @objc func tappedRightBarButton(){
    print("tapped")
  }
  
}

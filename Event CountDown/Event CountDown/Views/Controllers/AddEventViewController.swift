//
//  AddEventViewController.swift
//  Event CountDown
//
//  Created by Decagon on 17/09/2021.
//

import UIKit

class AddEventViewController: UIViewController {
  
  var viewModel: AddEventViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
      view.backgroundColor = .blue
      
    }
   
  override func viewDidDisappear(_ animated: Bool) {
    super.viewDidDisappear(animated)
    viewModel.viewDidDisappear()
  }

}

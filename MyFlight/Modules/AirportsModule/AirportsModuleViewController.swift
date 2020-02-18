//
//  MFAirportsModuleViewController.swift
//  MyFlight
//
//  Created by Ахмед Фокичев on 04/02/2020.
//  Copyright © 2020 Akhmed. All rights reserved.
//

import UIKit

final class AirportsModuleViewController: UIViewController {
    // MARK: Constants
    
    // MARK: IBOutlets
    
    // MARK: Properties
    
    var presenter: AirportsModulePresenter!
    
    // MARK: LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(tapAddNew))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    // MARK: Methods
    @objc func tapAddNew(){
        presenter?.showNewAirportView()
    }
    // MARK: IBActions
    
}

extension AirportsModuleViewController: AirportsModuleViewProtocol {
    
}


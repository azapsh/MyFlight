//
//  MFNewAirportModuleViewController.swift
//  MyFlight
//
//  Created by Ахмед Фокичев on 16/02/2020.
//  Copyright © 2020 Akhmed. All rights reserved.
//

import UIKit

final class NewAirportModuleViewController: UIViewController {
    // MARK: Constants

    // MARK: IBOutlets

    // MARK: Properties

    var presenter: NewAirportModulePresenter!

    // MARK: LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(tapAddNew))
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    // MARK: Methods
    @objc func tapAddNew(){
        self.dismiss(animated: true, completion: nil)
    }
    
    // MARK: IBActions

}


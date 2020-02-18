//
//  MFLaunchModuleViewController.swift
//  MyFlight
//
//  Created by Ахмед Фокичев on 16/02/2020.
//  Copyright © 2020 Akhmed. All rights reserved.
//

import UIKit

final class LaunchModuleViewController: UIViewController {
    // MARK: Constants

    // MARK: IBOutlets

    // MARK: Properties

    var presenter: LaunchModulePresenter?

    // MARK: LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
        if presenter == nil {
            print("presenter nil")
        }
        presenter?.start()
    }

    // MARK: Methods

    // MARK: IBActions

}

extension LaunchModuleViewController: LaunchModuleViewProtocol {

}


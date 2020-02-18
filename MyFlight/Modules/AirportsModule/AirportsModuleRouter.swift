//
//  MFAirportsModuleRouter.swift
//  MyFlight
//
//  Created by Ахмед Фокичев on 04/02/2020.
//  Copyright © 2020 Akhmed. All rights reserved.
//

import Foundation
import UIKit
import SwinjectStoryboard

protocol AirportsModuleRouter: class {
    func showNewAirport()
}

final class AirportsModuleRouterImplementation: AirportsModuleRouter {
    
    // MARK: Properties
    weak var view: AirportsModuleViewController?
    weak var presenter: AirportsModulePresenter? 
    
    init(with viewController: AirportsModuleViewController) {
        self.view = viewController
    }
    // MARK: Internal helpers
    func showNewAirport() {
        let sb = SwinjectStoryboard.create(name: R.storyboard.newAirportModuleViewController.name, bundle: nil)
        guard let vc = sb.instantiateInitialViewController() as? NewAirportModuleViewController else {
            return
        }
        view?.navigationController?.setNavigationBarHidden(false, animated: false)
        view?.navigationController?.pushViewController(vc, animated: true)
    }
}


//
//  PlantingViewController.swift
//  EcoChainApp
//
//  Created by Ванурин Алексей on 17.11.2019.
//  Copyright © 2019 Ванурин Алексей. All rights reserved.
//

import RIBs
import RxSwift
import UIKit

protocol PlantingPresentableListener: class {
    // TODO: Declare properties and methods that the view controller can invoke to perform
    // business logic, such as signIn(). This protocol is implemented by the corresponding
    // interactor class.
}

final class PlantingViewController: UIViewController, PlantingPresentable, PlantingViewControllable {

    weak var listener: PlantingPresentableListener?
}

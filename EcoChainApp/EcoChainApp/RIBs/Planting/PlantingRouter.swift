//
//  PlantingRouter.swift
//  EcoChainApp
//
//  Created by Ванурин Алексей on 17.11.2019.
//  Copyright © 2019 Ванурин Алексей. All rights reserved.
//

import RIBs

protocol PlantingInteractable: Interactable {
    var router: PlantingRouting? { get set }
    var listener: PlantingListener? { get set }
}

protocol PlantingViewControllable: ViewControllable {
    // TODO: Declare methods the router invokes to manipulate the view hierarchy.
}

final class PlantingRouter: ViewableRouter<PlantingInteractable, PlantingViewControllable>, PlantingRouting {

    // TODO: Constructor inject child builder protocols to allow building children.
    override init(interactor: PlantingInteractable, viewController: PlantingViewControllable) {
        super.init(interactor: interactor, viewController: viewController)
        interactor.router = self
    }
}

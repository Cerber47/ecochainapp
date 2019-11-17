//
//  PlantingInteractor.swift
//  EcoChainApp
//
//  Created by Ванурин Алексей on 17.11.2019.
//  Copyright © 2019 Ванурин Алексей. All rights reserved.
//

import RIBs
import RxSwift

protocol PlantingRouting: ViewableRouting {
    // TODO: Declare methods the interactor can invoke to manage sub-tree via the router.
}

protocol PlantingPresentable: Presentable {
    var listener: PlantingPresentableListener? { get set }
    // TODO: Declare methods the interactor can invoke the presenter to present data.
}

protocol PlantingListener: class {
    // TODO: Declare methods the interactor can invoke to communicate with other RIBs.
}

final class PlantingInteractor: PresentableInteractor<PlantingPresentable>, PlantingInteractable, PlantingPresentableListener {

    weak var router: PlantingRouting?
    weak var listener: PlantingListener?

    // TODO: Add additional dependencies to constructor. Do not perform any logic
    // in constructor.
    override init(presenter: PlantingPresentable) {
        super.init(presenter: presenter)
        presenter.listener = self
    }

    override func didBecomeActive() {
        super.didBecomeActive()
        // TODO: Implement business logic here.
    }

    override func willResignActive() {
        super.willResignActive()
        // TODO: Pause any business logic.
    }
}

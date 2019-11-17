//
//  PlantingBuilder.swift
//  EcoChainApp
//
//  Created by Ванурин Алексей on 17.11.2019.
//  Copyright © 2019 Ванурин Алексей. All rights reserved.
//

import RIBs

protocol PlantingDependency: Dependency {
    // TODO: Declare the set of dependencies required by this RIB, but cannot be
    // created by this RIB.
}

final class PlantingComponent: Component<PlantingDependency> {

    // TODO: Declare 'fileprivate' dependencies that are only used by this RIB.
}

// MARK: - Builder

protocol PlantingBuildable: Buildable {
    func build(withListener listener: PlantingListener) -> PlantingRouting
}

final class PlantingBuilder: Builder<PlantingDependency>, PlantingBuildable {

    override init(dependency: PlantingDependency) {
        super.init(dependency: dependency)
    }

    func build(withListener listener: PlantingListener) -> PlantingRouting {
        let component = PlantingComponent(dependency: dependency)
        let viewController = PlantingViewController()
        let interactor = PlantingInteractor(presenter: viewController)
        interactor.listener = listener
        return PlantingRouter(interactor: interactor, viewController: viewController)
    }
}

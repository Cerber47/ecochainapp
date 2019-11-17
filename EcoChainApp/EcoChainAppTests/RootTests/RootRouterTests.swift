//
//  RootRouterTests.swift
//  EcoChainAppTests
//
//  Created by Ванурин Алексей on 17.11.2019.
//  Copyright © 2019 Ванурин Алексей. All rights reserved.
//

@testable import EcoChainApp
import XCTest

final class RootRouterTests: XCTestCase {

    private var router: RootRouter!
    
    var testObj = TestClass()

    // TODO: declare other objects and mocks you need as private vars

    override func setUp() {
        super.setUp()
        
        let interactor = RootInteractableMock()
        let viewController = RootViewControllableMock()
        
        router = RootRouter(interactor: interactor, viewController: viewController)

        // TODO: instantiate objects and mocks
    }

    // MARK: - Tests

    func test_routeToExample_invokesToExampleResult() {
        // This is an example of a router test case.
        // Test your router functions invokes the corresponding builder, attachesChild, presents VC, etc.
    }
}

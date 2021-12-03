//
//  WebServiceFactory.swift
//  UITestSwiftUI
//
//  Created by Hossein Ali Alborzi on 12/3/21.
//

import Foundation
 
class WebServiceFactory {
    func Create() -> WebService {
        let enviroment = ProcessInfo.processInfo.environment["EVN"]
        // Check App is Test or no
        if enviroment == "TEST" {
            return FakeService()
        } else {
            return TestUIService()
        }
    } 
}

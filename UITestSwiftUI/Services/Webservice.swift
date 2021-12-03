//
//  Webservice.swift
//  UITestSwiftUI
//
//  Created by Hossein Ali Alborzi on 12/1/21.
//

import Foundation

protocol WebService {
    func Login(_ username: String, _ password: String) -> Bool
}

class TestUIService: WebService {
    func Login(_ username: String, _ password: String) -> Bool {
        // for example : the service response after 5 sec is true
        sleep(5)
        return true
    }
}

// FakeService For Use UITest
class FakeService: WebService {
    func Login(_ username: String, _ password: String) -> Bool {
        print("FakeService Login")
        return true
    }
}

//
//  BuyerOne.swift
//  ClosingUp24Dec
//
//  Created by Dan Payne on 2/13/22.
//

import Foundation
import SwiftUI


class BuyerOne: ObservableObject {
    
    @Published var gotDL = false
    
    @Published var firstName = ""
    @Published var middleName = ""
    @Published var lastName = ""
    
    @Published var address = ""
    @Published var addressSecond = ""
    @Published var city = ""
    @Published var state = ""
    @Published var DLID = ""
    
    @Published var dlExpire = ""
    
}

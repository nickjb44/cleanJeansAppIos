//
//  JeansDetailViewModel.swift
//  hundredDaysToCleanJeans
//
//  Created by Nick Buser on 7/14/24.
//

import Foundation
import SwiftUI

class JeansDetailViewModel: ObservableObject {
    @Published var jeans: Jeans
    
    init(jeans: Jeans) {
        self.jeans = jeans
    }
    
    func markAsWornToday() {
        // TODO: update the database with a call
    }
}

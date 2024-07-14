//
//  Jeans.swift
//  hundredDaysToCleanJeans
//
//  Created by Nick Buser on 7/14/24.
//

import Foundation

struct Jeans {
    let id: Int
    let name: String
    let dateEntered: Date
    let numberOfDaysWhenReady: Int
    let brand: String?
    let size: String?
    let color: String?
    let material: String?
    let notes: String?
    let status: String?
    let lastWornDate: Date?
    let wornDates: [Date]
}

//
//  AddingJeansViewModel.swift
//  hundredDaysToCleanJeans
//
//  Created by Nick Buser on 7/14/24.
//

import Foundation

class AddingJeansViewModel: ObservableObject {
    @Published var name: String = ""
    @Published var dateEntered: Date = Date()
    @Published var numberOfDaysWhenReady: Int = 0
    @Published var brand: String = ""
    @Published var size: String = ""
    @Published var color: String = ""
    @Published var material: String = ""
    @Published var notes: String = ""
    @Published var status: String = "In Progress"
    
    func saveJeans() {
        // Logic to save a new pair of jeans
        let newJeans = Jeans(
            id: UUID().hashValue,
            name: name,
            dateEntered: dateEntered,
            numberOfDaysWhenReady: numberOfDaysWhenReady,
            brand: brand,
            size: size,
            color: color,
            material: material,
            notes: notes,
            status: status,
            lastWornDate: nil,
            wornDates: []
        )
        // Add newJeans to your data store
    }
}

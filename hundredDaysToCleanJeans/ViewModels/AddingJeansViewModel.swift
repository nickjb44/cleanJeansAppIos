//
//  AddingJeansViewModel.swift
//  hundredDaysToCleanJeans
//
//  Created by Nick Buser on 7/14/24.
//

import Foundation

class AddingJeansViewModel: ObservableObject {
    @Published var name: String = ""
    @Published var numberOfDaysWhenReady: Int = 0
    @Published var datePurchased: Date? = nil
    @Published var dateEntered: Date = Date()
    @Published var brand: String = ""
    @Published var waistSize: String = ""
    @Published var pantLength: String = ""
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
            datePurchased: datePurchased,
            numberOfDaysWhenReady: numberOfDaysWhenReady,
            brand: brand,
            waistSize: waistSize,
            pantLength: pantLength,
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

//
//  JeansListViewModel.swift
//  hundredDaysToCleanJeans
//
//  Created by Nick Buser on 7/14/24.
//

import Foundation

class JeansListViewModel: ObservableObject {
    @Published var jeansList: [Jeans] = []
    
    init() {
        jeansList = [
            Jeans(id: 1, name: "Levi's 501", dateEntered: Date(), datePurchased: Date(), numberOfDaysWhenReady: 100, brand: "Levi's", waistSize: "32", pantLength: "32", color: "Blue", material: "Denim", notes: "Classic jeans", status: "In Progress", lastWornDate: Date(), wornDates: [Date(), Date()]),
            Jeans(id: 2, name: "Wrangler", dateEntered: Date(), datePurchased: Date(), numberOfDaysWhenReady: 80, brand: "Wrangler", waistSize: "34", pantLength: "32", color: "Black", material: "Denim", notes: "Comfortable", status: "In Progress", lastWornDate: Date(), wornDates: [Date()]),
            // Add more sample data as needed
        ]
    }
}

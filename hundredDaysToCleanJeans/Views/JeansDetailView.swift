//
//  JeansDetailView.swift
//  hundredDaysToCleanJeans
//
//  Created by Nick Buser on 7/14/24.
//

import Foundation
import SwiftUI

struct JeansDetailView: View {
    @ObservedObject var viewModel: JeansDetailViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(viewModel.jeans.name)
                .font(.largeTitle)
            Text("Brand: \(viewModel.jeans.brand ?? "Unknown")")
            Text("Size: \(viewModel.jeans.waistSize ?? "Unknown")")
            Text("Color: \(viewModel.jeans.color ?? "Unknown")")
            Text("Material: \(viewModel.jeans.material ?? "Unknown")")
            Text("Notes: \(viewModel.jeans.notes ?? "None")")
            Text("Status: \(viewModel.jeans.status ?? "Unknown")")
            Text("Days Worn: \(viewModel.jeans.daysWorn)")
            
            Button(action: {
                viewModel.markAsWornToday()
            }) {
                Text("I wore these today")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            
            Spacer()
        }
        .padding()
        .navigationBarTitle("Jeans Details", displayMode: .inline)
    }
}

struct JeansDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        let sampleJeans = Jeans(
            id: 1,
            name: "Levi's 501",
            dateEntered: Date(),
            datePurchased: Date(),
            numberOfDaysWhenReady: 100,
            brand: "Levi's",
            waistSize: "32",
            pantLength: "32",
            color: "Blue",
            material: "Denim",
            notes: "Classic jeans",
            status: "In Progress",
            lastWornDate: Date(),
            wornDates: [Date(), Date().addingTimeInterval(-86400), Date().addingTimeInterval(-172800)]
        )
        let viewModel = JeansDetailViewModel(jeans: sampleJeans)
        return JeansDetailView(viewModel: viewModel)
    }
}

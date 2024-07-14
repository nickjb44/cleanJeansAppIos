//
//  AddingJeansView.swift
//  hundredDaysToCleanJeans
//
//  Created by Nick Buser on 7/14/24.
//

import Foundation
import SwiftUI
import Combine

struct AddingJeansView: View {
    @ObservedObject var viewModel = AddingJeansViewModel()
    
    var body: some View {
           NavigationView {
               Form {
                   Section(header: Text("Basic Info")) {
                       TextField("Name of Jeans", text: $viewModel.name)
                           .padding()
                           .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1))
                       
                       DatePicker("Date Purchased", selection: Binding(
                           get: { viewModel.datePurchased ?? Date() },
                           set: { viewModel.datePurchased = $0 }
                       ), displayedComponents: .date)
                           .padding()
                           .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1))
                       
                       HStack {
                           TextField("Days to Ready", value: $viewModel.numberOfDaysWhenReady, formatter: NumberFormatter())
                               .padding()
                               .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1))
                           
                           Spacer()
                           Text("days")
                               .foregroundColor(.gray)
                       }
                   }
                   
                   Section(header: Text("Details")) {
                       TextField("Brand", text: $viewModel.brand)
                           .padding()
                           .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1))
                       
                       TextField("Waist Size", text: $viewModel.waistSize)
                           .padding()
                           .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1))
                       
                       TextField("Pant Length", text: $viewModel.pantLength)
                           .padding()
                           .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1))

                       TextField("Color", text: $viewModel.color)
                           .padding()
                           .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1))
                       
                       TextField("Material", text: $viewModel.material)
                           .padding()
                           .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1))
                       
                       TextField("Notes", text: $viewModel.notes)
                           .padding()
                           .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 1))
                   }
                   
                   Section(header: Text("Status")) {
                       Picker("Status", selection: $viewModel.status) {
                           Text("In Progress").tag("In Progress")
                           Text("Completed").tag("Completed")
                           Text("Discarded").tag("Discarded")
                       }
                       .pickerStyle(SegmentedPickerStyle())
                   }
                   
                   Section {
                       Button(action: {
                           viewModel.saveJeans()
                       }) {
                           HStack {
                               Spacer()
                               Text("Save")
                                   .foregroundColor(.white)
                                   .padding()
                               Spacer()
                           }
                       }
                       .background(Color.blue)
                       .cornerRadius(10)
                   }
               }
               .navigationBarTitle("Add New Jeans", displayMode: .inline)
           }
       }
   }

struct AddingJeansView_Previews: PreviewProvider {
    static var previews: some View {
        AddingJeansView()
    }
}

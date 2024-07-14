//
//  JeansListView.swift
//  hundredDaysToCleanJeans
//
//  Created by Nick Buser on 7/14/24.
//

import Foundation
import SwiftUI

struct JeansListView: View {
    @ObservedObject var viewModel = JeansListViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.jeansList) { jeans in
                HStack {
                    Image(systemName: "tag.fill")
                        .foregroundColor(.blue)
                        .padding()
                    
                    VStack(alignment: .leading) {
                        Text(jeans.name)
                            .font(.headline)
                        Text("Days Worn: \(jeans.daysWorn)")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .foregroundColor(.gray)
                }
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .shadow(color: .gray, radius: 5, x: 0, y: 2)
                .onTapGesture {
                    // Navigation logic to details page
                }
            }
            .navigationBarTitle("Jeans List")
            .listStyle(PlainListStyle())
        }
    }
}

struct JeansListView_Previews: PreviewProvider {
    static var previews: some View {
        JeansListView()
    }
}

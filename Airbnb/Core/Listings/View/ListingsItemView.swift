//
//  ListingsItemView.swift
//  Airbnb
//
//  Created by Hittarth Goyal on 05/07/25.
//

import SwiftUI

struct ListingsItemView: View {
    let listing: Listing
    var body: some View {
        VStack(spacing: 8) {
            // images
            ListingImageCarouselView(listing: listing)
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            // listing details
            HStack(alignment: .top) {
                // details
                VStack(alignment: .leading) {
                    Text("\(listing.city), \(listing.state)")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    Text("12 mi away")
                        .foregroundStyle(.gray)

                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)

                    HStack(spacing: 4) {
                        Text("$\(listing.pricePerNight )")
                            .fontWeight(.semibold)
                        Text("night")
                    }
                    .foregroundStyle(.black )
                }
                Spacer()
                HStack(spacing: 2){
                    Image(systemName: "star.fill")
//                    Text("\(listing.rating )")
                    Text("\(listing.rating.formatted(.number.precision(.fractionLength(0...2))))")


                }
                .foregroundStyle(.black)
                // rating
            }
            .font(.footnote)
        }

    }
}

#Preview {
    ListingsItemView(listing: DeveloperPreview.shared.listings[0])
}

//
//  ReservationConfirmationView.swift
//  Airbnb
//
//  Created by Hittarth Goyal on 09/07/25.
//

// Airbnb/App/Core/Reservations/ReservationConfirmationView.swift

//import SwiftUI
//
//struct ReservationConfirmationView: View {
//    let reservation: Reservation
//
//    var body: some View {
//        VStack(spacing: 20) {
//            Text("Reservation Confirmed!")
//                .font(.largeTitle)
//                .fontWeight(.bold)
//                .foregroundColor(.pink)
//
//            Text(reservation.listing.title)
//                .font(.title3)
//                .fontWeight(.semibold)
//
//            Text("City: \(reservation.listing.city), \(reservation.listing.state)")
//            Text("Guests: \(reservation.numberOfGuests)")
//            Text("Check-in: \(reservation.checkInDate.formatted(date: .abbreviated, time: .omitted))")
//            Text("Check-out: \(reservation.checkOutDate.formatted(date: .abbreviated, time: .omitted))")
//
//            Text("Total: $\(reservation.totalCost)")
//                .font(.title2)
//                .fontWeight(.semibold)
//                .foregroundColor(.green)
//
//            Spacer()
//        }
//        .padding()
//        .navigationTitle("Confirmation")
//    }
//}
////#Preview {
////    ReservationConfirmationView(reservation: .mock)
////}
///

import SwiftUI

struct ReservationConfirmationView: View {
    let listing: Listing

    var body: some View {
        VStack(spacing: 20) {
            Text("Reservation Confirmed!")
                .font(.largeTitle)
                .fontWeight(.bold)

            Text("Enjoy your stay at \(listing.title) in \(listing.city)!")
                .multilineTextAlignment(.center)

            Image(systemName: "checkmark.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 100)
                .foregroundColor(.green)
        }
        .padding()
        .navigationTitle("Confirmation")
    }
}

#Preview {
    ReservationConfirmationView(listing: DeveloperPreview.shared.listings[3])
}

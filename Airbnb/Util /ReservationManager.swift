//
//  ReservationManager.swift
//  Airbnb
//
//  Created by Hittarth Goyal on 09/07/25.
//



import Foundation

class ReservationManager: ObservableObject {
    static let shared = ReservationManager()
    
    @Published var reservations: [Reservation] = []

    private init() {}

    func reserve(listing: Listing, checkIn: Date, checkOut: Date, guests: Int) {
        let nights = Calendar.current.dateComponents([.day], from: checkIn, to: checkOut).day ?? 1
        let total = listing.pricePerNight * max(nights, 1)

        let newReservation = Reservation(
            listing: listing,
            checkInDate: checkIn,
            checkOutDate: checkOut,
            numberOfGuests: guests,
            totalCost: total
        )
        
        reservations.append(newReservation)
    }
}


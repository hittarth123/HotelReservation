//
//  Reservation.swift
//  Airbnb
//
//  Created by Hittarth Goyal on 09/07/25.
//

// Airbnb/App/Models/Reservation.swift

import Foundation

struct Reservation: Identifiable {
    let id = UUID()
    let listing: Listing
    let checkInDate: Date
    let checkOutDate: Date
    let numberOfGuests: Int
    let totalCost: Int
}

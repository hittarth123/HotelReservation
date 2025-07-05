////
////  ListingDetailedView.swift
////  Airbnb
////
////  Created by Hittarth Goyal on 05/07/25.
////
//
//
//import SwiftUI
//import MapKit
//
//struct ListingDetailedView: View {
//    @Environment(\.dismiss) var dismiss
//    let listing: Listing
//    @State private var cameraPosition: MapCameraPosition
//    @State private var navigateToConfirmation = false
//    @State private var navigateToMap = false
//    
//    init(listing: Listing) {
//        self.listing = listing
//
//        let region = MKCoordinateRegion(
//            center: listing.city == "Los Angeles" ? .losAngeles : .miami,
//            span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
//        )
//
//        self._cameraPosition = State(initialValue: .region(region))
//    }
//
//    var body: some View {
//        ScrollView {
//            ZStack(alignment: .topLeading) {
//                ListingImageCarouselView(listing: listing)
//                    .frame(height: 320)
//
//                Button {
//                    dismiss()
//                } label: {
//                    Image(systemName: "chevron.left")
//                        .foregroundStyle(.black)
//                        .background {
//                            Circle()
//                                .fill(.white)
//                                .frame(width: 32, height: 32)
//                        }
//                        .padding(32)
//                        .padding(.top, 25)
//                }
//            }
//
//            VStack(alignment: .leading, spacing: 8) {
//                Text(listing.title)
//                    .font(.title)
//                    .fontWeight(.semibold)
//
//                VStack(alignment: .leading) {
//                    HStack(spacing: 2) {
//                        Image(systemName: "star.fill")
//                        Text(String(format: "%.2f", listing.rating))
//                        Text(" - ")
//                        Text("28 reviews")
//                            .underline()
//                            .fontWeight(.semibold)
//                    }
//                    .foregroundStyle(.black)
//
//                    Text("\(listing.city), \(listing.state)")
//                }
//                .font(.caption)
//            }
//            .padding(.leading)
//            .frame(maxWidth: .infinity, alignment: .leading)
//
//            Divider()
//
//            HStack {
//                VStack(alignment: .leading, spacing: 4) {
//                    Text("Entire \(listing.type.description) hosted by \(listing.ownerName)")
//                        .font(.headline)
//                        .frame(width: 250, alignment: .leading)
//
//                    HStack(spacing: 2) {
//                        Text("\(listing.numberOfGuests) guests – ")
//                        Text("\(listing.numberOfBedrooms) bedrooms – ")
//                        Text("\(listing.numberOfBeds) beds – ")
//                        Text("\(listing.numberOfBathrooms) baths")
//                    }
//                    .font(.caption)
//                }
//                .frame(width: 300, alignment: .leading)
//
//                Spacer()
//
//                Image(listing.ownerImageUrl)
//                    .resizable()
//                    .scaledToFill()
//                    .frame(width: 64, height: 64)
//                    .clipShape(Circle())
//            }
//            .padding()
//
//            Divider()
//
//            VStack(alignment: .leading, spacing: 16) {
//                ForEach(listing.features) { feature in
//                    HStack(spacing: 12) {
//                        Image(systemName: feature.imageName)
//
//                        VStack(alignment: .leading) {
//                            Text(feature.title)
//                                .font(.footnote)
//                                .fontWeight(.semibold)
//
//                            Text(feature.subtitle)
//                                .font(.caption)
//                                .foregroundStyle(.gray)
//                        }
//                        Spacer()
//                    }
//                }
//            }
//            .padding()
//
//            Divider()
//
//            VStack(alignment: .leading, spacing: 16) {
//                Text("Where you'll sleep")
//                    .font(.headline)
//
//                ScrollView(.horizontal, showsIndicators: false) {
//                    HStack(spacing: 16) {
//                        ForEach(1 ... listing.numberOfBedrooms, id: \.self) { bedroom in
//                            VStack {
//                                Image(systemName: "bed.double")
//                                Text("Bedroom \(bedroom)")
//                            }
//                            .frame(width: 132, height: 100)
//                            .overlay {
//                                RoundedRectangle(cornerRadius: 12)
//                                    .stroke(lineWidth: 1)
//                                    .foregroundStyle(.gray)
//                            }
//                        }
//                    }
//                }
//                .scrollTargetBehavior(.paging)
//            }
//            .padding()
//
//            Divider()
//
//            VStack(alignment: .leading, spacing: 16) {
//                Text("What this place offers")
//                    .font(.headline)
//                ForEach(listing.amenities, id: \.self) { amenity in
//                    HStack {
//                        Image(systemName: amenity.imageName)
//                            .frame(width: 32)
//                        Text(amenity.title)
//                            .font(.footnote)
//                        Spacer()
//                    }
//                }
//            }
//            .padding()
//
//            Divider()
//
//            VStack(alignment: .leading, spacing: 16) {
//                Text("Where you'll be")
//                Map(position: $cameraPosition)
//                    .frame(height: 200)
//                    .clipShape(RoundedRectangle(cornerRadius: 12))
//                    .onTapGesture {
//                        navigateToMap = true
//                           }
//            }
//            .padding()
//        }
//
//        .navigationDestination(isPresented: $navigateToMap) {
//                    let region = MKCoordinateRegion(
//                        center: listing.city == "Los Angeles" ? .losAngeles : .miami,
//                        span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
//                    )
//                    FullMapView(region: region)
//                        .navigationTitle("Map View")
//                        .navigationBarTitleDisplayMode(.inline)
//                }
//        .toolbar(.hidden, for: .tabBar)
//        .ignoresSafeArea()
//        .padding(.bottom, 64)
//
//        .overlay(alignment: .bottom) {
//            VStack {
//                Divider()
//                    .padding(.bottom)
//
//                HStack {
//                    VStack(alignment: .leading) {
//                        Text("$\(listing.pricePerNight) per night")
//                            .font(.subheadline)
//                            .fontWeight(.semibold)
//
//                        Text("Total before taxes")
//                            .font(.footnote)
//
//                        Text("Oct 15 - 20")
//                            .font(.footnote)
//                            .fontWeight(.semibold)
//                            .underline()
//                    }
//
//                    Spacer()
//
//                    NavigationLink(destination: ReservationConfirmationView(listing: listing)) {
//                        Text("Reserve")
//                            .foregroundStyle(.white)
//                            .font(.subheadline)
//                            .fontWeight(.semibold)
//                            .frame(width: 140, height: 40)
//                            .background(.pink)
//                            .clipShape(RoundedRectangle(cornerRadius: 8))
//                    }
//                }
//                .padding(.horizontal, 32)
//            }
//            .background(Color.white)
//        }
//    }
//}
//
//#Preview {
//    ListingDetailedView(listing: DeveloperPreview.shared.listings[3])
//}
import SwiftUI
import MapKit

struct ListingDetailedView: View {
    @Environment(\.dismiss) var dismiss
    let listing: Listing
    @State private var cameraPosition: MapCameraPosition
    @State private var navigateToMap = false
    @State private var scrollOffset: CGFloat = 0.0

    init(listing: Listing) {
        self.listing = listing
        let region = MKCoordinateRegion(
            center: listing.city == "Los Angeles" ? .losAngeles : .miami,
            span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        )
        self._cameraPosition = State(initialValue: .region(region))
    }

    var body: some View {
        ZStack(alignment: .top) {
            ScrollView {
                GeometryReader { geo in
                    Color.clear
                        .preference(key: ScrollOffsetPreferenceKey.self, value: geo.frame(in: .global).minY)
                }
                .frame(height: 0)

                ZStack(alignment: .topLeading) {
                    ListingImageCarouselView(listing: listing)
                        .frame(height: 320)

                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "chevron.left")
                            .foregroundStyle(.black)
                            .background {
                                Circle()
                                    .fill(.white)
                                    .frame(width: 32, height: 32)
                            }
                            .padding(32)
                            .padding(.top, 25)
                    }
                }

                VStack(alignment: .leading, spacing: 8) {
                    Text(listing.title)
                        .font(.title)
                        .fontWeight(.semibold)

                    VStack(alignment: .leading) {
                        HStack(spacing: 2) {
                            Image(systemName: "star.fill")
                            Text(String(format: "%.2f", listing.rating))
                            Text(" - ")
                            Text("28 reviews")
                                .underline()
                                .fontWeight(.semibold)
                        }
                        .foregroundStyle(.black)

                        Text("\(listing.city), \(listing.state)")
                    }
                    .font(.caption)
                }
                .padding(.leading)
                .frame(maxWidth: .infinity, alignment: .leading)

                Divider()

                HStack {
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Entire \(listing.type.description) hosted by \(listing.ownerName)")
                            .font(.headline)
                            .frame(width: 250, alignment: .leading)

                        HStack(spacing: 2) {
                            Text("\(listing.numberOfGuests) guests – ")
                            Text("\(listing.numberOfBedrooms) bedrooms – ")
                            Text("\(listing.numberOfBeds) beds – ")
                            Text("\(listing.numberOfBathrooms) baths")
                        }
                        .font(.caption)
                    }
                    .frame(width: 300, alignment: .leading)

                    Spacer()

                    Image(listing.ownerImageUrl)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 64, height: 64)
                        .clipShape(Circle())
                }
                .padding()

                Divider()

                VStack(alignment: .leading, spacing: 16) {
                    ForEach(listing.features) { feature in
                        HStack(spacing: 12) {
                            Image(systemName: feature.imageName)

                            VStack(alignment: .leading) {
                                Text(feature.title)
                                    .font(.footnote)
                                    .fontWeight(.semibold)

                                Text(feature.subtitle)
                                    .font(.caption)
                                    .foregroundStyle(.gray)
                            }
                            Spacer()
                        }
                    }
                }
                .padding()

                Divider()

                VStack(alignment: .leading, spacing: 16) {
                    Text("Where you'll sleep")
                        .font(.headline)

                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 16) {
                            ForEach(1 ... listing.numberOfBedrooms, id: \.self) { bedroom in
                                VStack {
                                    Image(systemName: "bed.double")
                                    Text("Bedroom \(bedroom)")
                                }
                                .frame(width: 132, height: 100)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 12)
                                        .stroke(lineWidth: 1)
                                        .foregroundStyle(.gray)
                                }
                            }
                        }
                    }
                    .scrollTargetBehavior(.paging)
                }
                .padding()

                Divider()

                VStack(alignment: .leading, spacing: 16) {
                    Text("What this place offers")
                        .font(.headline)
                    ForEach(listing.amenities, id: \.self) { amenity in
                        HStack {
                            Image(systemName: amenity.imageName)
                                .frame(width: 32)
                            Text(amenity.title)
                                .font(.footnote)
                            Spacer()
                        }
                    }
                }
                .padding()

                Divider()

                VStack(alignment: .leading, spacing: 16) {
                    Text("Where you'll be")
                    Map(position: $cameraPosition)
                        .frame(height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .onTapGesture {
                            navigateToMap = true
                        }
                }
                .padding()
            }
            .onPreferenceChange(ScrollOffsetPreferenceKey.self) { value in
                scrollOffset = value
            }

            // Sticky Title Overlay
            if scrollOffset < -320 {
                Text(listing.title)
                    .font(.headline)
                    .lineLimit(1)
                    .padding(.top, 60)
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity)
                    .background(Color.white.opacity(0.95))
                    .transition(.opacity)
                    .animation(.easeInOut, value: scrollOffset)
            }
        }

        .navigationDestination(isPresented: $navigateToMap) {
            let region = MKCoordinateRegion(
                center: listing.city == "Los Angeles" ? .losAngeles : .miami,
                span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
            )
            FullMapView(region: region)
                .navigationTitle("Map View")
                .navigationBarTitleDisplayMode(.inline)
        }

        .toolbar(.hidden, for: .tabBar)
        .ignoresSafeArea()
        .padding(.bottom, 64)

        .overlay(alignment: .bottom) {
            VStack {
                Divider()
                    .padding(.bottom)

                HStack {
                    VStack(alignment: .leading) {
                        Text("$\(listing.pricePerNight) per night")
                            .font(.subheadline)
                            .fontWeight(.semibold)

                        Text("Total before taxes")
                            .font(.footnote)

                        Text("Oct 15 - 20")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .underline()
                    }

                    Spacer()

                    NavigationLink(destination: ReservationConfirmationView(listing: listing)) {
                        Text("Reserve")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 140, height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                }
                .padding(.horizontal, 32)
            }
            .background(Color.white)
        }
    }
}

// MARK: Scroll Offset Preference Key
private struct ScrollOffsetPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0

    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}
#Preview {
    ListingDetailedView(listing: DeveloperPreview.shared.listings[3])
}

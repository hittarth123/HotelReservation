🏨 Hotel Booking App (Airbnb Clone)

A SwiftUI-based hotel booking application inspired by Airbnb.
This project demonstrates modern iOS app development with SwiftUI, MVVM architecture, and modular components.

✨ Features

🔎 Explore Listings – Browse hotels with search and filtering.
📍 Destination Search – Search destinations with auto-suggestions.
🏡 Detailed Listings – View photos, amenities, prices, and reviews.
📌 Sticky Title in Detail View – Title stays at the top when scrolling.
👤 Authentication – Login & Signup flows using in-memory AuthManager.
📅 Reservations – Book hotels with a reservation screen.
📑 Profile Section – Access account settings, help center, accessibility options.
📱 Responsive Design – Adaptive layouts using SwiftUI size classes.

🛠️ Tech Stack

SwiftUI – Declarative UI framework.
MVVM – Model-View-ViewModel design pattern.
Modular Views – Reusable SwiftUI components.

Project Structure
HotelBookingApp/
│
├── Models/
│   └── Listing.swift
│   └── Regions.swift
│
├── ViewModels/
│   └── ExploreViewModel.swift
│
├── Services/
│   └── ExploreService.swift
│   └── AuthManager.swift
│
├── Views/
│   ├── ExploreView.swift
│   ├── DestinationSearchView.swift
│   ├── ListingItemView.swift
│   ├── ListingDetailedView.swift
│   ├── SearchAndFilterBar.swift
│   ├── MainTabView.swift
│   ├── ProfileView.swift
│   ├── LoginView.swift
│   ├── SignupView.swift
│   ├── SettingsView.swift
│   ├── AccessibilityView.swift
│   ├── HelpCenterView.swift
│
├── Resources/
│   └── DeveloperPreview.swift
│
└── ContentView.swift

🚀 Getting Started


 1. Clone the Repository

git clone https://github.com/hittarth123/HotelReservation.git
cd HotelReservation

2. Open in Xcode
 open HotelReservation.xcodeproj

3. Run the App

Select an iOS Simulator (e.g., iPhone 16).
Press Cmd + R to build & run.

Live preview - https://drive.google.com/file/d/1Sdg7xzxQ_H9qi5Ler2TptXyqBFWZqGyS/view?usp=sharing

🔮 Future Improvements

Firebase Authentication & Firestore Database.
Payment gateway integration.
Favorite & wishlist functionality.
Push notifications for bookings.
Multi-language and localization support.

👨‍💻 Author

Hittarth Goyal
📍 Delhi Technological University (DTU) B.Tech in Computer Engineering
💼 Intern at Expedia
🔗 LinkedIn


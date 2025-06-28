# Visa Card Payment App

A Flutter application for managing payment methods with real-time card preview functionality, built using GetX for state management and Firebase for backend services.


## App Screenshots

<div align="center">
  <img src="./images/Screenshot%202025-06-28%20192929.png" width="30%" alt="Payment Methods Screen"/>
  <img src="./images/Screenshot%202025-06-28%20193031.png" width="30%" alt="Add Card Screen"/> 
  <img src="./images/Screenshot%202025-06-28%20193101.png" width="30%" alt="Card Preview"/>
</div>

## Features

- **Payment Methods Screen**:
    - View and select from existing payment methods
    - Add new payment cards
    - Clean, intuitive UI with responsive design

- **Add Card Screen**:
    - Interactive card preview that updates in real-time
    - Form validation and input formatting
    - Save cards to Firebase Firestore

- **Profile Details**:
    - View user profile information
    - Fetch data from Firebase

## Technical Stack

- **Framework**: Flutter
- **State Management**: GetX (Controllers, Bindings, Routes)
- **Backend**: Firebase (Firestore, Storage)
- **Architecture**: MVVM (Model-View-ViewModel)
- **UI Components**: Custom reusable widgets

## Widgets Overview

### Core Widgets

1. **CustomButton**:
    - Consistent button styling throughout the app
    - Customizable text and onPressed handler

2. **CustomTextField**:
    - Standardized text input fields
    - Input formatting and validation
    - Real-time data binding to controllers

3. **CustomVisaCard**:
    - Interactive card UI with real-time updates
    - Visual representation of entered card details
    - Custom triangle painter for decorative elements

4. **CustomShortTextField**:
    - Compact input fields for dates and CVV
    - Specialized formatting

## Project Structure

```
lib/
├── core/
│   ├── constants/       # App constants (colors, styles)
│   ├── utils/           # Utility functions
│   └── widgets/         # Reusable widgets
├── data/
│   ├── models/          # Data models
│   └── services/        # Firebase services
├── modules/
│   ├── controllers/     # GetX controllers
│   ├── views/           # UI screens
│   └── view_models/     # ViewModels
└── main.dart            # App entry point
```

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/ibraam123/visa_card_app
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Set up Firebase:
    - Create a Firebase project
    - Add configuration files:
        - `google-services.json` for Android
        - `GoogleService-Info.plist` for iOS
    - Enable Firestore and Storage

4. Run the app:
   ```bash
   flutter run
   ```

## Dependencies

- `get`: ^4.6.6 (GetX state management)
- `firebase_core`: ^2.18.0
- `cloud_firestore`: ^4.15.1
- `firebase_storage`: ^11.7.1

## Screens

1. **Payment Methods** (`PaymentMethodsView`):
    - Displays available payment options
    - Navigation to Add Card screen

2. **Add Card** (`AddCardView`):
    - Form for entering card details
    - Real-time card preview
    - Save functionality

3. **Profile Details** (`ProfileDetailsView`):
    - Displays user information from Firebase

## Controller

- **VisaCardController**:
    - Manages card data state
    - Handles input formatting
    - Coordinates with Firebase service

## Firebase Integration

- **FirebaseService**:
    - Save card details to Firestore
    - Retrieve saved cards
    - User profile management

## Color Scheme

| Color Name      | Hex Code  | Usage                     |
|-----------------|----------|---------------------------|
| Primary         | #f2b4a3  | Buttons, accents          |
| Secondary       | #f8eee4  | Text fields, backgrounds  |
| Text            | #d99e8b  | Primary text              |
| Background      | #fdfdfd  | App background            |

## Getting Started with Development

1. Set up your Flutter environment
2. Configure Firebase for your platform
3. Implement new features following the MVVM architecture
4. Maintain consistent styling using the constants file

## Contribution Guidelines

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Open a pull request

## License

[MIT License](LICENSE) <!-- Add your license file if applicable -->

---

**Note**: This project was developed as part of a Flutter task submission. The implementation focuses on clean architecture, proper state management, and Firebase integration.

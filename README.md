# Bookly App 📚

**Bookly** is a Flutter-based mobile application for browsing, reading, and purchasing books.  
This project is currently under active development.

## 🚧 Project Status

The app is still in progress. New features and improvements are being added regularly.

## 🧠 Architecture & Technologies

- **MVVM** pattern for clean and scalable code structure.
- **Bloc** for effective and reactive state management.
- **Firebase** (planned) for:
  - User authentication
  - Storing user-related data like wishlist, preferences, etc.

## 🔮 Planned Features

- Browse books by categories
- View book details: cover, title, author, rating, and more
- Add books to a **Wishlist**
- Firebase authentication (sign in / sign up)
- Personalized book suggestions
- In-app reading functionality

## 📁 Current Project Structure

```bash
lib/
├── core/
│   ├── utils/        # Reusable styles, constants, etc.
│   └── widgets/      # Reusable shared widgets
├── features/
│   ├── home/         # Home screen UI and logic
│   └── search/       # Search feature (in progress)
├── constants.dart    # Global constants
└── main.dart         # App entry point

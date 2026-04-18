# 🌊 SeaScope — Explore Marine Life

SeaScope is a modern iOS application built with SwiftUI that allows users to explore and learn about marine life in an interactive and visually engaging way.
This app is designed with clean architecture principles and a delightful UI inspired by the ocean.

---

## ✨ Features

* 🔍 **Search Marine Life**
  Easily search and filter marine species.

* 📋 **List of Marine Animals**
  Display at least 10+ marine species with images and names.

* 📄 **Detail Page**
  Rich detail including:

  * Description
  * Habitat
  * Diet
  * Size
  * Lifespan
  * Fun Fact

* ❤️ **Favorite System (Persistent)**
  Save your favorite marine animals using local storage.

* 👤 **About Page**
  Displays developer identity (for submission requirement).

* ⏳ **Loading Indicator**
  Smooth loading experience when fetching data.

* 🌊 **Modern Ocean UI**
  Clean, gradient-based interface inspired by the sea.

---

## 🧠 Why SeaScope?

The ocean is one of the most important ecosystems on Earth, yet many people are not familiar with the diversity of marine life.

SeaScope aims to:

* Increase awareness of marine biodiversity
* Provide accessible educational content
* Encourage appreciation of ocean ecosystems
* Promote conservation mindset

---

## 🏗️ Tech Stack

* **SwiftUI** → UI framework
* **MVVM + Clean Architecture**
* **Combine / Async-Await** → state & async handling
* **UserDefaults** → local persistence (favorites)
* **Xcode** → development environment

---

## 🧱 Architecture

This project uses **Clean Architecture** to ensure scalability and maintainability.

```text
Presentation Layer
├── View (UI Rendering)
├── Screen (State Binding / Action Handler)
├── ViewModel (Business Logic)

Domain Layer
├── UseCase (Application Logic)
├── Entity (Marine Model)

Data Layer
├── Repository (Abstraction)
├── LocalDataSource (UserDefaults)
```

---

## 🔄 Data Flow

```text
View → Screen → ViewModel → UseCase → Repository → DataSource
```

---

## 📦 Dependency Injection

This project uses **Manual Dependency Injection**:

* Dependencies are provided via a central DI container (`AppDI`)
* ViewModel does not create dependencies directly
* Improves testability and separation of concerns

---

## 💾 Persistence (Favorites)

Favorites are stored using `UserDefaults`:

* Lightweight storage for small data
* Stores only marine IDs
* Data persists even after app is closed

---

## 🖼️ UI Highlights

* Gradient ocean background
* Card-based list design
* Responsive layout with SwiftUI
* Modern detail screen with hero image
* Interactive favorite button

---

## 🧪 Additional Improvements

* Clean code practices (no unused imports, proper indentation)
* Modular structure (View, Screen, ViewModel separation)
* Reusable UI components (InfoCard, MarineCard)
* Preview support for SwiftUI

---

## 📁 Project Structure

```text
SeaScope/
├── Presentation/
│   ├── Home/
│   ├── Detail/
│   ├── Favorite/
│   └── About/
│
├── Domain/
│   ├── Model/
│   └── UseCase/
│
├── Data/
│   ├── Repository/
│   └── Local/
│
├── DI/
│   └── AppDI.swift
```

---

## 🚀 Future Improvements

* API integration (real-time marine data)
* Image loading optimization (async image + caching)
* CoreData / database persistence
* Animation & micro-interactions
* Dark mode optimization

---

## 👤 Author

Created by **Nurhaq Halim**
Mobile Dev (Learning & Building 🚀)

---

## 📌 Notes for Reviewer

This submission includes:

* Clean Architecture implementation
* Persistent favorite feature (UserDefaults)
* Modern UI with proper layout & spacing
* Separation of concerns (View / Screen / ViewModel)
* Additional UX improvements (loading state, search, etc.)

---

## 🌊 Closing

SeaScope is built not only as a technical project, but also as a small contribution to raising awareness about marine life and ocean conservation.

---


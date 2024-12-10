# Bhagavad Gita Application - README  

Welcome to the **Bhagavad Gita Application**! This application provides an easy and interactive way to read, understand, and learn the teachings of the Bhagavad Gita. Below, you will find details about the implementation and how the app manages its data and functionality.

---

## Features  

- **Read and Explore Chapters**: Access all 18 chapters of the Bhagavad Gita.  
- **Search Functionality**: Quickly find verses or topics of interest.  
- **Bookmark Verses**: Save your favorite verses for future reference.  
- **Offline Availability**: Store data locally using SharedPreferences for seamless access.  

---

## Technology Stack  

### 1. **Provider for State Management**  
The **Provider** package is used to efficiently manage state across the application.  
- It allows separation of UI and business logic.  
- Ensures smooth reactivity when data changes.

### 2. **JSON for Data Storage**  
- The Bhagavad Gita chapters and verses are stored in a structured JSON format.  
- JSON is used to provide easy parsing and access to content dynamically.

### 3. **SharedPreferences for Persistence**  
- **SharedPreferences** is used for lightweight, persistent data storage.  
- Used for saving user preferences, bookmarks, and other non-complex data.

---

## Code Structure  

### **1. Models**  
**`VerseModel` and `ChapterModel`**:  
- Define the data structure for verses and chapters.  
- Parse JSON data into these models for structured handling.  

### **2. Providers**  
**`VerseProvider`**:  
- Manages the state of verses and bookmarks.  
- Notifies UI components when there is a change in the data.  

**`ChapterProvider`**:  
- Handles the list of chapters and their associated metadata.  

### **3. JSON Handling**  
- JSON files are included in the app's assets directory.  
- Loaded at runtime for dynamic access.  
- Example file structure:  
  ```json
  {
    "chapter_id": 1,
    "chapter_name": "Arjuna Vishada Yoga",
    "verses": [
      {
        "verse_id": 1,
        "text": "Dhritarashtra said:...",
        "translation": "..."
      }
    ]
  }
  ```

### **4. SharedPreferences**  
- **Bookmarks**:  
  Bookmarked verses are stored as a JSON string in SharedPreferences.  
  Example:  
  ```json
  {
    "bookmarks": [
      { "chapter_id": 1, "verse_id": 5 },
      { "chapter_id": 2, "verse_id": 47 }
    ]
  }
  ```
- **User Preferences**:  
  Store settings like last-read chapter or UI theme preferences.

---

# Screenshorts
<div>
  <img src="https://github.com/user-attachments/assets/7c9e3abe-9ec5-42e5-aa3c-a024074bcbb8"height=500px>
  <img src="https://github.com/user-attachments/assets/d1aff53c-2d78-45c5-ad75-d7de71eeb3f4"height=500px>
  <img src="https://github.com/user-attachments/assets/3d0bab52-9aec-4515-99c1-15ccf9d9abaf"height=500px>
  <img src="https://github.com/user-attachments/assets/0db885ce-8dda-49b5-b4e2-415670a85abf"height=500px>
  <img src="https://github.com/user-attachments/assets/c4bf76d5-5dab-40ba-b4ba-751234f1ece6"height=500px>
</div>

https://github.com/user-attachments/assets/bcb7a489-9c98-4956-a683-c49142b33e95


---

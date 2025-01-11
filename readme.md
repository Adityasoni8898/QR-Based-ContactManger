Contact/Prospects Manager

Contact Manager is a SwiftUI-based app that helps users manage and categorize their prospects effectively. With features like QR code generation, sorting, and filtering, it serves as a simple yet powerful contact management tool. Users can add, view, and organize potential contacts with ease.

https://youtube.com/shorts/ZZ9wnH5WOXQ

![Demo](ContactManagerAppPreview.gif)

Features

1. Prospects Management
	•	Categorize prospects into three sections:
	•	Everyone: View all prospects.
	•	Contacted: View contacted prospects.
	•	Uncontacted: View uncontacted prospects.
	•	Add and edit prospect details, including name and email address.
	•	Automatically store the date a prospect was added.

2. Sorting Options
	•	Toggle sorting between:
	•	By name.
	•	By the most recently added date.

3. Personal QR Code Generator
	•	Users can input their name and email address, which gets encoded into a QR code.
	•	QR code is shareable using context menus.

Code Overview

Main Components
	•	ContentView.swift
	•	Displays tabs for navigating between the main prospect views:
	•	Everyone
	•	Contacted
	•	Uncontacted
	•	Includes sorting buttons for the prospect list.
	•	EditView.swift
	•	Provides a form interface to edit a prospect’s details, including name and email.
	•	Displays the date a prospect was added.
	•	MeView.swift
	•	Allows users to enter their details (name and email address) and generate a personalized QR code.
	•	Features real-time updates for QR code generation.
	•	Prospect.swift
	•	The core data model representing a prospect.
	•	Stores:
	•	Name
	•	Email address
	•	Contacted status (Boolean)
	•	Date added

Technologies and Frameworks
	•	SwiftUI: Used for building the user interface.
	•	CoreImage: To generate QR codes dynamically.
	•	AppStorage: For persistent user data storage (e.g., name, email).
	•	SwiftData: To manage prospect data models effectively.

Architecture
	•	MVVM-inspired architecture for managing views and data models.
	•	NavigationStack and TabView for seamless app navigation.
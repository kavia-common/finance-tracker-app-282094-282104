# Finance Tracker Frontend - Setup

1) Create a .env file at project root (same level as pubspec.yaml) by copying:
   cp .env.example .env

2) Edit the .env and set API_BASE_URL to your backend URL (no trailing slash):
   API_BASE_URL=https://your-backend-host:port

3) Get packages:
   flutter pub get

4) Run:
   flutter run

Notes:
- The app uses Provider for state management, http for API calls, sqflite and shared_preferences for local storage.
- Tabs: Dashboard, Transactions, Charts, Profile.
- If you change .env, rebuild the app to reload variables.

<img width="483" height="852" alt="Screenshot 2026-06-24 141946" src="https://github.com/user-attachments/assets/858160bd-d634-452b-a41e-4f1e680ab8ee" />
# whats_app

WhatsApp chat screen UI built with Flutter — a high-fidelity replication of the
dark-mode chat interface (UI only, no business logic).

## Screenshots / Design

The screen replicates a WhatsApp-style conversation:

- A green app bar with a back button, profile picture, contact name, and call /
  video / more actions.
- A dark message list with a repeating WhatsApp-themed background pattern.
- Incoming (green) and outgoing (gray) chat bubbles.
- A bottom input bar with a camera icon, text field, send icon, and a circular
  mic button.

## Architecture (Feature-First)

```
lib/
├── main.dart                          # App entry point
├── core/                              # Shared across the whole app
│   ├── constants/
│   │   └── app_assets.dart            # Image & icon paths
│   └── theme/
│       ├── app_colors.dart            # Colors
│       └── app_text_styles.dart       # Text styles
└── features/
    └── chat/                          # Chat feature (isolated)
        ├── screens/
        │   └── chat_screen.dart       # Full chat screen
        └── widgets/
            ├── chat_app_bar.dart      # Top app bar
            ├── message_bubble.dart    # Single message bubble
            └── message_input_bar.dart # Bottom input bar
```

**Why Feature-First?** Anything shared lives under `core/`, while each feature
is self-contained under `features/<name>/` with its own `screens/` and
`widgets/`. Adding a new feature never touches existing code, and the UI is
composed from small, reusable widgets.

## Design tokens

| Token   | Value     |
| ------- | --------- |
| White   | `#FFFFFF` |
| Green   | `#168C4B` |
| Black   | `#181818` |
| Outgoing bubble | `#232D36` |

## Getting Started

```bash
flutter pub get
flutter run
```

## Assets

All images and icons live under `assets/images/` and are registered in
`pubspec.yaml`.

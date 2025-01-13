# RickAndMortyApp

## Description

RickAndMortyApp is an iOS application that displays characters from the Rick and Morty universe, fetched via an API. The app shows detailed information about the characters, including their name, status, species, gender, and location. It also provides an option to watch episodes featuring the characters.

## Features

- Display a list of characters with images.
- Show detailed information about each character: name, status, species, gender, and location.
- Button to watch episodes featuring the character.

## Technical Stack

- **Swift:** Programming language used for iOS development.
- **SwiftUI:** Framework for building the user interface with declarative syntax.
- **Combine:** Framework for handling asynchronous events with publishers and subscribers.
- **URLSession:** Used for making network requests to fetch data from the API.
- **Rick and Morty API:** Source of character data.

## Architecture

The app follows the MVVM (Model-View-ViewModel) pattern:

### Model
- Represents the data and business logic of the application.
- Includes data structures like `Character`, `CharacterResponse`, `Info`, and `Location`.
- Models conform to the `Codable` protocol for easy decoding of data from the API.

### View
- Represents the user interface and displays data on the screen.
- Includes all SwiftUI views such as `ContentView`, `CharacterRow`, `CharacterImage`, `CharacterInfo`, `CharacterLocation`, `CharacterNameAndStatus`, `CharacterSpeciesAndGender`, `StatusView`, and `WatchEpisodesButton`.
- Views are updated automatically when data changes, using data provided by the ViewModel.

### ViewModel
- Manages data and business logic, acting as a bridge between the Model and the View.
- Includes `CharacterViewModel` which uses the Combine framework to manage state.
- Fetches data using `URLSession` and updates the state of the views as needed.
- Utilizes `@Published` properties to automatically notify views of data changes.

### Utilities and Extensions
- **Color+Hex:** Extension for creating colors from hexadecimal values.
- **MonochromeModifier:** ViewModifier for changing the color of images based on the character's status (alive or dead).

## Requirements

- Xcode 12.0 or higher.
- iOS 13.0 or higher.

## API

This project uses the [Rick and Morty API](https://rickandmortyapi.com/) to fetch character data.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

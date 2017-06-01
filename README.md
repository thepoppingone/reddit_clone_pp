# Sample Reddit Clone App
The app only consists of 3 tabs worth of navigation - Home, New, Profile
This app does not connect to any remote database or server or even a local iOS persistence datastoer for simplicity sake

### Home
This screen shows a collection of topics sorted by its upvotes in descending order. 
Each topic also has an upvote or downvote button to increase or decrease its `upvote` value

### New
This screen allows the user to add a new topic to the existing stream of topics by adding a simple string of characters not more than 255 characters

### Profile
The profile works simply by selecting the user with the buttons available and the current user will be indicated on the screen

Basis of Code
- CollectionView is used to display each Topic
- Extra codes of selecting the user is meant for demonstrating the case of having different users.
- A singleton class is used to manage all the data required and initiated upon starting the app
- Two object classes are created: 1) Topic 2)User
- Objects are used for future extensibility for easier displaying of data
- Each storyboard reference is linked to the first storyboard for easier management of views
- A custom collectionviewcell swift file is created for specific UI elements targeting 

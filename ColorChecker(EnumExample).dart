// Define an enum to represent different colors.
enum Color {
  black,
  blue,
  brown,
  gray,
  green,
  pink,
  red,
  white,
  yellow,
}

// Check whether two colors are equal.
bool areColorsEqual(Color color1, Color color2) {
  return color1 == color2;
}

// Main function.
void main() {
  // Define the favorite color.
  final favoriteColor = Color.blue;

  // Print information about the favorite color.
  print('Favorite color index number: ${favoriteColor.index}');
  print('Favorite color: ${favoriteColor.name}');

  // Define a map of people and their chosen colors.
  final Map<String, Color> chosenColors = {
    'Batuhan': Color.blue,
    'Veli': Color.pink,
    'Ali': Color.red,
    'Onur': Color.green,
    'Kaan': Color.yellow,
    'Oğuzhan': Color.black,
  };

  // Check each person's chosen color and print a message.
  for (final person in chosenColors.keys) {
    var chosenColor = chosenColors[person];

    if (chosenColor != null && areColorsEqual(favoriteColor, chosenColor)) {
      print(
          'Dear $person, the color you chose is the same as the favorite color.');
    } else {
      print(
          'Dear $person, the color you chose does not match the favorite color!');
    }
  }
}

void main() {
  var favorites = ['Seafood', 'Salad', 'Nugget', 'Soup'];
  var others = ['Cake', 'Pie', 'Donut'];
  var allFavorites = [...favorites, ...others];
  print(allFavorites);
}

/// Output:
/// [Seafood, Salad, Nugget, Soup, Cake, Pie, Donut]

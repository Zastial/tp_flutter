class Character {
  String name;
  String species;
  String homePlanet;
  String affiliation;
  int health;

  Character({
    required this.name,
    required this.species,
    required this.homePlanet,
    required this.affiliation,
    required this.health,
  });

  bool hasMasteryOfForce() {
    return false;
  }

  void describe() {
    print('Nom: $name');
    print('Espèce: $species');
    print("Planète d'origine: $homePlanet");
    print('Affiliation: $affiliation');
    print('Vie: $health');
    if (hasMasteryOfForce()) {
      print('$name maitrîse la force !');
    } else {
      print('$name ne maitrîse pas la force');
    }
  }
}

class Jedi extends Character {
  Jedi({
    required String name,
    required String species,
    required String homePlanet,
    required String affiliation,
    int health = 100,
  }) : super(
         name: name,
         species: species,
         homePlanet: homePlanet,
         affiliation: affiliation,
         health: health,
       );

  @override
  bool hasMasteryOfForce() {
    return true;
  }

  // On pourrait ajouter un paramètre à Jedi pour changer cette valeur
  // Pour l'exemple, je la laisse en dur
  bool usingLightSaber() {
    return true;
  }

  @override
  void describe() {
    super.describe();
    if (usingLightSaber()) {
      print('$name utilise son sabre laser avec maitrîse');
    }
    print("--------------------------");
  }
}

class Ewok extends Character {
  Ewok({
    required String name,
    required String species,
    required String homePlanet,
    required String affiliation,
    int health = 80,
  }) : super(
         name: name,
         species: species,
         homePlanet: homePlanet,
         affiliation: affiliation,
         health: health,
       );
}

void main() {
  var jedi = new Jedi(
    name: 'Luke Skywalker',
    species: 'Humain',
    homePlanet: 'Tatooine',
    affiliation: 'Rebels',
  );

  var ewok = new Ewok(
    name: 'Wicket',
    species: 'Ewok',
    homePlanet: 'TatooEndorine',
    affiliation: 'Rebels',
  );

  jedi.describe();
  ewok.describe();
}

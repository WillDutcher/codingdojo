const pokémon = Object.freeze([
    { "id": 1,   "name": "Bulbasaur",  "types": ["poison", "grass"] },
    { "id": 5,   "name": "Charmeleon", "types": ["fire"] },
    { "id": 9,   "name": "Blastoise",  "types": ["water"] },
    { "id": 12,  "name": "Butterfree", "types": ["bug", "flying"] },
    { "id": 16,  "name": "Pidgey",     "types": ["normal", "flying"] },
    { "id": 23,  "name": "Ekans",      "types": ["poison"] },
    { "id": 24,  "name": "Arbok",      "types": ["poison"] },
    { "id": 25,  "name": "Pikachu",    "types": ["electric"] },
    { "id": 37,  "name": "Vulpix",     "types": ["fire"] },
    { "id": 52,  "name": "Meowth",     "types": ["normal"] },
    { "id": 63,  "name": "Abra",       "types": ["psychic"] },
    { "id": 67,  "name": "Machamp",    "types": ["fighting"] },
    { "id": 72,  "name": "Tentacool",  "types": ["water", "poison"] },
    { "id": 74,  "name": "Geodude",    "types": ["rock", "ground"] },
    { "id": 87,  "name": "Dewgong",    "types": ["water", "ice"] },
    { "id": 98,  "name": "Krabby",     "types": ["water"] },
    { "id": 115, "name": "Kangaskhan", "types": ["normal"] },
    { "id": 122, "name": "Mr. Mime",   "types": ["psychic"] },
    { "id": 133, "name": "Eevee",      "types": ["normal"] },
    { "id": 144, "name": "Articuno",   "types": ["ice", "flying"] },
    { "id": 145, "name": "Zapdos",     "types": ["electric", "flying"] },
    { "id": 146, "name": "Moltres",    "types": ["fire", "flying"] },
    { "id": 148, "name": "Dragonair",  "types": ["dragon"] }
]);

// List of pokémon that have names that start with letter "B"
const bListPkmn = pokémon.filter( p => p.name[0] === "B" );
console.log(bListPkmn)


// Array of the pokémon ids
const pkmnIds = pokémon.map( p => p.id )
console.log(pkmnIds);

/*     ASSIGNMENT     */
// Return array of pokémon objects where id is evenly divisible by 3
const pkmnDiv3 = pokémon.filter(pkmn => pkmn.id % 3 === 0);
console.log(pkmnDiv3);


// Return array of pokémon objects that are "fire" type
const pkmnFireType = pokémon.filter(pkmn => pkmn.types.includes("fire"));
console.log(pkmnFireType);


// Return array of pokémon objects that have more than one type
const pkmnMultTypes = pokémon.filter(pkmn => pkmn.types.length > 1);
console.log(pkmnMultTypes);


// Return array of pokémon with just their names
const pkmnNames = pokémon.map(pkmn => pkmn.name);
console.log(pkmnNames);


// Return array of just the names of pokémon objects that have an id greater than 99
const pkmnNameIdOver99 = pokémon.filter(pkmn => pkmn.id > 99).map(pkmn => pkmn.name);
console.log(pkmnNameIdOver99);


// Return array of pokémon objects that include their name and whose only type is poison
const pkmnNamePsn = pokémon.filter(pkmn => pkmn.types.length === 1).filter(pkmn => pkmn.types[0] === "poison").map(pkmn => pkmn.name);
console.log(pkmnNamePsn);


// Return array containing just the first type of all pokémon whose second type is "flying"
const pkmnFirstType = pokémon.filter(pkmn => pkmn.types[1] === "flying").map(pkmn => pkmn.types[0]);
console.log(pkmnFirstType);


// Return a count of the number of pokémon whose type is "normal"
const pkmnNrmlCt = pokémon.filter(pkmn => pkmn.types.includes("normal")).length;
console.log("'Total of 'normal'-type pokémon: " + pkmnNrmlCt);
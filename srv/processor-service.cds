using { sap.capire.Pokedex as my } from '../db/schema';

service ProcessorService {

    @readonly
    entity Habilidades as projection on my.Habilidades;

    @readonly
    entity Pokemons as projection on my.Pokemons;

    @readonly
    entity PkHb as projection on my.PokeHab;
}
extend projection ProcessorService.Pokemons with {
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/'|| numero ||'.png' as image: String
}

annotate ProcessorService.Pokemons with @odata.draft.enabled; 
annotate ProcessorService with @(requires: 'support');



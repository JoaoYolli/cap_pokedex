const cds = require('@sap/cds')

class ProcessorService extends cds.ApplicationService {
  /** Registering custom event handlers */
  init() {
    
    return super.init();
  }
  // async onShowPokemon(req){
  //   let data = req.data
  //   console.log(req.target)
  //   if (data.numero !== undefined){

  //     let pokemon_data = await fetch("https://pokeapi.co/api/v2/pokemon/"+data.numero)
  //     .then(response => response.json());

  //     let imagen = await fetch(pokemon_data.sprites.front_default);

  //     req.target['@UI.HeaderInfo.ImageUrl'] = pokemon_data.sprites.front_default;

  //     console.log(req.target['@UI.HeaderInfo.ImageUrl']);

  //   }

  // }
}
module.exports = { ProcessorService }

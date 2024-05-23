sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'pokedex/pokemons/test/integration/FirstJourney',
		'pokedex/pokemons/test/integration/pages/PokemonsList',
		'pokedex/pokemons/test/integration/pages/PokemonsObjectPage'
    ],
    function(JourneyRunner, opaJourney, PokemonsList, PokemonsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('pokedex/pokemons') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThePokemonsList: PokemonsList,
					onThePokemonsObjectPage: PokemonsObjectPage
                }
            },
            opaJourney.run
        );
    }
);
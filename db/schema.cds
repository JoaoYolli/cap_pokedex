namespace sap.capire.Pokedex; 

entity PokeHab{
key id : Integer;
   pkID : Integer;
   abID : Integer;
       habilidad : Association to one Habilidades on habilidad.ID = $self.abID
}

entity Habilidades{
key ID         : Integer not null;
    nombre     : String not null;
    descripcion : String
}

entity Pokemons{
key numero      : Integer not null;
    nombre      : String not null;
    tipo1       : String not null;
    tipo2       : String;
    altura      : Decimal;
    peso        : Decimal;
    descripcion : String;
    habilidades : Association to many PokeHab on habilidades.pkID = $self.numero
}

//Palier1:

//the difference between const and final is that const
//must have a value while the code is being written while final
//allows the value to be calculated later while the application 
//is running but once it recieves that value it locks down and 
//cannot be changed ever again 


//Palier2:

//dart null safety system exists to stop errors that can occur 
//when a variable is null and you try to access it


//Palier3:

//flutter used named parameters to make it easier to read and 
//understand the code and make the code cleaner and easier to maintain


//palier4:

//the difference between a map and a list is that a map is a collection 
//of a key value pairs and cannotcontain duplicated keys while a list 
//stores only values ordered with an index


//palier5:

//we used final to make sure that the variable cannot be reassigned or changed later

class Cours{
    final String nom;
    final int coeff;
    final double note;

    Cours({
        required this.nom,
        required this.coeff,
        required this.note
    });

}

void main(){
    final cours=[
        Cours(nom: 'Java', coeff: 3, note: 13.5),
        Cours(nom: 'Python', coeff: 2, note: 16.75),
        Cours(nom: 'Math', coeff: 2, note: 12.0),
        Cours(nom: 'English', coeff: 1, note: 18.25),
    ];

    double sommeCoeff=0;
    double sommeTot=0;

    for(Cours c in cours){
        sommeCoeff+= c.coeff;
        sommeTot+= c.note* c.coeff;

    }

    Cours bestCour= cours[0];
    for(Cours c in cours){
        if(c.note> bestCour.note){
            bestCour= c;
        }
    }

    double moyenne= sommeTot/ sommeCoeff;
    print('Moyenne Generale: ${moyenne.toStringAsFixed(2)}');

    print('Meilleure note: ${bestCour.note} est en ${bestCour.nom}');
}


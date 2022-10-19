import 'dart:io';
import 'dart:math';

enum C{rock,paper,scissors}
void main(List<String> args) {
  //Score values
    int playerscore=0;
    int pcscore=0;
  while(true){
    print("Welcome to rock paper scissors game (Rock/Paper/Scissors or Quit) enter them for (r/p/s/q)");
    //Player choise move
    final input = stdin.readLineSync();
    var move;
    if(input=="r"){
      move = C.rock.name;
    }
    else if(input=="p"){
      move=C.paper.name;
    }
    else if(input=="s"){
      move=C.scissors.name;
    }
    else if(input=="q"){
      print("Game over");
      break;
    }
    else{
      print("You did not enter a valid value, try again");
      return;
    }
    //Pc moves
    final random=Random().nextInt(3);
    final pcmove=C.values[random].name;
    //Game
    if(move==C.rock.name&&pcmove==C.scissors.name||
    move==C.paper.name&&pcmove==C.rock.name||
    move==C.scissors.name&&pcmove==C.paper.name){
      playerscore++;
      print("You Win Score : You $playerscore Computer $pcscore");

    }
    else if(move==pcmove){
      print("Draw Score : You $playerscore Computer $pcscore");
    }
    else{
      pcscore++;
      print("Computer Win Score : You $playerscore Computer $pcscore");
    }
    print("Player : $move");
    print("Computer : $pcmove");
   


 
}
}
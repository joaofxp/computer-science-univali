import { ParserGenerator } from "ll1";
import { SetsGenerator } from "ll1";
import { Grammar } from "ll1";

let grammar = `
  S -> "while" B "do" S 
  S -> "com"
  B -> B "or" A 
  B -> A
  A -> A "and" E 
  A -> E
  E -> "not" E 
  E -> "(" B ")" 
  E -> "exp"
`;

var pg = new ParserGenerator(grammar);

pg.printTable();

var g = new Grammar(grammar);
var sg = new SetsGenerator(g);

sg.printSet(sg.getFirstSets());
sg.printSet(sg.getFollowSets());

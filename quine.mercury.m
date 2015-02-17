:- module quine.
:- interface.
:- import_module io.
:- pred main(io::di,io::uo) is det.
:- implementation.
:- import_module char,list,string.
main(!IO) :-
  char.det_from_int(34,WQ),
  char.det_from_int(10,NL),
  S = ":- module quine.%c:- interface.%c:- import_module io.%c:- pred main(io::di,io::uo) is det.%c:- implementation.%c:- import_module char,list,string.%cmain(!IO) :-%c  char.det_from_int(34,WQ),%c  char.det_from_int(10,NL),%c  S = %c%s%c,%c  io.format(%c%s%c,[c(NL),c(NL),c(NL),c(NL),c(NL),c(NL),c(NL),c(NL),c(NL),c(WQ),s(S),c(WQ),c(NL),c(WQ),s(S),c(WQ),c(NL)],!IO).%c",
  io.format(":- module quine.%c:- interface.%c:- import_module io.%c:- pred main(io::di,io::uo) is det.%c:- implementation.%c:- import_module char,list,string.%cmain(!IO) :-%c  char.det_from_int(34,WQ),%c  char.det_from_int(10,NL),%c  S = %c%s%c,%c  io.format(%c%s%c,[c(NL),c(NL),c(NL),c(NL),c(NL),c(NL),c(NL),c(NL),c(NL),c(WQ),s(S),c(WQ),c(NL),c(WQ),s(S),c(WQ),c(NL)],!IO).%c",[c(NL),c(NL),c(NL),c(NL),c(NL),c(NL),c(NL),c(NL),c(NL),c(WQ),s(S),c(WQ),c(NL),c(WQ),s(S),c(WQ),c(NL)],!IO).

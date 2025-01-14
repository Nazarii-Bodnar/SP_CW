Program AA ; 
Var Int16 VI , DI , RE , CC , CB , CE
Begin;
  Get ( VI )
  VI <- VI + 1
  For  CC <- 0 To 32767 Do
    DI <- VI - 1
    For  CB <- 0 To 32767 Do
      If ( DI >> 2 ) ; else Goto EB ;
      RE <- VI
      For  CE <- 0 To 32767 Do
        If ( RE >> DI ) ; else Goto EC ;
        RE <- RE - DI
      ;
      EC :
      If ( RE Eq 0 ) Goto EB ;
      DI <- DI - 1
    ;
    EB :
    If ( DI Eq 1 ) Goto EA ;
    VI <- VI + 1
  ;
  EA :
  Put ( VI )
End
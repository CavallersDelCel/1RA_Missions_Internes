//=======================================================================================================//
// Arxiu: cc_configEquipacio_bwa3_faction.sqf                                                            //
// Autor: CC_Magnetar                                                                                    //
// Versió: 1.0                                                                                           //
// Creació del Document: 2015/11/05                                                                      //
// Descripció: Aquest document serveix per equipar els jugadors amb l'equipació dissenyada per la missió //
//             sense fer servir els perfils estàndard del grup dels Cavallers del Cel. Requereix que el  //
//             jugador formi part de la facció Bundeswehr "bwa3_faction". Cal afegir la següent línia al //
//             INIT de la unitat en l'editor:                                                            //
//                                                                                                       //
//                  ["ROL_JUGADOR",this] call cc_fnc_configEquipacio;                                    //
//                                                                                                       //
//             on "ROL_JUGADOR" és una de les següents entrades:                                         //
//                                                                                                       //
//                  ROL_JUGADOR         Rol assignat                                                     //
//                  pl                  Cap de secció (Platoon Leader)                                   //
//                  psg                 Sergent (Platoon Sergeant)                                       //
//                  rto                 Operador de Radio (Platoon Radiotelephone Operator)              //
//                  fo                  Observador avançat (Forward Observer)                            //
//                  me                  Metge (Platoon Medic)                                            //
//                  sl                  Líder d'esquadra (Squad Leader)                                  //
//                  tl                  Líder d'equip (Team Leader)                                      //
//                  rfl                 Fuseller (Rifleman)                                              //
//                  rflat               Fusellser amb AT4 (Rifleman with AT4)                            //
//                  gr                  Granader (Grenadier)                                             //
//                  ar                  Fuseller automàtic (Automàtic Rifleman)                          //
//                  dm                  Tirador designat (Designated Marksman)                           //
//                  mg                  Metrallador (Machine Gunner)                                     //
//                  amg                 Assitent de metrallador (Assitant Machine Gunner)                //
//                  at                  Antitanc (Antitank)                                              //
//                  aat                 Assistent d'antitanc (AT Ammo handler)                           //
//                  aa                  Anti aèri (Anti Air gunner)                                      //
//                  aaa                 Assistent d'anti aèri (Anti Air Assitant)                        //
//                  en                  Enginyer (Engineer)                                              //
//                  sn                  Franctirador (Sniper)                                            //
//                  sp                  Observador (Spotter)                                             //
//                  divsl               Bussejador líder d'esquadra (Diver Squad Leader)                 //
//                  divme               Bussejador metge (Diver Medic)                                   //
//                  divexp              Bussejador especialista en explosius (Diver Specialist in        //
//                                      Explosives)                                                      //
//                  div                 Bussejador (Diver)                                               //
//                  hplt                Pilot d'helicòpter (Helicopter pilot)                            //
//                  jplt                Pilot d'avió de combat (Jet pilot)                               //
//                                                                                                       //
//                  hmmwv               Equipació per HMMWVs                                             //
//                  blx                 Equipació per British Rigdback                                   //
//                  sdv                 Equipació per submarins                                          //
//                                                                                                       //
// Canvis: 0.1 (2015/11/05) Versió inicial.                                                              //
//         1.0 (2015/11/26) Versió estable de la plantilla.                                              //
//=======================================================================================================//

//============================================ FI DEL FITXER ============================================//

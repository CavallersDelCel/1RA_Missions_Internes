//=======================================================================================================//
// Arxiu: fn_tfar_configurarFreqRadios.sqf                                                               //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 06/03/2015                                                                      //
// Descripció: Aquest document serveix per configurar les frequències de radio al al Task Force          //
//             Arrowhead Radio (TFAR) https://github.com/michail-nikolaev/task-force-arma-3-radio/wiki   //
//=======================================================================================================//

// [ Canal, Volum, [Freqüències], Stereo, Encriptacio, Canal addicional,?].
tf_freq_west =    [0 ,7, ["200","201","202","203","41","51","61","71","81"],0, "b", -1, 0];
tf_freq_west_lr = [0 ,7, ["200","210","220","41","51","61","42","52","62"],0, "b", -1, 0];
tf_freq_east  =   [0 ,7, ["201","202","203","200","41","51","61","71","81"],0, "o", -1, 0];
tf_freq_east_lr = [0 ,7, ["200","210","220","41","51","61","42","52","62"],0, "o", -1, 0];
tf_freq_guer  =   [0 ,7, ["201","202","203","200","41","51","61","71","81"],0, "g", -1, 0];
tf_freq_guer_lr = [0 ,7, ["200","210","220","41","51","61","42","52","62"],0, "g", -1, 0];

//============================================ FI DEL FITXER ============================================//
//=======================================================================================================//
// Arxiu: fn_tfar_configurarFreqRadios.sqf                                                               //
// Autor: CC_Magnetar                                                                                    //
// Versió: 0.1                                                                                           //
// Creació del Document: 06/03/2015                                                                      //
// Descripció: Aquest document serveix per configurar les frequències de radio al al Task Force          //
//             Arrowhead Radio (TFAR) https://github.com/michail-nikolaev/task-force-arma-3-radio/wiki   //
//=======================================================================================================//

// [ Canal, Volum, [Freqüències], Stereo, Encriptacio, Canal addicional,?]
tf_freq_west =    [0 ,7, ["201","202","203","204","41","51","61","512"],0, "b", 4];
tf_freq_west_lr = [0 ,7, ["41","51","61","42","52","62","43","53","63"],0, "b", -1];
tf_freq_east  =   [0 ,7, ["201","202","203","401","35","36","37","38","39"],0, nil, -1, 0];
tf_freq_east_lr = [3 ,7, ["31","32","33","34","35","36","37","38","39"],0, nil, -1, 0];
tf_freq_guer  =   [0 ,7, ["111","222","333","444","55","66","77","88","99"],0, nil, -1, 0];
tf_freq_guer_lr = [3 ,7, ["55","66","77","88","99","12","24","36","48"],0, nil, -1, 0];

//============================================ FI DEL FITXER ============================================//
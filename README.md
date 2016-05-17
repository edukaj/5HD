# Immagine base 5hd

## Partenza da ubuntu server 16.04

Ci troviamo meglio a partire da una versione server, perch&eacute; pare pi&uacute; semplice
installare pacchetti per arrivare ad avere della grafica pittosto che partire da desktop e togliere dei pacchetti.

Partendo dalla versione Desktop e togliendo i pacchetti purtroppo non siamo mai riuscito ad avere un sistema che fosse capace di bootare.

Il file 5HDInstalledPackets rappresenta una lista di tutti i pacchetti che sono stati installati o rimosso dopo l'installazione 
di ubuntu server.

## Nomenclatura della rete
In [questo link](http://askubuntu.com/questions/689070/network-interface-name-changes-after-update-to-15-10-udev-changes) c'&eacute;
una spiegazione sul perch&eacute; del cambio di nomenclatura della rete: eth0 &eacute; stato deprecato in favore
di un metodo nuovo che potrebbe risolvere i nostri problemi. 

## Patch

La cartella patch contiene le modifiche fatte alla versione ubuntu standard

## Problema di LC_ALL e simili
Qaundo ci colleghiamo ad un pc in generale tramite SSH non tutte le variabili di ambiente vengono
inizilaizzate correttamente.

In particolare perl si lamenta della mancata definizione di LC_ALL. La soluzione in questo [link](http://ubuntuforums.org/showthread.php?t=2268614)

## Lightdm
Vedere cartella etc/lightdm per le modifiche fatte

Lightdm &eacute; un display manager che si occupa di lanciare X server, user sessione e greeter per il login. 
Abbiamo modificato la configurazione in modo da fare l'autologin con utente ale 

## Configurazione monitors
Consiglio di leggere attentamente questo link su [arch linux](https://wiki.archlinux.org/index.php/multihead) le informazioni sono abbastanza generiche
per essere valide anche con Ubuntu 16.04.

I monitor vengono impostati tramite gli script di X nella cartella di etc/X11/xorg.conf.d.

In questo punto viene gestito anche il DPMS (Display Power Monitor Signal) in modo che i monitor non si spengano da soli.

Inoltre viene gestito il plug and play come da https://github.com/codingtony/udev-monitor-hotplug con varianti
 
## awesome
Tutti i file di modifica di awesome si trovano dentro la cartella awesome di questo repo. Per farli funzionare basta 
metterli dentro la cartella .config della 5hd

awesome viene avviato da lightdm, che a sua volta &eacute; lanciato all'avvio con auto login ale
quindi awesome lanciato da user ale cerca in   ~/.config/awesome/rc.lua il file di configurazione; in assenza cade nel default.

### Configurazione
Copio da /etc/xdg/awesome/rc.lua a ~/.config/awesome/rc.lua. Il file ~/.config/awesome/rc.lua quindi &eacute; stato modificato
in modo da selezionare il tema da ~/.config/awesome/themes/default.

### Impostazione del tema
I temi sono stati copiati da /usr/share/awesome/themes/default a ~/.config/awesome/themes/default

Ho quindi modificati tutti i path in modo da puntare ai posti giusti.

Il file ~/.config/awesome/themes/qamf/theme.lua &eacute; stato modificato in modo da togliere la barra superiore, il menu che comparre quando clicco col mouse e il binding della tastiera


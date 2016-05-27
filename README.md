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

## Configurazione intel
In questo [link](https://wiki.archlinux.org/index.php/intel_graphics) sono presenti una miriade di informazioni utili da tenere in considerazione sulla configurazione di GPU intel

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
quindi awesome lanciato da user ale cerca in   ~/.config/awesome/rc.lua il file di configurazione in assenza cade nel default.

Al file di "default" sono state rimosse tutte le parti che non servivano lasciando il minimo indispensabile per poter funzionare.

### Configurazione
Copio da /etc/xdg/awesome/rc.lua a ~/.config/awesome/rc.lua. Il file ~/.config/awesome/rc.lua quindi &eacute; stato modificato
in modo da selezionare il tema da ~/.config/awesome/themes/default.

### Impostazione del tema
I temi sono stati copiati da /usr/share/awesome/themes/default a ~/.config/awesome/themes/default

Ho quindi modificati tutti i path in modo da puntare ai posti giusti.

Il file ~/.config/awesome/themes/qamf/theme.lua &eacute; stato modificato in modo da togliere la barra superiore, il menu che comparre quando clicco col mouse e il binding della tastiera

Il tema presenta solo tre campi: se usare il wallpaper e le immagini per il monitor sx e dx

## PulseAudio
Dopo aver installato /etc/pulse/default.pa a ~/.config/pulse/default.pa. Modifico quindi il file che ho copiato in questo modo:

load-module module-alsa-sink device=plughw:0,3 sink_name=5hdl
load-module module-alsa-sink device=plughw:0,8 sink_name=5hdr

In fondo imposto come sink di default il canale sinistro

set-default-sink 5hdl


# Prove systemd 
facciamo qualche prova per vedere se usare systemd per lanciare tutto ha un senso.

## Nomenclatura
target: insieme di servizi
i servizi possono essere sia demoni che script one shot e tanto altro ....; nel nostro caso la start_whole_system la trasformiano
in un target. ad esempio il target score

si pensera' di realizzare un target mms che corrisponde ad una start diversa 
e cosi' via



## struttura
normalmente il target di default e' graphical.target
la nostyra idea e' rendere lo score un target, per cui raccoglie tutti i servizi necessari per partire e fermarsi
Questo permette di avere target diversi e poter cosi' testare in modo isolato contesti diversi di funzionamento (mms, score, effect server ..)

Lo score.target richiede come Dipendenza (requires) graphica.target e parte solo dopo che i servizi di quel target sono attivi

Il tutto si crea cosi'
.si fa un file .service da qualche parte, anche in cartella locale (/opt/qubicaamf/services/)
.sudo systemctl link <nome.service>
questo crea un link in /etc/systemd/system al servizio

in /lib/systemd/system ci deve essere un target; li'dentro ci si mette il .service
B
poi facendo systemctl enable <nome>.service dovrebbe create la cartella in /etc/systemd/system contenebet i servizi da lanciare 




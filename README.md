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

## Problema di `LC_ALL` e simili
Qaundo ci colleghiamo ad un pc in generale tramite SSH non tutte le variabili di ambiente vengono
inizilaizzate correttamente.

In particolare perl si lamenta della mancata definizione di LC_ALL. La soluzione in questo [link](http://ubuntuforums.org/showthread.php?t=2268614)

## Lightdm
Vedere cartella `etc/lightdm` per le modifiche fatte

Lightdm &eacute; un display manager che si occupa di lanciare X server, user sessione e greeter per il login. 
Abbiamo modificato la configurazione in modo da fare l'autologin con utente ale.

Leggere attentamente il [seguente link](https://wiki.archlinux.org/index.php/LightDM) che spiega in dettaglio come usare lightdm
e come impostare l'autologin.

[Questo link](https://wiki.archlinux.org/index.php/PAM) spiega in dettaglio come il sistema gestisce i vari accessi ai vari utenti.

## Configurazione intel
In questo [link](https://wiki.archlinux.org/index.php/intel_graphics) sono presenti una miriade di informazioni utili
da tenere in considerazione sulla configurazione di GPU intel

## Configurazione monitors
Consiglio di leggere attentamente questo link su [arch linux](https://wiki.archlinux.org/index.php/multihead)
le informazioni sono abbastanza generiche per essere valide anche con Ubuntu 16.04.

I monitor vengono impostati tramite gli script di X nella cartella di `etc/X11/xorg.conf.d`.

In questo punto viene gestito anche il DPMS (Display Power Monitor Signal) in modo che i monitor non si spengano da soli.

Inoltre viene gestito il plug and play come da [questo link](https://github.com/codingtony/udev-monitor-hotplug) con varianti

## Viewport
Per permettere lo zoom dello schermo la configurazione statica dei monito non e' sufficiente. *E' possibile* usare `xrandr` (x resize and rotate).

X funziona con una `framebuffer` che normalmente e' grande come la somma dei due monitor. Ad esempio se ho due monitor da 1280x720 ho un 
`framebuffer` di 2560x720 nel caso in cui siano affiancati.
Con `xrandr` e' possibile modificare la *vista* di ciascun monitor rispetto alla `framebuffer`: ad esempio se devo zoomare diciamo di 50px il monitor sx
e 60px quello dx. 

  
    new_width_sx = 1280 + 50 = 1330
    new_height_sx = 9/16 * 50 + 720 = ~748
  
    new_width_dx = 1280 + 60 = 1340
    new_height_dx = 9/16 * 60 + 720 = ~754
  
    xrandr --output HDMI1 --scale-from 1330x748 --output HDMI2 --pos 1330x0 --scale-from 1340x754
  
E voila'! 
  
 
## awesome
Tutti i file di modifica di awesome si trovano dentro la cartella awesome di questo repo. Per farli funzionare basta 
metterli dentro la cartella .config della 5hd

awesome viene avviato da lightdm, che a sua volta &eacute; lanciato all'avvio con auto login ale
quindi awesome lanciato da user ale cerca in `~/.config/awesome/rc.lua` il file di configurazione in assenza cade nel default.

Al file di "default" sono state rimosse tutte le parti che non servivano lasciando il minimo indispensabile per poter funzionare.

### Configurazione
Copio da `etc/xdg/awesome/rc.lua` a `~/.config/awesome/rc.lua`. Il file `~/.config/awesome/rc.lua`
quindi &eacute; stato modificato in modo da selezionare il tema da `~/.config/awesome/themes/default`.

### Impostazione del tema
I temi sono stati copiati da `usr/share/awesome/themes/default` a `~/.config/awesome/themes/default`.
Ho quindi modificati tutti i path in modo da puntare ai posti giusti.
Il file `~/.config/awesome/themes/qamf/theme.lua` &eacute; stato modificato in modo da togliere la barra superiore,
il menu che comparre quando clicco col mouse e il binding della tastiera

Il tema presenta solo tre campi: se usare il wallpaper e le immagini per il monitor sx e dx

## PulseAudio
Dopo aver installato /etc/pulse/default.pa a ~/.config/pulse/default.pa. Modifico quindi il file che ho copiato in questo modo:

    load-module module-alsa-sink device=plughw:0,3 sink_name=5hdl
    load-module module-alsa-sink device=plughw:0,8 sink_name=5hdr

In fondo imposto come sink di default il canale sinistro

    set-default-sink 5hdl

## ALSAMIXER
Il file `/var/lib/alsa/asound.state` e' stato modificato per avere di default abilitate le uscite S/PDIF (digitali)
altrimenti non si sente niente sui monitor, perche' di default aprte analogico.
Per farlo, si usa **alsamixer**, si settano i valori corretti, e poi si fa 
sudo alsactl store che serve per salvare il default.

Ma: se si cambia il valore con alsamixer e si reboota, all avvio alsa se ne frega del valore che avevi salvato nel file,
perche' sovrascive [vedi qui](https://wiki.archlinux.org/index.php/Advanced_Linux_Sound_Architecture/Troubleshooting#Removing_old_ALSA_state_file_.28asound.state.29)
quindi basta mettere il default corretto, il file corretto e non modificare nulla: in alternativa va disabiltiato
il demone che salva al reboot.

## Impostazioni mouse
Pare andare la semplice modifica per cui viene lnaciato X con --nocursor

## Misc
### 4HD_VERSION
Ho pensato di muoverlo in `/opt/qubicaamf/HD_VERSION`
in questo modo si ha un posto piu' intuititivo e poi il nome non dipende piu' dalla versione dell'hw.

# Prove systemd 
Facciamo qualche prova per vedere se usare systemd per lanciare tutto ha un senso.

**Abbiamo caputo che non e' la strada giusta - in quanto i servizi non sono stati pensati per lavorare con la GUI**

Ci sono vari metodi per fare in modo di lanciare `Xorg` come un servizio ma nessuna procedura "standard". 
**Le sezioni seguenti devono essere ignorate**.

## Nomenclatura

+ **unit**: una unit e' una singola attivita' o componente. Ogni unita' e' composta da un singolo file 
di testo che la descrive, esprime di cosa ha bisogno prima e dopo e altri dettagli
+ **service**: questo tipo di unit e' il piu' comune e consente a systemd di inizarlo e di monitorarlo.
+ **target**: sono usati per unire e collegare altri unit assiemte in modo da descrivere un determinato stato per il 
sistema.

I servizi possono essere sia demoni che script one shot e tanto altro ....; nel nostro caso la `start_whole_system` la trasformiano
in un target. ad esempio il target score

si pensera' di realizzare un target mms che corrisponde ad una start diversa cosi' via.

## Struttura
Il target di default e' `graphical.target`, la nostyra idea e' rendere lo score un target,
per cui raccoglie tutti i servizi necessari per partire e fermarsi

Questo permette di avere target diversi e poter cosi' testare in modo isolato contesti diversi di funzionamento (mms, score, effect server ..)

Lo `score.target` richiede come Dipendenza (requires) `graphica.target` e parte solo dopo che i servizi di quel target sono attivi

Il tutto si crea cosi':

+ si fa un file `.service` da qualche parte, anche in cartella locale (`/opt/qubicaamf/services/`)
+ `sudo systemctl link nome.service`

questo crea un link in `/etc/systemd/system` al servizio

in `/lib/systemd/system` ci deve essere un target; li' dentro ci si mette il `.service`
poi facendo systemctl enable `nome.service` dovrebbe create la cartella in `/etc/systemd/system` contenebet i servizi da lanciare 

## Servizi che esistono nella 5HD
Lo script di `start_whole_system.sh` si occupa sia di inizalizzare delle variabili che di *lanciare* dei demoni.

Le variabili che vengono lanciate sono

+ **script** inizlizza un po' di variabili di ambiente
+ **script**: pulizia del disco
+ **script**: controllo dell'indirizzo ip della macchina (`get_last_valid_ip.sh` e `get_last_valid_ip.sh`) 
  + **script**: in caso di errore chimata *REST* ad `mms-viewer` e `stop` di tutto.
+ **daemon**: net-reset: sembra che chiami nRbeoot quando riceve un determinato pacchetto dalla rete
+ **daemon**: *autoreset: esegue l'autoreset se l'indirizzo ip non e' valido????*
+ **script**: inizializzo variabili in base all'indirizzo IP che ho acquisito (`initialize_variables_from_ip.sh`)
+ **script**: *chiamata *REST* ad `mms-viewer` in base alla modalita' score o standalone*
+ **script**: ottieni l'indirizzo server del `mxqserver` (`get_mxserver_ip.sh`.
+ **script**: ottieni l'indirizzo ip del conqueror (`get_mxserver_ip.sh`)
+ **script**: *esegue `lantime` per impostare l'orario.* (`get_mxserver_ip.sh`)
+ **script**: scrive in un file tutte le info sulla 4HD
+ **script**: **resetta il **mutex** di sistema??? ** (`reset_mutex.sh`)
+ **script**: **configura il core dump???*** (`configure_core_dump.sh`)
+ **script**: *controlla se bisogna fare un reinit manuale* (`reinit_manually.sh`)
  + se si chiamo `stop`
+ **script**: controlla se bisogna scaricare dei programmi
  + se si chiamo (`upload_programs.sh`)
    + **chiamo** `update_system.sh` **CASINO!!!**
 + se no chiamo (`verify_deb_list.sh`) 
+ **script**: controllo per eventuale aggiornamento manuale (`upload_programs_manually.sh`)
+ **script**: inizializza l'HUB (`init_hub.sh`)
+ **script**: imposta questo indirizzo come valido: (`set_last_valid_ip.sh`)
+ **daemon**: **eseguo un demone che ping l'hub (tipo whatchdog) ATTENZIONE NON E' UN VERO DEMONE!!!** (`/home/ale/hub_watchdog.sh`)
+ **script**: inizializzazione *ISP*. (`init_isp.sh`)
+ **script**: Ottieni l'edid (`get_edid.sh`)
+ **Servizi**
  + non-score
    + **mms-server**
    + **node_apps**
    + **uftp**
  + score
    + **bowlingplus**
    + **games**
    + **intercom4hd**
    + **mpp**
    + **mms-server**
    + **node_apps**
    + **uftp**
+ **script**: lancio lo score   


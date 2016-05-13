# Immagine base 5hd

## Partenza da ubuntu server 16.04

Ci troviamo meglio a partire da una versione server, perch&eacute; pare pi&uacute; semplice
installare pacchetti per arrivare ad avere della grafica pittosto che partire da desktop e togliere dei pacchetti.

Partendo dalla versione Desktop e togliendo i pacchetti purtroppo non siamo mai riuscito ad avere un sistema che fosse capace di bootare.

# Cose fatte

## Problema di LC_ALL e simili
Qaundo ci colleghiamo ad un pc in generale tramite SSH non tutte le variabili di ambiente vengono
inizilaizzate correttamente.

In particolare perl si lamenta della mancata definizione di LC_ALL. La soluzione in questo [link](http://ubuntuforums.org/showthread.php?t=2268614)

## awesome
awesome viene avviato da lightdm, che a sua volta e' lanciato all'avvio con auto login ale
quindi awesome lanciato da user ale cerca in   ~/.config/awesome/rc.lua il file di configurazione; in assenza cade nel default.

### Configurazione
Copio da /etc/xdg/awesome/rc.lua a ~/.config/awesome/rc.lua. Il file ~/.config/awesome/rc.lua quindi &eacute; stato modificato
in modo da selezionare il tema da ~/.config/awesome/themes/default.

### Impostazione del tema
I temi sono stati copiati da /usr/share/awesome/themes/default a ~/.config/awesome/themes/default

Ho quindi modificati tutti i path in modo da puntare ai posti giusti.

Il file ~/.config/awesome/themes/qamf/theme.lua &eacute; stato modificato in modo da togliere la barra superiore, il menu che comparre quando clicco col mouse e il binding della tastiera


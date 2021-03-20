#!/bin/sh                                                                                                                                                                                                                                            

filebot --license /home/media/filebot/*.psm                                                                                   
/usr/bin/transmission-daemon --config-dir /var/lib/transmission-daemon/info -f

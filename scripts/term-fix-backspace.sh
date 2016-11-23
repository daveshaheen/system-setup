#!/bin/bash

mkdir -p $HOME/.config/term

infocmp $TERM | sed 's/kbs=^[hH]/kbs=\\177/' > $HOME/.config/term/$TERM.ti
tic $TERM.ti

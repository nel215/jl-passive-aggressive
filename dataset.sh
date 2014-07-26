#!/bin/sh

if ! [ -e ./winequality-red.csv ] ; then
    wget https://archive.ics.uci.edu/ml/machine-learning-databases/wine-quality/winequality-red.csv
fi

if ! [ -e ./rcv1_train.binary.bz2 ] ; then
    wget www.csie.ntu.edu.tw/~cjlin/libsvmtools/datasets/binary/rcv1_train.binary.bz2
fi

if ! [ -e ./rcv1_train.binary ] ; then
    bzip2 -d ./rcv1_train.binary.bz2
fi

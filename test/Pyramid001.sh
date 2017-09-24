#!/usr/bin/env bash
#layer+layer-1
makePyramid()
{
    hight=$1
    for((i=1;i<=hight;i++))
    do
        #l=`expr $i + $i - 1`
        layer=$((( 2 * i ) - 1))
        #space=`expr $hight - $i`
        space=$((hight - i))

        for((k=1;k<=space;k++))
        do
            echo -ne " ";
        done
        for((j=1;j<=layer;j++))
        do
            echo -ne "*";
        done
        echo;
    done
}

makePyramid 5
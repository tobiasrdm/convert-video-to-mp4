#!/bin/bash

echo "Diretório $1"

cd $1

# *.MOV
for i in *.MOV ; do
  [[ -f "$i" ]] || continue
  output="${i%.MOV}.mp4"
  echo "Convertendo $i para $output"
  ffmpeg -i "$i" -vcodec h264 -acodec mp2 "$output"
done

# *.mov
for i in *.mov ; do
  [[ -f "$i" ]] || continue
  output="${i%.mov}.mp4"
  echo "Convertendo $i para $output"
  ffmpeg -i "$i" -vcodec h264 -acodec mp2 "$output"
done

# *.mkv
for i in *.mkv; do
  [[ -f "$i" ]] || continue
  output="${i%.mkv}.mp4"
  echo "Convertendo $i para $output"
  ffmpeg -i "$i" -vcodec h264 -acodec mp2 "$output"
done

# *.webm
for i in *.webm; do
  [[ -f "$i" ]] || continue
  output="${i%.webm}.mp4"
  echo "Convertendo $i para $output"
  ffmpeg -i "$i" -vcodec h264 -acodec mp2 "$output"
done


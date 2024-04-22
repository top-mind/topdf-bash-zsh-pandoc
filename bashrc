2pdf () {
  local output
  if [ $# -eq 1 ]; then
    output=${1%.*}.pdf
  elif [ $# -eq 2 ]; then
    output=$2
  else
    echo "Usage: 2pdf <input> [output.pdf]"
    return 1
  fi
  pandoc $1 -o $output --pdf-engine=xelatex -V CJKmainfont=FandolSong -V geometry:margin=1in
}


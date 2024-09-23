#!/bin/bash

REPO="BoxPistols/rails7-dev"

for row in $(jq -r '.[] | @base64' labels.json); do
  _jq() {
    echo ${row} | base64 --decode | jq -r ${1}
  }

  name=$(_jq '.name')
  color=$(_jq '.color')
  description=$(_jq '.description')

  gh label create ${name} -c "${color}" -d "${description}" -R ${REPO}
done
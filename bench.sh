#!/bin/bash

while IFS= read -r -d $'\0' framework_file; do
  framework=$(basename "$framework_file" .dart)
  frameworks+=("$framework")
done < <(find ./frameworks -maxdepth 1 -type f -name "*.dart" -print0)

if [ ${#frameworks[@]} -eq 0 ]; then
  echo "Error: No Dart files found in ./frameworks directory."
  exit 1
fi

skipFramework=("reactter" "mobx" "riverpod");

for framework in "${frameworks[@]}"
do
    if [[ " ${skipFramework[*]} " =~ " $framework " ]]; then
      echo "Skipping $framework as it's in the skip list"
      continue
    fi

  echo "==================== $framework ===================="
  echo "$(date)"

  # compile to native
  echo "Compiling $framework to native..."
  dart compile exe "frameworks/$framework.dart" -o "frameworks/$framework" || exit 1

  echo "Running benchmark for $framework..."
  { ./frameworks/$framework | tee  bench/$framework.md; } 2>&1;
  rm "frameworks/$framework"
  if [ $? -ne 0 ]; then
    echo "Error running benchmark for $framework"
    exit 1
  fi
done

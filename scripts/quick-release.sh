#!/usr/bin/env bash

echo "THIS ASSUMES YOU HAVE ALREADY EDITED THE VERSION IN Chart.yaml!!"
echo "If the version is not ready in the Chart.yaml, then ctrl+c out of this script"
read -n 1 -p "Hit enter/return to proceed with build and release of helm chart:"

helm dependency update
helm package .
mv kubecost-cloud-agent-*.tgz tarballs/.
helm repo index .
git add -u
git add tarballs/.
echo

git status
echo "Files have been staged for committing, be sure you are on a branch and then run:"
echo "git commit -s -m 'Updating helm chart'"
echo "git push origin [BRANCHNAME]"
echo
echo "Then open a PR to complete the process of releasing a helm chart"

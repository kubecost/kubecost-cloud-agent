# Kubecost Cloud agent helm chart

This repo provides the helm chart for installing the Kubecost Cloud agent into a kube cluster.
It borrows heavily from the [cost-analyzer helm chart](https://github.com/kubecost/cost-analyzer-helm-chart)
as many of the base components are similar to installing the Kubecost Self-Hosted solution.

To install using this helm chart, please use the helm install command that can be found in
the Kubecost Cloud UI.

## How to make a new release of this helm chart

Edit the `Chart.yaml` with a new version and then run:

```
% ./scripts/quick-release.sh
THIS ASSUMES YOU HAVE ALREADY EDITED THE VERSION IN Chart.yaml!!
If the version is not ready in the Chart.yaml, then ctrl+c out of this script
Hit enter/return to proceed with build and release of helm chart:
Hang tight while we grab the latest from your chart repositories...
...Successfully got an update from the "kubecost" chart repository
...Successfully got an update from the "sysdig" chart repository
Update Complete. ⎈Happy Helming!⎈
Saving 1 charts
Deleting outdated charts
Successfully packaged chart and saved it to: /Users/ausmith/dev/kubecost-cloud-agent/kubecost-cloud-agent-0.1.1.tgz

On branch agoldsmith.more-values-surgery
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
	modified:   Chart.yaml
	modified:   README.md
	modified:   charts/prometheus-11.0.2.tgz
	modified:   index.yaml
	new file:   scripts/quick-release.sh
	new file:   tarballs/kubecost-cloud-agent-0.1.1.tgz

Files have been staged for committing, be sure you are on a branch and then run:
git commit -s -m 'Updating helm chart'
git push origin [BRANCHNAME]

Then open a PR to complete the process of releasing a helm chart
```

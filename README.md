# Kubecost Cloud agent helm chart

This repo provides the helm chart for installing the Kubecost Cloud agent into a kube cluster.
It borrows heavily from the [cost-analyzer helm chart](https://github.com/kubecost/cost-analyzer-helm-chart)
as many of the base components are similar to installing the Kubecost Self-Hosted solution.

To install using this helm chart, please use the helm install command that can be found in
the Kubecost Cloud UI.

## Installation on OpenShift

OpenShift does not allow setting of certain securityContext fields. To deploy the agent on OpenShift, the the following values:

```yaml
global:
  platforms:
    openshift:
      enabled: false
```

If enabling Network Costs, you may be required to create a custom Security Context Constraint (SCC) as the Network Costs DaemonSet requires a set of privileges not contained in any default SCCs. For more details, see the Red Hat documentation [here](https://docs.openshift.com/container-platform/4.13/authentication/managing-security-context-constraints.html).

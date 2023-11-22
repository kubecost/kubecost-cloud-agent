# Kubecost Cloud Agent

This repo provides the Helm chart for installing the Kubecost Cloud agent into a Kubernetes cluster. It borrows heavily from the [cost-analyzer helm chart](https://github.com/kubecost/cost-analyzer-helm-chart) as many of the base components are similar to installing the Kubecost self-hosted solution.

To install the agent, first create a cluster in the Kubecost Cloud UI under Settings => Manage Clusters. The only values which must be provided are `cloudAgentKey` and `cloudAgentClusterId`. No values files are otherwise required.

These values can also be supplied in your own values file:

```yaml
cloudAgentKey: mykeyhere
cloudAgentClusterId: mycloudclustername
```

## Installation on OpenShift

OpenShift does not allow setting of certain securityContext fields. To deploy the agent on OpenShift, use the following values:

```yaml
global:
  platforms:
    openshift:
      enabled: true
```

If enabling Network Costs, you may be required to create a custom Security Context Constraint (SCC) as the Network Costs DaemonSet requires a set of privileges not contained in any default SCCs. For more details, see the Red Hat documentation [here](https://docs.openshift.com/container-platform/4.13/authentication/managing-security-context-constraints.html).

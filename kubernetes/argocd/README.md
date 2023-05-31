## ARGOCD

* https://argo-cd.readthedocs.io/en/stable/getting_started/


argocd-server-676c6b849b-rscpc


To log in to the ArgoCD UI, the default username is admin and the default password is the output of the above command. Save this password; you will need it for the next step of installing and configuring the ArgoCD command-line agent.

https://tanzu.vmware.com/developer/guides/argocd-gs/

Password:
```
kubectl get pods -n argocd -l app.kubernetes.io/name=argocd-server -o name | cut -d'/' -f 2
```
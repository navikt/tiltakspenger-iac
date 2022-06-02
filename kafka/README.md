# Opprettelse av topics

1. Lag en katalog med ønsket topicnavn under [kafka](kafka)
2. Legg til filene ```dev-vars.yaml, prod-vars.yaml og topic.yaml``` for henholdsvis template variabler til dev, prod og selve topic definisjonen.
3. Sjekk at GitHub action kjører OK.
4. Sjekk at topics-ressursen er opprettet og klar i dev/prod-gcp klustrene

```
kubectl get topic

NAME                 AGE   STATE             FULLY QUALIFIED NAME               CREDENTIALS EXPIRY TIME

```

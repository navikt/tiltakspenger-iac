# Opprettelse av topics

1. Lag en katalog med ønsket topic navn under [kafka-aiven](kafka-aiven)
2. Legg til filene ```dev-vars.yaml, prod-vars.yaml og topic.yaml``` for henholdsvis template variabler til dev, prod og selve topic definisjonen.
3. Sjekk GHA action kjører OK.
4. Sjekk at topics er ressursen er opprettet og klar i dev/prod-gcp klustrene

```
kubectl  get topic

NAME                 AGE   STATE             FULLY QUALIFIED NAME               CREDENTIALS EXPIRY TIME
arena.oppgave.v1     18m   RolloutComplete   teamdagpenger.arena.oppgave.v1
arena.vedtak.v1      9d    RolloutComplete   teamdagpenger.arena.vedtak.v1
inntektbrukt.v1      45d   RolloutComplete   teamdagpenger.inntektbrukt.v1      2021-05-14T02:29:18Z
journalforing.v1     51d   RolloutComplete   teamdagpenger.journalforing.v1
mottak.v1            39d   RolloutComplete   teamdagpenger.mottak.v1            2021-05-14T03:31:38Z
rapid.v1             56d   RolloutComplete   teamdagpenger.rapid.v1
regel.v1             49d   RolloutComplete   teamdagpenger.regel.v1             2021-05-17T03:03:23Z
soknadsdata.v1       51d   RolloutComplete   teamdagpenger.soknadsdata.v1       2021-05-16T05:57:28Z
subsumsjonbrukt.v1   46d   RolloutComplete   teamdagpenger.subsumsjonbrukt.v1   2021-05-13T04:25:50Z
```

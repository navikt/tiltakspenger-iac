# Terraform-oppsett for BigQuery

## Servicebruker

Oppsettet forutsetter at det finnes en servicebruker med tilgang til BigQuery. Dette kan opprettes i Google Cloud Console.

Brukeren som er opprettet heter "tpts-terraform" og har rollene "BigQuery Data Owner", "Editor", "Secret Manager Sercret Accessor"

Brukeren må finnes i både tpts-dev og tpts-prod.

## Secrets

Workflow for å kjøre opp terraform krever at det finnes en secret ved navn "GCP_SECRET_DEV" (og _PROD). Denne kan opprettes på servicebrukeren og legges inn i github som en repo secret.


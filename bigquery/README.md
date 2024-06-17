# Terraform-oppsett for BigQuery

## Servicebruker

Oppsettet forutsetter at det finnes en servicebruker med tilgang til BigQuery. Dette kan opprettes i Google Cloud Console.

Brukeren som er opprettet heter "tpts-terraform" og har rollene "BigQuery Data Owner", "Editor", "Secret Manager Sercret Accessor"

Brukeren må finnes i både tpts-dev og tpts-prod.

## Secrets

Workflow for å kjøre opp terraform krever at det finnes en secret ved navn "GCP_SECRET_DEV" (og _PROD). Denne kan opprettes på servicebrukeren og legges inn i github som en repo secret.

## Obs - ved første kjøring av terraform

Bucketen må finnes første gang workflowen kjører, med andre ord må den opprettes ved å kjøre terraform init, plan og apply lokalt først uten backend-blokken i main.tf. Deretter kan denne legges til, terraform init kjøres på nytt, og koden kan pushes til github slik at workflowen trigges.

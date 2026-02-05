##################################
## powershell script to push two tags, one tracks the current version this can build.buildid if built from a pipeline (keeping timestamp here at local) and another latest which tracks the latest image 
## To push the built images from my local to acr (testkevinacr) ##

### the script first needs az login to establish connection #####
### then az acr show to list available container registries
### az acr login --name testkevinacr .... connects to my registry
## now docker pushes will put the images to my azure contianer registries

###################################

param (
    [string]$AcrName = "testkevinacr",             
    [string]$ImageName = "randomappgen",  
    [string]$Repository = "random-sentence-app"
)

$LoginServer = az acr show `
    --name $AcrName `
    --query loginServer `
    --output tsv

if (-not $LoginServer) {
    Write-Error "Failed to get ACR login server"
    exit 1
}

# Login to ACR
Write-Host "Logging into ACR $LoginServer"
az acr login --name $AcrName

# Create timestamp tag
$Timestamp = Get-Date -Format "yyyyMMdd-HHmmss"

# Full image names
$ImageLatest   = "$LoginServer/$Repository"+":"+"latest"
$ImageVersion  = "$LoginServer/$Repository"+":"+"$Timestamp"

Write-Host "Tagging image..."
docker tag $ImageName $ImageLatest
docker tag $ImageName $ImageVersion

Write-Host "Pushing image with tag: latest"
docker push $ImageLatest

Write-Host "Pushing image with tag: $Timestamp"
docker push $ImageVersion

Write-Host "  - $ImageLatest"
Write-Host "  - $ImageVersion"

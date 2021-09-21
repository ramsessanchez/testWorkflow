$propertiesPath = Join-Path -Path $PSScriptRoot -ChildPath "../gradle.properties"
$file = get-item $propertiesPath
$findVersions = $file | Select-String -Pattern "mavenMajorVersion" -Context 0,2
$content = Get-Content $propertiesPath

$lineNumber = $findVersions.LineNumber - 1
$versionIndex = $content[$lineNumber].IndexOf("=")
$versionIndex += 2 # skipping =[space]
$majorVersion = $content[$lineNumber].Substring($versionIndex)
$lineNumber++
$minorVersion = $content[$lineNumber].Substring($versionIndex)
$lineNumber++
$patchVersion = $content[$lineNumber].Substring($versionIndex)
$version = "$majorVersion.$minorVersion.$patchVersion"

#Set Task output to create tag
Write-Output "::set-output name=tag::v${version}"







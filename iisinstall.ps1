Configuration iisinstall
{

#Param ( [string] $nodeName )

Import-DscResource -ModuleName PSDesiredStateConfiguration -ModuleVersion "1.1"

#Node $nodeName
Node localhost
{

    WindowsFeature WebServerRole
    {
      Name = "Web-Server"
      Ensure = "Present"
    }     
  }
}

# Compile the configuration file to a MOF format
#IISInstall
    
 # Run the configuration on localhost
 #Start-DscConfiguration -Path .\IISInstall -Wait -Force -Verbose
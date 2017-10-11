Configuration iisinstall
{
#  param ($MachineName)

  Node localhost
  {
    #Install the IIS Role
    WindowsFeature IIS
    {
      Ensure = “Present”
      Name = “Web-Server”
    }

    #Install ASP.NET 4.5
    WindowsFeature ASP
    {
      Ensure = “Present”
      Name = “Web-Asp-Net45”
    }

     WindowsFeature WebServerManagementConsole
    {
        Name = "Web-Mgmt-Console"
        Ensure = "Present"
    }
  }
} 

# Compile the configuration file to a MOF format
IISInstall
    
 # Run the configuration on localhost
 #Start-DscConfiguration -Path .\IISInstall -Wait -Force -Verbose
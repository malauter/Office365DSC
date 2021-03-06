<#
This example configures the Teams Guest Calling Configuration.
#>

Configuration Example
{
    param(
        [Parameter(Mandatory = $true)]
        [PSCredential]
        $credsGlobalAdmin
    )
    Import-DscResource -ModuleName Office365DSC

    node localhost
    {
        TeamsGuestCallingConfiguration GuestCallingConfig
        {
            Identity            = "Global";
            AllowPrivateCalling = $True;
            GlobalAdminAccount  = $credsGlobalAdmin;
        }
    }
}

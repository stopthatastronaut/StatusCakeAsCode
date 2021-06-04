configuration StopThatAstronautStatusCake
{
    Import-DscResource -ModuleName StatusCakeDSC -ModuleVersion 2.3.6

    StatusCakeTest "deploy.d.evops.co" {
        Ensure = "present"
        Name = "Octopus Deploy"
        URL = "https://deploy.d.evops.co/api"
        TestType = 'HTTP'
        FindString = 'Octopus Deploy'
    }
}


StopThatAstronautStatusCake -OutputPath $env:tmp\StopThatAstronautStatusCake

Start-DscConfiguration -Wait -Force -Path $env:tmp\StopThatAstronautStatusCake

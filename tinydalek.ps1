

configuration TinyDalekStatusCake
{
    Import-DscResource -ModuleName StatusCakeDSC -ModuleVersion 2.2

    StatusCakeTest "Accahs Creations Redirector" {
        Ensure = "present"
        Name = "Accahs Creations"
        URL = "https://accahscreations.com"
        TestType = 'HTTP'
    }
}


    StopThatAstronautStatusCake -OutputPath $env:tmp\StopThatAstronautStatusCake

    Start-DscConfiguration -Wait -Force -Path $env:tmp\StopThatAstronautStatusCake

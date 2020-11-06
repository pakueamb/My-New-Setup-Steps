# Arch Linux + Unity3D + Visual Studio code | Guide

I managed to make it work and do my Unity development on Linux, but right now, I can only build for Linux platforms.

1. Install UnityHub, Visual Studio Code, .Net, mono and other complementary packages  
`sudo pacman unityhub code dotnet-sdk mono mono-tools mono-msbuild mono-msbuild-sdkresolver mono-addins`

2. Force programs to use mono frameworks  
`sudo echo "FrameworkPathOverride=/lib/mono/4.7.1-api/" >> /etc/environment`  

Alternatively, you can also apply the override for individual projects:  
create a `Directory.Build.props` file in the root of your project (next to the .sln / .csproj files) and paste the following into it, changing the mono path as necessary:  

        <Project>
            <PropertyGroup>
                <FrameworkPathOverride>/lib/mono/4.7.1-api</FrameworkPathOverride>
            </PropertyGroup>
        </Project>


Edit: Additionally, if you want to version control this file, you can conditional expressions depending on the OS / hostname / etc for example:

`
<FrameworkPathOverride Condition=" '$([System.Runtime.InteropServices.RuntimeInformation]::IsOSPlatform($([System.Runtime.InteropServices.OSPlatform]::Linux)))' == 'true' ">/lib/mono/4.7.1-api</FrameworkPathOverride>
`  

Source / Reference: https://github.com/jbevain/mono.linq.expressions/blob/7973f862ddfea552457c7b2bc457fb87c481a791/Directory.Build.props  
**Thanks to reddit user u/xaviergmail**.

3. Open VScode and configure as needed.

4. Through Unityhub, open a project or create a new one and go to 'Edit>Preferences>External Tools' and point the editor to 'usr/bin/code'

5. Open the C# project and test if Intellisense works

6. If Omnisharp is still showing errors when opening vscode,
go back in 'External tools' and try regenerating the assembly files'.

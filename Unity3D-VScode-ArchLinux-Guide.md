I managed to make it work and do my Unity development on Linux, but right now, I can only build for Linux platforms.

1. Install UnityHub, Visual Studio Code, .Net, mono and other complementary packages  
`sudo pacman unityhub code dotnet-sdk mono mono-tools mono-msbuild mono-msbuild-sdkresolver mono-addins`

1. Force programs to use mono frameworks  
`sudo echo "FrameworkPathOverride=/lib/mono/4.7.1-api/" >> /etc/environment`

3. Open VScode and configure as needed.

4. Through Unityhub, open a project or create a new one and go to 'Edit>Preferences>External Tools' and point the editor to 'usr/bin/code'

5. Open the C# project and test if Intellisense works

6. If Omnisharp is still showing errors when opening vscode,
go back in 'External tools' and try regenerating the assembly files'.

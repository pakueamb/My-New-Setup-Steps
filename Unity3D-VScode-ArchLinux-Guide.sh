1.  Install Unity Hub through the official website

2.  Install Vscode with your package manager
  pacman -S code
  
3.  In Unityhub, connect to your account, activate your license,
configure your editor's path, and install the latest editor.

4.  Open a project or create a new one and go to 'Edit>Preferences>External Tools' and point the editor to 'usr/bin/code'

5.  Close Unity and open VScode.

6.  Install the extensions useful for C# and Unity (solution explorer, extentions, snippets, debugger, etc.)
    close when you're done.

7.  Install .Net with your package manager.
  pacman -S dotnet-host dotnet-runtime dotnet-sdk dotnet-targeting-pack
  
8.  Install mono
  pacman -S mono mono-tools mono-msbuild mono-msbuild-sdkresolver mono-addins
  
9.  Force programs to use mono frameworks
sudo echo "FrameworkPathOverride=/lib/mono/4.7.1-api/" >> /etc/environment

10. Test if Intellisense works
  - Open a Unity project through Unityhub
  - From there, open the C# project. It should launch vscode
  - you should not see any errors
  - All Unity keyworks should now be autocompleted and references of variables should be accurate 

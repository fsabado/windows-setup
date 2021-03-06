function executeScript {
    Param ([string]$script)
    write-host "executing $helperUri/$script ..."
    iex ((new-object net.webclient).DownloadString("$helperUri/$script"))
}

Install-WindowsUpdate
RefreshEnv

# If you run into a issues, run with
# --confirm (-f)
# --debug (-d)
# --force (-f)
choco install -y git --package-parameters="'/GitAndUnixToolsOnPath /WindowsTerminal'"
choco install -y vcredist2015
choco install -y googlechrome
choco install -y firefox
choco install -y vscode
choco install -y powershell-core
choco install -y python2
choco install -y python3
choco install -y 7zip.install
choco install -y sysinternals
choco install -y wsl
choco install -y notepadplusplus
choco install -y slack
choco install -y filezilla
choco install -y windowgrid
choco install -y meld


# Update pip
RefreshEnv
python -m pip install --upgrade pip
# Install ML related python packages through pip
# pip install numpy
# pip install scipy
# pip install pandas
# pip install matplotlib
# pip install tensorflow
# pip install keras

# Install Hyper-V
# choco install -y Microsoft-Hyper-V-All --source="'windowsFeatures'"

#--- reenabling critial items ---
Enable-UAC
Enable-MicrosoftUpdate
Install-WindowsUpdate -acceptEula

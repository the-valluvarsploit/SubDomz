#!/bin/bash
# Installation script
cat <<"EOF"
            _         _
  ___ _   _| |__   __| | ___  _ __ ___  ____
 / __| | | | '_ \ / _` |/ _ \| '_ ` _ \|_  /
 \__ \ |_| | |_) | (_| | (_) | | | | | |/ /
 |___/\__,_|_.__/ \__,_|\___/|_| |_| |_/___|
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@  The All in One Subdomain Enumeration Tool  @
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

***********************************************
*           Installation Started              *
***********************************************
EOF
sleep 0.5
echo " "
mkdir -p tools

Golang() {
	printf "                                \r"
	sys=$(uname -m)
	LATEST=$(curl -s 'https://go.dev/VERSION?m=text')
	[ $sys == "x86_64" ] && wget https://golang.org/dl/$LATEST.linux-amd64.tar.gz -O golang.tar.gz &>/dev/null || wget https://golang.org/dl/$LATEST.linux-386.tar.gz -O golang.tar.gz &>/dev/null
	sudo tar -C /usr/local -xzf golang.tar.gz
	echo "export GOROOT=/usr/local/go" >> $HOME/.bashrc
	echo "export GOPATH=$HOME/go" >> $HOME/.bashrc
	echo 'export PATH=$PATH:$GOROOT/bin:$GOPATH/bin' >> $HOME/.bashrc
  echo 'export PATH=$PATH:/usr/local/go/bin' >> $HOME/.profile

	printf "[+] Golang Installed !.\n"
}
sleep 0.5

echo "Installing Tools..."
Shodan() {
           printf "                               \r"
           sudo apt install python3-shodan -y &>/dev/null
           printf "[+] Shodan Installed! \n"
}
Censys() {
          printf "                        \r"
          sudo apt install python3-censys -y &>/dev/null
          printf "[+] Censys Installed! \n"
}
Nmap() {
          printf "                        \r"
          sudo apt install nmap -y &>/dev/null
          printf "[+] Nmap Installed! \n"
}
JQ() {
          printf "                \r"
          sudo apt install jq -y &>/dev/null
          printf "[+] JQ Installed! \n"
}
Git() {
          printf "              \r"
          sudo apt install git -y &>/dev/null
          printf "[+] Git Installed! \n"
}
Python() {
          printf "              \r"
          sudo apt install python3 -y &>/dev/null
          sudo apt install python -y &>/dev/null
          sudo apt-get -y install python3-pip &>/dev/null
          printf "[+] Python Installed! \n"
}
Parallel() {
          printf "                    \r"
          sudo apt install -y parallel &>/dev/null
          printf "[+] Parallel Installed! \n"
}

Subfinder() {
            printf "                                \r"
            GO111MODULE=on go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest &>/dev/null
            printf "[+] Subfinder Installed! \n"
}

Assetfinder() {
            printf "                                \r"
            go install -v github.com/tomnomnom/assetfinder@latest &>/dev/null
            printf "[+] Assetfinder Installed! \n"
}

Findomain() {
            wget https://github.com/Edu4rdSHL/findomain/releases/latest/download/findomain-linux &>/dev/null
            chmod +x findomain-linux
            ./findomain-linux -h &>/dev/null &&
            sudo mv findomain-linux /usr/local/bin/findomain;
            printf "[+] Findomain Installed! \n"
}

Amass() {
            printf "                                \r"
	    GO111MODULE=on go install -v github.com/OWASP/Amass/v3/...@latest &>/dev/null
	    printf "[+] Amass Installed! \n"
}

Gau() {
            printf "                                \r"
	    go install github.com/lc/gau/v2/cmd/gau@latest &>/dev/null
            printf "[+] Gau Installed! \n"
}

Waybackurls() {
            printf "                \r"
            go install github.com/tomnomnom/waybackurls@latest &>/dev/null
            printf "[+] Waybackurls Installed! \n"
}

Github-Subdomains() {
            printf "            \r"
            go install -v github.com/gwen001/github-subdomains@latest &>/dev/null
            printf "[+] Github-Subdomains Installed! \n"
}

Crobat() {
            printf "                  \r"
            go install github.com/cgboal/sonarsearch/cmd/crobat@latest &>/dev/null
            printf "[+] Crobat Installed! \n"
}

CTFR() {
            printf "                  \r"
	    cd ~/SubDomz/tools
            git clone https://github.com/UnaPibaGeek/ctfr.git &>/dev/null
            cd ctfr
            pip3 install -r requirements.txt &>/dev/null
            sudo cp ctfr.py /usr/local/bin
            sudo chmod +x /usr/local/bin/ctfr.py
            printf "[+] CTFR Installed! \n"
}

Cero() {
            printf "                              \r"
            go install -v github.com/glebarez/cero@latest &>/dev/null
            printf "[+] Cero Installed! \n"
}

Sublister() {
            printf "                    \r"
	    cd ~/SubDomz/tools
            git clone https://github.com/aboul3la/Sublist3r.git &>/dev/null
            cd Sublist3r
            pip3 install -r requirements.txt &>/dev/null
            sudo ln -svf sublist3r.py /usr/bin/sublist3r.py &>/dev/null
            sudo chmod +x /usr/bin/sublist3r.py &>/dev/null
            sudo cp sublist3r.py /usr/local/bin
            sudo chmod +x /usr/local/bin/sublist3r.py
            printf "[+] Sublister Installed! \n"
}

Sudomy() {
            printf "                          \r"
	    cd ~/SubDomz/tools
            git clone --recursive https://github.com/screetsec/Sudomy.git &>/dev/null
            cd Sudomy && python3 -m pip install -r requirements.txt &>/dev/null
            sudo cp sudomy /usr/local/bin
            printf "[+] Sudomy Installed! \n"
}

Shodomain() {
            printf "                                    \r"
	    cd ~/SubDomz/tools
            git clone https://github.com/SmoZy92/Shodomain &>/dev/null
            cd Shodomain && pip install -r requirements.txt &>/dev/null
            sudo cp shodomain.py /usr/local/bin
            sudo chmod +x /usr/local/bin/shodomain.py
            printf "[+] Shodomain! \n"
}

Censys-Subdomain-Finder() {
            printf "                  \r"
	    cd ~/SubDomz/tools
            git clone https://github.com/christophetd/censys-subdomain-finder.git &>/dev/null
            cd censys-subdomain-finder
            python3 -m venv venv
            source venv/bin/activate
            pip3 install -r requirements.txt &>/dev/null
            sudo ln -svf censys-subdomain-finder.py /usr/bin/censys-subdomain-finder.py &>/dev/null
            sudo chmod +x /usr/bin/censy-subdomain-finder.py &>/dev/null
            printf "[+] Censys-Subdomain-Finder Installed! \n"
}

Httpx() {
	         printf "                                \r"
	         go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest &>/dev/null
	         printf "[+] Httpx Installed! \n"
}


hash go 2>/dev/null && printf "[!] Golang is already installed.\n" || { printf "[+] Installing Golang!" && Golang; }

export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
export PATH=$PATH:/usr/local/go/bin
sudo cp ~/go/bin/* /usr/local/bin

hash shodan 2>/dev/null && printf "[!] Shodan is already installed.\n" || { printf "[+] Installing Shodan!" && Shodan; }
hash censys 2>/dev/null && printf "[!] Censys is already installed.\n" || { printf "[+] Installing Censys!" && Censys; }
hash nmap 2>/dev/null && printf "[!] NMap is already installed.\n" || { printf "[+] Installing NMap!" && Nmap; }
hash jq 2>/dev/null && printf "[!] JQ is already installed.\n" || { printf "[+] Installing JQ!" && JQ; }
hash git 2>/dev/null && printf "[!] Git is already installed.\n" || { printf "[+] Installing Git!" && Git; }
hash python3 2>/dev/null && printf "[!] Python is already installed.\n" || { printf "[+] Installing Python!" && Python; }
hash parallel 2>/dev/null && printf "[!] Parallel is already installed.\n" || { printf "[+] Installing Parallel!" && Parallel; }

hash findomain 2>/dev/null && printf "[!] Findomain is already installed.\n" || { printf "[+] Installing Findomain!" && Findomain; }
hash subfinder 2>/dev/null && printf "[!] Subfinder is already installed.\n" || { printf "[+] Installing subfinder!" && Subfinder; }
hash amass 2>/dev/null && printf "[!] Amass is already installed.\n" || { printf "[+] Installing Amass!" && Amass; }
hash assetfinder 2>/dev/null && printf "[!] Assetfinder is already installed.\n" || { printf "[+] Installing Assetfinder!" && Assetfinder; }
hash gau 2>/dev/null && printf "[!] Gauplus is already installed.\n" || { printf "[+] Installing Gauplus!" && Gau; }
hash waybackurls 2>/dev/null && printf "[!] Waybackurls is already installed.\n" || { printf "[+] Installing Waybackurls!" && Waybackurls; }
hash github-subdomains 2>/dev/null && printf "[!] Github-Subdomains is already installed.\n" || { printf "[+] Installing Github-subdomains!" && Github-Subdomains; }
hash crobat 2>/dev/null && printf "[!] Crobat is already installed.\n" || { printf "[+] Installing Crobat!" && Crobat; }
hash ctfr.py 2>/dev/null && printf "[!] CTFR is already installed.\n" || { printf "[+] Installing CTFR!" && CTFR; }
hash cero 2>/dev/null && printf "[!] Cero is already installed.\n" || { printf "[+] Installing Cero!" && Cero; }
hash sublist3r 2>/dev/null && printf "[!] Sublister is already installed.\n" || { printf "[+] Installing Sublister!" && Sublister; }
hash sudomy 2>/dev/null && printf "[!] Sudomy is already installed.\n" || { printf "[+] Installing Sudomy!" && Sudomy; }
hash shodomain.py 2>/dev/null && printf "[!] Shodomain is already installed.\n" || { printf "[+] Installing Shodomain!" && Shodomain; }
hash censys-subdomain-finder.py 2>/dev/null && printf "[!] Censys-Subdomain-Finder is already installed.\n" || { printf "[+] Installing Censys-Subdomain-Finder!" && Censys-Subdomain-Finder; }
hash httpx 2>/dev/null && printf "[!] Httpx is already installed.\n" || { printf "[+] Installing Httpx!" && Httpx; }



list=(
  	Shodan
  	Censys
  	Nmap
  	JQ
  	Git
  	Python
  	Parallel
	Golang
	Subfinder
	Assetfinder
	Findomain
	Amass
  	Gau
  	Waybackurls
  	Github-Subdomains
  	Crobat
  	CTFR
  	Cero
  	Sublister
  	Sudomy
  	Shodomain
  	Censys-Subdomain-Finder
  	Httpx
	)

      r="\e[31m"
      g="\e[32m"
      e="\e[0m"

for prg in ${list[@]}
do
      hash $prg 2>/dev/null && printf "[$prg]$g Done$e\n" || printf "[$prg]$r Not Installed! Check Again.$e\n"
    done

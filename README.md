# LearningCyberSecurity
A collection of resources, tools, notes, and projects documenting my journey into cybersecurity

### Websites for Cybersecurity Practice:

1. **OverTheWire - Bandit:** [Link](https://overthewire.org/wargames/bandit/) - Linux command basics and privilege escalation challenges.
2. **TryHackMe:** [Link](https://tryhackme.com/) - Interactive cybersecurity challenges covering various topics.
3. **PicoCTF:** [Link](https://picoctf.com/) - Beginner-friendly capture-the-flag (CTF) competition with diverse challenges.
4. **Hack The Box:** [Link](https://www.hackthebox.eu/) - Real-world scenario-based labs for penetration testing practice.
5. **CyberPatriot:** [Link](https://www.uscyberpatriot.org/) - Youth cyber education program fostering skills in cybersecurity and STEM.
6. **RootMe:** [Link](https://www.root-me.org/) - Challenges and virtual environments to practice hacking skills across different domains.

### Change DNS to Google (Linux)
```bash
sudo bash -c '
wget https://github.com/DeogenesMaranan/LearningCyberSecurity/raw/main/change_dns.sh -O /usr/local/bin/change_dns.sh &&
chmod +x /usr/local/bin/change_dns.sh &&
CONNECTION_NAME=$(nmcli -t -f NAME connection show --active) &&
/usr/local/bin/change_dns.sh "$CONNECTION_NAME"
'
```

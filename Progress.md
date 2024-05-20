### Websites for Cybersecurity Practice:

1. **OverTheWire - Bandit:** [Link](https://overthewire.org/wargames/bandit/) - Linux command basics and privilege escalation challenges.
2. **TryHackMe:** [Link](https://tryhackme.com/) - Interactive cybersecurity challenges covering various topics.
3. **PicoCTF:** [Link](https://picoctf.com/) - Beginner-friendly capture-the-flag (CTF) competition with diverse challenges.
4. **Hack The Box:** [Link](https://www.hackthebox.eu/) - Real-world scenario-based labs for penetration testing practice.
5. **CyberPatriot:** [Link](https://www.uscyberpatriot.org/) - Youth cyber education program fostering skills in cybersecurity and STEM.
6. **RootMe:** [Link](https://www.root-me.org/) - Challenges and virtual environments to practice hacking skills across different domains.


### Compression:
- **binwalk**
- **binwalk -e** (Extract)

### Media:
- **SVG Viewer:** geeqie

### FTP:
- **Wireshark:** For analyzing pcapng files.

### Decoder:
- **Multi-Decoder Tool:** [CacheSleuth](https://www.cachesleuth.com/multidecoder/)

### Steganography:
- **steghide:** Extract hidden data using steghide: `steghide extract -sf [filename] -p "[password]"`

### Verification:
- **sha256sum:** Checksum generation and verification.
- **Directory Check:** `sha256sum [dir] | grep "[target]"` (Check a directory's checksum and filter results)

### Kali Tools:
- **Forensics Tools:**
  - **stat:** Get file or filesystem status.
  - **file:** Determine file type.
  - **exiftool:** Read and write meta information in files.
  - **grep:** Search text for patterns.
  - **find:** Search for files in a directory hierarchy.
- **Find Filters:**
  - **!** (not)
  - **-executable**
  - **-size** (c=byte, k=kilobyte, M=megabyte)

### Privilege Escalation:
- **sudo -l:** List all commands the current user can execute.
- **Shell Escape using tar:** `sudo tar -cf /dev/null /dev/null --checkpoint=1 --checkpoint-action=exec=/bin/sh`

### Bruteforce:
- **Hydra:** A powerful online password-cracking tool.
  - `hydra -l [username] -P [bruteforce.txt] [targetIp] -t 4 ssh` (Example usage for SSH)
- **Gobuster:** Web directory and file brute-forcing tool for web application enumeration.

### To Learn:
- **TFTP:** Trivial File Transfer Protocol
- **Wireshark:** Network protocol analyzer

### Ongoing Task:
- **Bandit6 Password:** P4L4vucdmLnm8I7Vl7jG1ApGSfjYKqJU

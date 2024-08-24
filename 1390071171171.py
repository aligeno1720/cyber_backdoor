import os
import sys
import time
from time import sleep

# Define the text content
text = "---------Welcome to Cloud Cyber Security GlobalServer Software ©2024-All Rights Reserved.-----------"

# Define the background color code (ANSI escape code) background_color_code = "\033[48;5;226m"
#background_color_code = "\033[47;5;226m" backgroundnya putih
#background_color_code = "\033[46;5;226m" backgroundnya hijau
#background_color_code = "\033[30;5;226m" backgroundnya kosong tapi tulisannya putih
background_color_code = "\033[48;5;226m"

# Define the reset code (to reset the formatting)
reset_code = "\033[0m"

# Create the block-colored text
block_colored_text = f"{background_color_code}{text}{reset_code}"
print("="*100)

# Print the block-colored text
print(block_colored_text)
print("="*100)


username = input("Enter Username : ")
if username == "********************" :
    time.sleep(2)

time.sleep(2)
username = input("Enter Password : ")

time.sleep(1)

def dot_loading(duration, interval=0.5, max_dots=10):
    end_time = time.time() + duration
    while time.time() < end_time:
        for i in range(max_dots + 1):
            sys.stdout.write('\rLoading' + '.' * i + ' ' * (max_dots - i))
            sys.stdout.flush()
            time.sleep(interval)
    sys.stdout.write('\rLoading' + '.' * max_dots + '\n')  # Ensure the last line is complete
    sys.stdout.flush()

if __name__ == "__main__":
    duration = 5  # Duration in seconds
    dot_loading(duration)
    print("ACCESS GRANTED!")    
    time.sleep(5)
    # Define the text content
    text = "-------------------------------------------WELCOME ADMIN--------------------------------------------"
   
# Define the background color code (ANSI escape code)
    background_color_code = "\033[48;5;226m"

# Define the reset code (to reset the formatting)
    reset_code = "\033[0m"

# Create the block-colored text
    block_colored_text = f"{background_color_code}{text}{reset_code}"
    print("="*100)

# Print the block-colored text
    print(block_colored_text)
    print("="*100)

from datetime import datetime

# Get the current date and time
now = datetime.now()

# Format the date and time
current_date_time = now.strftime("%Y-%m-%d %H:%M:%S")

# Print the current date and time with seconds
print("https://www.bankmandiri.co.id/ssocorporation >>>>swift>>capsule>><<<clients>>>>>>database<<<<<<<",current_date_time )
time.sleep(5)
print("https://www.bankmandiri.co.id/contentAsset/raw-data/8976976865/cipher9870987{M}089752-897y876-oiubjk(lkjgh86ro7uyhlui65)")
time.sleep(5)

def color_text(text, color_code):
    return f"\033[{color_code}m{text}\033[0m"

def print_progress_bar(iteration, total, prefix='', suffix='', decimals=1, length=50, fill='█'):
    percent = ("{0:." + str(decimals) + "f}").format(100 * (iteration / float(total)))
    filled_length = int(length * iteration // total)
   
    # Create a color sequence
    color_seq = [
        '\033[91m',  # Red
        '\033[93m',  # Yellow
        '\033[92m',  # Green
        '\033[94m',  # Blue
        '\033[95m',  # Magenta
        '\033[96m'   # Cyan
    ]
   
    bar = ''
    for i in range(length):
        if i < filled_length:
            bar += color_seq[i % len(color_seq)] + fill + '\033[0m'
        else:
            bar += ' '

    # Print the progress bar
    sys.stdout.write(f'\r{prefix} |{bar}| {percent}% {suffix}')
    sys.stdout.flush()

# Example usage
if __name__ == "__main__":
    total = 100
    for i in range(total + 1):
        print_progress_bar(i, total, prefix='Progress:', suffix='Complete', length=88)
        time.sleep(0.05)
    print()  # Move to the next line after the progress bar completes


# Get the current date and time
now = datetime.now()

# Format the date and time
current_date_time = now.strftime("%Y-%m-%d %H:%M:%S")

# Print the current date and time with seconds
print("CONNECTED!",current_date_time )
time.sleep(5)

print("")
# Define color codes (ANSI escape codes)

RED = "31"
GREEN = "32"
BLUE = "34"
WHITE = "37"

# Example usage
sentence = f">>>> {color_text('successfully built 889fa2f999333', RED)}"
print(sentence)
time.sleep(5)


from datetime import datetime

# Get the current date and time
now = datetime.now()

# Format the date and time
current_date_time = now.strftime("%Y-%m-%d %H:%M:%S")



def color_text(text, color_code):
    return f"\033[{color_code}m{text}\033[0m"
print("")
time.sleep(3)
# Define color codes (ANSI escape codes)

RED = "31"
GREEN = "32"
BLUE = "34"

sentence = f"---------------------------------------{color_text('ACCOUNT VERIFIYING', WHITE)}------------------------------------------"

print(sentence)
time.sleep(2)
print("")

def login():
    dnsserverdomain = input("DNS SERVER DOMAIN : ")
    port = input("PORT              : ")         
    globalserverip = input("GLOBAL SERVER IP  : ")
if __name__ == "__main__":
    login()

time.sleep(3)
print("")

def progress_bar(iteration, total, prefix='', suffix='', length=30, fill='█'):
    percent = ("{0:.1f}").format(100 * (iteration / float(total)))
    filled_length = int(length * iteration // total)
    bar = fill * filled_length + '-' * (length - filled_length)
    sys.stdout.write(f'\r{prefix} |{bar}| {percent}% {suffix}')
    sys.stdout.flush()

# Example usage
total_iterations = 100
for i in range(total_iterations + 1):
    time.sleep(0.05)  # Simulate some work
    progress_bar(i, total_iterations, prefix='Progress ', suffix='', length=90)#setelah suffix bisa ditambahin kata2

time.sleep(5)
print("CONNECTED!")
time.sleep(2)

import datetime

# get the current date and time
now = datetime.datetime.now()

print(now)

time.sleep(5)

print("")

def login():
    CIF_Number= input("CIF_Num           : ")
    time.sleep(2)
    EnterAccountNumber= input("ACCOUNT NUMBER    : ")
    time.sleep(2)
    AccountName= input("ACCOUNT HOLDER    : ")
    time.sleep(2)

if __name__ == "__main__":
    login()
def dot_loading(duration, interval=0.5, max_dots=10):
    end_time = time.time() + duration
    while time.time() < end_time:
        for i in range(max_dots + 1):
            sys.stdout.write('\rLoading' + '.' * i + ' ' * (max_dots - i))
            sys.stdout.flush()
            time.sleep(interval)
    sys.stdout.write('\rLoading' + '.' * max_dots + '\n')  # Ensure the last line is complete
    sys.stdout.flush()

if __name__ == "__main__":
    duration = 5  # Duration in seconds
    dot_loading(duration)
    time.sleep(2)
    print("DATA FOUND!")    
    time.sleep(2)

def progress_bar(iteration, total, prefix='', suffix='', length=30, fill='█'):
    percent = ("{0:.1f}").format(100 * (iteration / float(total)))
    filled_length = int(length * iteration // total)
    bar = fill * filled_length + '-' * (length - filled_length)
    sys.stdout.write(f'\r{prefix} |{bar}| {percent}% {suffix}')
    sys.stdout.flush()

# Example usage
total_iterations = 100
for i in range(total_iterations + 1):
    time.sleep(0.05)  # Simulate some work
    progress_bar(i, total_iterations, prefix='Progress ', suffix='', length=90)#setelah suffix bisa ditambahin kata2

time.sleep(5)
print("CONNECTED!")
time.sleep(2)

import datetime

# get the current date and time
now = datetime.datetime.now()

print(now)

time.sleep(5)

#===================================================================== fill the databases here!


DELAY: float = .01  # Change this to speed up/slow down typewriting speed


def typewrite(*paragraph: str) -> None:
    """This function mimics a typewriting effect by printing strings letter by letter.
    Args:
        *paragraph -- variable length args of sentences to typewrite
    """
    for sentence in paragraph:
        for char in sentence:
            sys.stdout.write(char)
            sys.stdout.flush()
            sleep(DELAY)
        print()
        sleep(DELAY)
print("")
# Usage (you can put as many sentences as you want)
typewrite(
">>ACC_HOLDER_NUM        : 1390071171171",
">>Name                  : Sonogiri_Tampomas_PT",
">>Acc_Holder_Address    : Karajan_RT_001/002_Jatiwangi_Kabupaten_Karawang",
"                          Jawa_Barat_Indonesia",
">>CIF_Num               : 13443321613",
">>Acc_Branch            : KCP_CIJANTUNG_12910",
">>Acc_Status_UPD        : Full_Blockade_Access_Passive",
">>Layer_1_Acc_Num       : N/A",
">>Layer_8_Num           : N/A",
">>UBC                   : CUB08_customer",
">>NSE_Amount            : 0,00 IDR",
">>Available_Fund        : 0,00 IDR",
">>Blockade_Fund         : 7,984,999,677,995.35  IDR",
">>Amount_Converted      : 7,984,999,677,995.35  IDR",
">>Layer 1                       : 0,00 IDR",
">>Layer 2                       : 0,00 IDR",
">>Layer 3                       : 0,00 IDR",
">>Layer 4                       : 0,00 IDR",
">>Layer 5                       : 0,00 IDR",
">>Layer 6                       : 0,00 IDR",
">>Layer 7                       : 7,984,999,677,995.35  IDR",
">>Layer 8                       : 0,00 IDR",
">>BLockade_Fund         : 7,984,999,677,995.35  IDR",
">>Amount_Converted      : 7,984,999,677,995.35  IDR",
)

time.sleep(8)
print("")

def login():
    doyouwanttocontinue = input("PROCEED CONTINUE? YES/NO : ")
    time.sleep(2)
if __name__ == "__main__":
    login()
    
time.sleep(1)

print("disconnected")

time.sleep(12)

def print_colored(text, color, end='\n'):
    colors = {'red': '\x1b[31m', 'green': '\x1b[32m', 'white': '\x1b[33m', 'blue': '\x1b[34m',}
    reset = '\x1b[0m'
    sys.stdout.write(colors.get(color, '') + text + reset + end)

print_colored('Scanned at 2024-07-14 00:22:11 PDT for 28s', color='green')
time.sleep(0.1)
print_colored('9111/tcp  open  DragonIDSConsole     syn-ack', color='green')
time.sleep(0.1)       
print_colored('9200/tcp  open  wap-wsp              syn-ack', color='green')
time.sleep(0.1)
print_colored('9502/tcp  open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('9594/tcp  open  msgsys               syn-ack', color='green')
time.sleep(0.1)
print_colored('9595/tcp  open  pds                  syn-ack', color='green')
time.sleep(0.1)
print_colored('9618/tcp  open  condor               syn-ack', color='green')
time.sleep(0.1)
print_colored('9666/tcp  open  zoomcp               syn-ack', color='green')
time.sleep(0.1)
print_colored('9876/tcp  open  sd                   syn-ack', color='green')
time.sleep(0.1)
print_colored('9877/tcp  open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('9503/tcp  open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('9666/tcp  open  zoomcp               syn-ack', color='green')
time.sleep(0.1)
print_colored('9876/tcp  open  sd                   syn-ack', color='green')
time.sleep(0.1)
print_colored('9877/tcp  open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('9535/tcp  open  man                  syn-ack', color='green')
time.sleep(0.1)
print_colored('9666/tcp  open  zoomcp               syn-ack', color='green')
time.sleep(0.1)
print_colored('9876/tcp  open  sd                   syn-ack', color='green')
time.sleep(0.1)
print_colored('9877/tcp  open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('9575/tcp  open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('9593/tcp  open  cba8                 syn-ack', color='green')
time.sleep(0.1)
print_colored('9594/tcp  open  msgsys               syn-ack', color='green')
time.sleep(0.1)
print_colored('9595/tcp  open  pds                  syn-ack', color='green')
time.sleep(0.1)
print_colored('9618/tcp  open  condor               syn-ack', color='green')
time.sleep(0.1)
print_colored('9666/tcp  open  zoomcp               syn-ack', color='green')
time.sleep(0.1)
print_colored('9876/tcp  open  sd                   syn-ack', color='green')
time.sleep(0.1)
print_colored('9877/tcp  open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('9878/tcp  open  kca-service          syn-ack', color='green')
time.sleep(0.1)
print_colored('9898/tcp  open  monkeycom            syn-ack', color='green')
time.sleep(0.1)
print_colored('9900/tcp  open  iua                  syn-ack', color='green')
time.sleep(0.1)
print_colored('9917/tcp  open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('9929/tcp  open  nping-echo           syn-ack', color='green')
time.sleep(0.1)
print_colored('9943/tcp  open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('9944/tcp  open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('9968/tcp  open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('9998/tcp  open  distinct32           syn-ack', color='green')
time.sleep(0.1)
print_colored('9999/tcp  open  abyss                syn-ack', color='green')
time.sleep(0.1)
print_colored('10000/tcp open  snet-sensor-mgmt     syn-ack', color='green')
time.sleep(0.1)
print_colored('10001/tcp open  scp-config           syn-ack', color='green')
time.sleep(0.1)
print_colored('10002/tcp open  documentum           syn-ack', color='green')
time.sleep(0.1)
print_colored('10003/tcp open  documentum_s         syn-ack', color='green')
time.sleep(0.1)
print_colored('10004/tcp open  emcrmirccd           syn-ack', color='green')
time.sleep(0.1)
print_colored('10009/tcp open  swdtp-sv             syn-ack', color='green')
time.sleep(0.1)
print_colored('10010/tcp open  rxapi                syn-ack', color='green')
time.sleep(0.1)
print_colored('10012/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('10024/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('10025/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('10082/tcp open  amandaidx            syn-ack', color='green')
time.sleep(0.1)
print_colored('10180/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('10215/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('10243/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('10566/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('10616/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('10617/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('10621/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('10626/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('10628/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('10629/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('10778/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('11110/tcp open  sgi-soap             syn-ack', color='green')
time.sleep(0.1)
print_colored('11111/tcp open  vce                  syn-ack', color='green')
time.sleep(0.1)
print_colored('11967/tcp open  sysinfo-sp           syn-ack', color='green')
time.sleep(0.1)
print_colored('12000/tcp open  cce4x                syn-ack', color='green')
time.sleep(0.1)
print_colored('12174/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('12265/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('12345/tcp open  netbus               syn-ack', color='green')
time.sleep(0.1)
print_colored('13456/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('13722/tcp open  netbackup            syn-ack', color='green')
time.sleep(0.1)
print_colored('13782/tcp open  netbackup            syn-ack', color='green')
time.sleep(0.1)
print_colored('13783/tcp open  netbackup            syn-ack', color='green')
time.sleep(0.1)
print_colored('14000/tcp open  scotty-ft            syn-ack', color='green')
time.sleep(0.1)
print_colored('14238/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('14441/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('14442/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('15000/tcp open  hydap                syn-ack', color='green')
time.sleep(0.1)
print_colored('15002/tcp open  onep-tls             syn-ack', color='green')
time.sleep(0.1)
print_colored('15003/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('15004/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('15660/tcp open  bex-xr               syn-ack', color='green')
time.sleep(0.1)
print_colored('15742/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('16000/tcp open  fmsas                syn-ack', color='green')
time.sleep(0.1)
print_colored('16001/tcp open  fmsascon             syn-ack', color='green')
time.sleep(0.1)
print_colored('16012/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('16016/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('16018/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('16080/tcp open  osxwebadmin          syn-ack', color='green')
time.sleep(0.1)
print_colored('16992/tcp open  amt-soap-http        syn-ack', color='green')
time.sleep(0.1)
print_colored('16993/tcp open  amt-soap-https       syn-ack', color='green')
time.sleep(0.1)
print_colored('17877/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('17988/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('18040/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('18101/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('18988/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('19101/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('19283/tcp open  keysrvr              syn-ack', color='green')
time.sleep(0.1)
print_colored('19315/tcp open  keyshadow            syn-ack', color='green')
time.sleep(0.1)
print_colored('91780/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('19801/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('19842/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('20000/tcp open  dnp                  syn-ack', color='green')
time.sleep(0.1)
print_colored('20005/tcp open  btx                  syn-ack', color='green')
time.sleep(0.1)
print_colored('20031/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('20221/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('20222/tcp open  ipulse-ics           syn-ack', color='green')
time.sleep(0.1)
print_colored('20828/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('21571/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('22939/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('23502/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('24444/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('24800/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('25734/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('25735/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('26214/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('27000/tcp open  flexlm0              syn-ack', color='green')
time.sleep(0.1)
print_colored('27352/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('27353/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('27355/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('27356/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('27715/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('28201/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('30000/tcp open  ndmps                syn-ack', color='green')
time.sleep(0.1)
print_colored('30718/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('30951/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('31038/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('31337/tcp open  Elite                syn-ack', color='green')
time.sleep(0.1)
print_colored('32768/tcp open  filenet-tms          syn-ack', color='green')
time.sleep(0.1)
print_colored('32769/tcp open  filenet-rpc          syn-ack', color='green')
time.sleep(0.1)
print_colored('32770/tcp open  sometimes-rpc3       syn-ack', color='green')
time.sleep(0.1)
print_colored('32771/tcp open  sometimes-rpc5       syn-ack', color='green')
time.sleep(0.1)
print_colored('32772/tcp open  sometimes-rpc7       syn-ack', color='green')
time.sleep(0.1)
print_colored('32773/tcp open  sometimes-rpc9       syn-ack', color='green')
time.sleep(0.1)
print_colored('32774/tcp open  sometimes-rpc11      syn-ack', color='green')
time.sleep(0.1)
print_colored('32775/tcp open  sometimes-rpc13      syn-ack', color='green')
time.sleep(0.1)
print_colored('32776/tcp open  sometimes-rpc15      syn-ack', color='green')
time.sleep(0.1)
print_colored('32777/tcp open  sometimes-rpc17      syn-ack', color='green')
time.sleep(0.1)
print_colored('32778/tcp open  sometimes-rpc19      syn-ack', color='green')
time.sleep(0.1)
print_colored('32779/tcp open  sometimes-rpc21      syn-ack', color='green')
time.sleep(0.1)
print_colored('32780/tcp open  sometimes-rpc23      syn-ack', color='green')
time.sleep(0.1)
print_colored('32781/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('12782/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('32783/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('32784/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('32785/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('33354/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('33899/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('34571/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('34572/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('34573/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('35500/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('38292/tcp open  landesk-cba          syn-ack', color='green')
time.sleep(0.1)
print_colored('40193/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('40911/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('41511/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('42510/tcp open  caerpc               syn-ack', color='green')
time.sleep(0.1)
print_colored('44176/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('44442/tcp open  coldfusion-auth      syn-ack', color='green')
time.sleep(0.1)
print_colored('44501/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('55100/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('48080/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('49152/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('49153/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('49154/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('49155/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('49156/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('49157/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('49158/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('49159/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('49160/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('49161/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('49163/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('49165/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('49167/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('49175/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('49176/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('49400/tcp open  compaqdiag           syn-ack', color='green')
time.sleep(0.1)
print_colored('49999/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('50000/tcp open  ibm-db2              syn-ack', color='green')
time.sleep(0.1)
print_colored('50001/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('50002/tcp open  iiimsf               syn-ack', color='green')
time.sleep(0.1)
print_colored('50003/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('50006/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('50300/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('50389/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('50500/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('50636/tcp open  unknown              syn-ack', color='green')
time.sleep(0.1)
print_colored('50800/tcp open  unknown              syn-ack', color='green')
time.sleep(5)
black = "\033[0;30m"
purple = "\033[0;35m"
blue = "\033[0;34m"
green = "\033[0;32m"
white = "\033[0;37m"

def clear():
	system('clear')

def scrollTxt(text, color, speed):
	if color == "":
		for char in text:
			sys.stdout.write(char)
			sys.stdout.flush()
			sleep(speed)
		print()
	else:
		print(color, end="")
		for char in text:
			sys.stdout.write(char)
			sys.stdout.flush()
			sleep(speed)
		print()
		print(white, end="")
  
print("")

time.sleep(2)

scrollTxt("Server-side tracking has emerged as an effective solution, addressing many of the challenges faced by ", blue, 0.03)

time.sleep(1)
scrollTxt("traditional client-side tagging and filling the gaps left by the third-party data collection methods of old", blue, 0.03)
time.sleep(2)


print_colored('eta name="description" content="SWIFT basic tracking of your wire transfer and GPI status in certain banks', color='red')
time.sleep(0.1)
print_colored('[!] Use UETR or Sender&amp;#039;s referenceInternet hack activity soars due to automatic worm attacks,', color='red')
time.sleep(0.1)
print_colored('[!] We have all read about cyber terrorists, identity thieves, industrial saboteurs,', color='red')
time.sleep(0.1)
print_colored('[!] credit card crooks, Web site vandals, hackers, crackers and script kiddies', color='red')
time.sleep(0.1)

black = "\033[0;30m"
purple = "\033[0;35m"
blue = "\033[0;34m"
green = "\033[0;32m"
white = "\033[0;37m"

def clear():
	system('clear')

def scrollTxt(text, color, speed):
	if color == "":
		for char in text:
			sys.stdout.write(char)
			sys.stdout.flush()
			sleep(speed)
		print()
	else:
		print(color, end="")
		for char in text:
			sys.stdout.write(char)
			sys.stdout.flush()
			sleep(speed)
		print()
		print(white, end="")
  
print("")

time.sleep(2)

scrollTxt("Server-side tracking has emerged as an effective solution, addressing many of the challenges faced by ", blue, 0.03)

time.sleep(1)
scrollTxt("traditional client-side tagging and filling the gaps left by the third-party data collection methods of old", blue, 0.03)
time.sleep(2)


print_colored('eta name="description" content="SWIFT basic tracking of your wire transfer and GPI status in certain banks', color='red')
time.sleep(0.1)
print_colored('[!] Use UETR or Sender&amp;#039;s referenceInternet hack activity soars due to automatic worm attacks,', color='red')
time.sleep(0.1)
print_colored('[!] We have all read about cyber terrorists, identity thieves, industrial saboteurs,', color='red')
time.sleep(0.1)
print_colored('[!] credit card crooks, Web site vandals, hackers, crackers and script kiddies', color='red')
time.sleep(0.1)











#===================================================================== end of databases

def color_text(text, color_code):
    return f"\033[{color_code}m{text}\033[0m"

# Define color codes (ANSI escape codes)

RED = "31"
GREEN = "32"
BLUE = "34"

# Example usage
#sentence = f"-----------------------------------------{color_text('WELCOME TO SWIFT', WHITE)}-------------------------------------------"

#print(sentence)

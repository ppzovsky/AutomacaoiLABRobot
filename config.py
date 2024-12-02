from robot import run
import datetime
import os

path = "results/logsHTML"
if not os.path.exists(path):
        print(f"Criando a pasta: {path}")
        os.makedirs(path)

currentdate = datetime.datetime.now()
formateddate = currentdate.strftime("%d-%m-%Y_%H-%M-%S")

run(
    "tests/",  
    outputdir= "results/logsHTML",
    log=f"{formateddate}log.html",
    report=f"{formateddate}report.html",
    output=f"{formateddate}output.xml"
)

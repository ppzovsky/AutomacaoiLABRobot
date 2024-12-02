import pyautogui
import os
import datetime

def cria_pasta(path):
    try:
        if not os.path.exists(path):
            print(f"Criando a pasta: {path}")
            os.makedirs(path)
        else:
            print(f"A pasta já existe: {path}")
    except Exception as e:
        print(f"Erro ao criar a pasta: {e}")

def tira_screenshot(test, screenshotName):
    """
    Tira uma captura de tela e salva no destino especificado.
    :param test: Nome do teste para criar a pasta.
    :param screenshotName: Nome do arquivo de screenshot.
    """
    relativepath = f"screenshots/{test}"
    path = f"results/screenshots/{test}"
    cria_pasta(path)
    currentdate = datetime.datetime.now()
    formateddate = currentdate.strftime("%d-%m-%Y_%H-%M-%S")

    destino = os.path.join(path, f"{screenshotName}{formateddate}.png")
    destinohtml =   os.path.join(relativepath, f"{screenshotName}{formateddate}.png")
    screenshot = pyautogui.screenshot()
    screenshot.save(destino)  
    print(f"Screenshot salva em: {destino}")
    return destinohtml



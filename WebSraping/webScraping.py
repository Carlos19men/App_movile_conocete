#Para usar este Scritp es necesario primero installar la dependencia de selenium
# usa esta instrucción en tu terminal, pip install selenium 

from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.common.exceptions import NoSuchElementException 
import time
import json

data = []

#Abrimos el navegador 
driver = webdriver.Firefox()


def WSunifemmen(driver): 

    #abrimos la pestaña 
    
    url = "https://www.saludunifemme.com/blog/"

    driver.get(url)

    items = []


    #Extramos la informacion de la pagina 
    articles = driver.find_elements(By.CSS_SELECTOR,".column article")

    ids = [article.get_attribute('id') for article in articles]

    #Por cada columan buscamos las etiquetas articulos 
    for id_ in ids:
        #accedemos a la descripcion de cada item
        articulo = driver.find_element(By.ID,id_)

        articulo.find_element(By.CLASS_NAME,'entry-title').click()

        #Extraemos el titulo principal
        titulo = driver.find_element(By.TAG_NAME,'h1').text

        #Exatremos la imagen 
        imagen = driver.find_element(By.CSS_SELECTOR,'.et_pb_title_featured_container img').get_attribute('src')
        
        #Obtenemos los tres primeros parrafos de cada uno  
        parrafosWeb = driver.find_elements(By.TAG_NAME,'p')

        #convertir a textO
        
        parrafos = parrafosWeb[0].text + '\n' + parrafosWeb[1].text + '\n'+ parrafosWeb[2].text + '\n\n';


        #agregamos la información al objeto 
        items.append({
            'title': titulo,
            'img': imagen,
            'informacion': parrafos
        }); 

        #regresamos a la pagina anterior 
        driver.back()

    return items;

def breastcancer(driver):
    data = []

    #url
    url = 'https://www.breastcancer.org/es/noticias'

    driver.get(url)

    #obtener la cantidad de elementos a iterar 
    cantidad_art = len(driver.find_elements(By.CLASS_NAME ,'Category_cardItem__XQqhV'))

    for item in range(cantidad_art):

        #esperamos a que cargue la pagina 
        time.sleep(4)

        try:
            driver.find_element(By.CLASS_NAME,'CookieBanner_closeButton__Byz7q').click()
        except:
            print('no hizo falta')

        #Consultamos la lista de elementos 
        elementos = []

        #establecemos un condicion que diga que si no se encuentra los elementos que vuelva a realizar la consulta 
        while(len(elementos) == 0):
            time.sleep(4)
            elementos = driver.find_elements(By.CLASS_NAME ,'Category_cardItem__XQqhV')
            
        try:
            driver.find_element(By.CLASS_NAME,'CookieBanner_closeButton__Byz7q').click()
        except:
            print('no hizo falta')


        #damos el click en el elemento correspondiente
        elementos[item].click()

        #esperamos a que cargue la pagina 
        time.sleep(10)

        #volvemos a cancelar la cooki
        try:
            driver.find_element(By.CLASS_NAME,'CookieBanner_closeButton__Byz7q').click()
        except:
            print('no hizo falta')
        
        

        #Obtenermos los datos 
        titulo = driver.find_element(By.TAG_NAME,'h1').text

        try:
            imagen = driver.find_element(By.CSS_SELECTOR,'.Subtopic_fullWidthFeaturedImageWrapper__rIfP3 img').get_attribute('src')
        except NoSuchElementException:
            imagen = None
        
        parrafosWeb = driver.find_elements(By.CSS_SELECTOR,'.AdsContent p')

        parrafos = parrafosWeb[0].text + '\n' + parrafosWeb[1].text + '\n'+ parrafosWeb[2].text + '\n\n';

        #agregamos a la data 
        data.append({
            'title': titulo,
            'img': imagen,
            'informacion': parrafos
        });

        #volvemos a la pagina anterior 
        driver.back()


    print(data)
    print(len(data))

    #cerramos la pagina 
    return data; 
    


data.extend(WSunifemmen(driver))
data.extend(breastcancer(driver))

driver.close()

print(len(data))


#Guardamos el json en un archivo nuevo en el repositorio del proyecto flutter
with open('../conocete/assets/novedades/novedades.json',"w",encoding='utf-8') as archivo:
    json.dump(data,archivo,ensure_ascii=False,indent=4)

    print('archivo creado con exito')   
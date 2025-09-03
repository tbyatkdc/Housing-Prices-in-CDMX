# Análisis de precios de vivienda en CDMX

Este proyecto forma parte de mi portafolio de ciencia de datos.  
Su objetivo es analizar y modelar los precios de inmuebles en la Ciudad de México, utilizando **PostgreSQL** para la carga y limpieza inicial de datos, y **Python** para el análisis exploratorio, visualización y modelado estadístico.

---

## 1. Contexto
El mercado inmobiliario en la CDMX es altamente heterogéneo: los precios dependen de la ubicación, el tipo de propiedad y las características físicas del inmueble.  
El propósito de este análisis es explorar los determinantes principales de los precios, evaluar la relación entre superficie y precio, y validar un modelo de regresión lineal simple como punto de partida.

---

## 2. Metodología

### Etapas principales:
1. **Carga y limpieza en SQL**  
   - Creación de tablas en PostgreSQL.  
   - Identificación de valores nulos, duplicados y atípicos.  
   - Eliminación/corrección de registros inconsistentes.  

2. **Análisis exploratorio en Python**  
   - Estadística descriptiva (medias, medianas, dispersión).  
   - Distribución de variables categóricas (`property_type`, `places`).  
   - Visualizaciones (histogramas, boxplots, mapas de calor de correlación).  

3. **Modelado estadístico**  
   - Transformación logarítmica de precio (`log_price_local`) y superficie (`log_surface_total`).  
   - Ajuste de un modelo de regresión lineal simple.  
   - Evaluación de supuestos clásicos de regresión:
     - Linealidad  
     - Normalidad de residuos  
     - Homocedasticidad  
     - Independencia de errores  
     - Multicolinealidad  

4. **Interpretación de resultados**  
   - Elasticidad precio-superficie cercana a 1 (coeficiente ≈ 0.91).  
   - El modelo explica alrededor del **47% de la varianza en precios** (R² = 0.47).  
   - Evidencia de heterocedasticidad → se recomienda reportar errores robustos (HC3).  

---

## 3. Resultados principales

- **Variable dependiente:** precio local en escala logarítmica (`log_price_local`).  
- **Variable independiente:** superficie total en escala logarítmica (`log_surface_total`).  
- **Elasticidad estimada:** un aumento del 1% en la superficie total se asocia con un incremento promedio de 0.91% en el precio.  
- **R² = 0.47:** el modelo tiene poder explicativo moderado.  
- **Supuestos:**  
  - Residuos no normales y heterocedásticos.  
  - No hay autocorrelación (Durbin-Watson ≈ 2).  
  - No hay multicolinealidad (VIF = 1).  

---

---

## 4. Cómo reproducir

1. Clonar el repositorio:
   ```bash
   git clone https://github.com/tu_usuario/housing-cdmx-analysis.git
   cd housing-cdmx-analysis
 2.	Instalar dependencias:
  ```bash  
    pip install -r requirements.txt
```
3.	Cargar los datos originales en PostgreSQL y ejecutar los scripts de /sql.
4.	Abrir el notebook de análisis:
•	Localmente en Jupyter Notebook, o
•	En Google Colab subiendo housing_analysis.ipynb.

## 6. Tecnologías utilizadas:

	•	PostgreSQL 17
	•	Python 3.12
	•	Librerías: pandas, numpy, matplotlib, seaborn, plotnine, statsmodels, scikit-learn
 
## 7. Autor

Proyecto desarrollado por Brandon Yahir Arriaga Tlapa\
Contacto: www.linkedin.com/in/arriaga-tlapa-brandon-yahir-006137223
   

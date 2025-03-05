# Usa una imagen base de Python
FROM python:3.9

# Establecer el directorio de trabajo en el contenedor
WORKDIR /app

# Copiar los archivos del proyecto al contenedor
COPY . /app

# Instalar dependencias (si hay un archivo requirements.txt)
RUN pip install --no-cache-dir -r requirements.txt || true

# Exponer el puerto donde corre la aplicación
EXPOSE 80

# Comando para ejecutar la aplicación
CMD ["python", "-m", "http.server", "80"]


	-Nombre del proyecto
  DOCUMENTACION AUTOMATICA DOCSTRINGS 
	-Proposito
  Este script busca recopilar todos los docstrings de un proyecto y documentarlos dentro de un documento docx de forma automatica y con un formato normalizado 
	Requesitos
  Python 3.10 o superior y la libreria python-docx
	Como ejecutar
  para ejecutar este proyecto se debe crear una task en visual studio. Pasos a seguir:
  1. clonar el repositorio en nuestro equipo
  2. poner en la consola del proyecto el comando pip install python-docx  
  3. crear la task en visual studio code, para eso tocamos ctrl+shift+p sobre la carpeta docruuner
  4. elegimos la opcion de open users tasks, esto nos va a abrir el arhivo tasks.json
  5. dentro de este archivo tenemos que copiar el siguiente sript y reemplazar los valores de CWD y PYTHONPATH por la ruta en donde guardamos nuestro este proyecto
     {
  "version": "2.0.0",
  "tasks": [
    {
      "label": "Documentar proyecto (DocuRunner)",
      "type": "shell",
      "command": "python",
      "args": [
        "-m",
        "app.main",
        "${workspaceFolder}",
        "-o",
        "${workspaceFolder}/documentacion.docx"
      ],
      "options": {
        "cwd": "PATH",
        "env": {
          "PYTHONPATH": "PATH"
        }
      },
      "presentation": {
        "echo": true,
        "reveal": "always",
        "panel": "shared"
      },
      "problemMatcher": []
    }
  ]
}

  6. una vez hecho esto ya podremos correr este script en cualquier proyecto de nuestra maquina, para eso tenemos que tocar ctrl+shift+p nuevamente y elegir la opcion de tasks: run task
  7. el paso anterior va a generar el documento .docx en la carpeta de tu proyecto 
  
  Inputs/Outputs
  inputs: nada
  outputs: documentacion .docx 
  

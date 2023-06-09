from flask import Flask, jsonify, request
from flask_cors import CORS
# si el archivo principal del proyecto su valor de la vatiable __name__ sera '__main__' caso contrario sera None (vacio)
app = Flask(__name__)
# ORIGINS = '*'
# METHODS = '*'
CORS(app=app, origins=['http://127.0.0.1:5500'], methods=['GET', 'POST'])
# un decorador se usa con el '@', sirve para podeder modificiar ciertos metodos de una clase sin la necesidad de modificar el funcionamienton natural (es una modificacion parcial), luego de utilizar el decorador se crea una function que sera la nueva funcionalidad de ese metodo
usuarios = [
    {
        'nombre': 'yonatan',
        'apellido': 'llant0'
    },
    {
        'nombre': 'pedro',
        'apellido': 'castillo'
    },
    {
        'nombre': 'roberto',
        'apellido': 'carlos'
    }
]


@app.route('/')
def inicio():
    return 'Hola desde mi servidor'


@app.route('/tiempo', methods=['GET', 'POST'])
def mostrarHora():

    # se retorna diccionario
    if request.method == 'GET':
        return {
            'content': 'hiciste get'
        }

    elif request.method == 'POST':
        return {
            'content': 'hiciste post'
        }
    return {
        "tiempo": "23:45:14"
    }


@app.route('/usuarios', methods=['GET', 'POST'])
def gestinUsuarios():
    if request.method == 'GET':
        return {
            'message': 'Los usuarios son',
            'content': usuarios
        }
    elif request.method == 'POST':
        # request.data > formato bytes > diccionario
        data = usuarios.append(request.get_json())
        print(data)
        return {'new_usuario': "agregado"}


if __name__ == '__main__':
    app.run(debug=True)

# ejecutar nuestro proyecto

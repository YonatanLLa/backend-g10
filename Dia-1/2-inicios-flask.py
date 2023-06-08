from flask import Flask, jsonify, request

# si el archivo principal del proyecto su valor de la vatiable __name__ sera '__main__' caso contrario sera None (vacio)
app = Flask(__name__)

# un decorador se usa con el '@', sirve para podeder modificiar ciertos metodos de una clase sin la necesidad de modificar el funcionamienton natural (es una modificacion parcial), luego de utilizar el decorador se crea una function que sera la nueva funcionalidad de ese metodo


@app.route('/', methods=['GET'])
def inicio():
    name = request.args.get('name')
    if name:
        message = f'Hola, {name}'
    else:
        message = 'Hola!'
    return jsonify({'Saludo': message})

if __name__ == '__main__':
    app.run(debug=True)
    
# ejecutar nuestro proyecto

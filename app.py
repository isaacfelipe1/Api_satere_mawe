from flask import Flask, jsonify, render_template
import mysql.connector
app = Flask(__name__)
app.secret_key = 'isaacfelipe30@'
db = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="numeros_satere_mawe_db"
)
@app.route('/')
def inicial():
    return render_template("index.html")
@app.route('/documentacao')
def documentacao():
    return render_template("documentacao.html")

@app.route('/api/numeros_satere', methods=['GET'])
def listar_numeros_satere_mawe():
    cursor = db.cursor()
    cursor.execute("SELECT * FROM numeros_descricoes")
    numeros = cursor.fetchall()
    cursor.close()
    numero_json = []
    for numero in numeros:
        numero_dict = {
            "id": numero[0],
            "numero": numero[1],
            "descricao": numero[2]
        }
        numero_json.append(numero_dict)
    return jsonify(numero_json)

@app.route('/api/vogais', methods=['GET'])
def listar_vogais():
    cursor = db.cursor()
    cursor.execute("SELECT * FROM vogais")
    vogais = cursor.fetchall()
    cursor.close()
    vogais_json = []
    for vogal in vogais:
        vogal_dict = {
            "id": vogal[0],
            "numero": vogal[1],
            "descricao": vogal[2]
        }
        vogais_json.append(vogal_dict)
    return jsonify(vogais_json)
@app.route('/api/numeros_de_trezentos', methods=['GET'])
def listar_numeros_satere_trezentos():
    cursor = db.cursor()
    cursor.execute("SELECT * FROM numeros_de_trezentos")
    numeros = cursor.fetchall()
    cursor.close()
    numero_json = []
    for numero in numeros:
        numero_dict = {
            "id": numero[0],
            "numero": numero[1],
            "descricao": numero[2]
        }
        numero_json.append(numero_dict)
    return jsonify(numero_json)

@app.route('/api/alfabeto', methods=['GET'])
def listar_alfabeto():
    cursor = db.cursor()
    cursor.execute("SELECT id, letra FROM alfabeto")
    letras = cursor.fetchall()
    cursor.close()
    alfabeto_json = [{"id": letra[0], "letra": letra[1]} for letra in letras]
    return jsonify(alfabeto_json)

@app.route('/api/palavras', methods=['GET'])
def listar_palavras():
    cursor = db.cursor()
    cursor.execute("SELECT id, palavra, satere FROM palavras_satere")
    palavras = cursor.fetchall()
    cursor.close()
    palavras_json = [{"id": palavra[0], "palavra": palavra[1], "satere": palavra[2]} for palavra in palavras]
    return jsonify(palavras_json)

if __name__ == '__main__':
    app.run(debug=True)
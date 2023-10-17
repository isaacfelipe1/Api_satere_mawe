const data = [
    {
        "descricao": "Kat’i",
        "id": 1,
        "numero": 0
    },
    {
        "descricao": "Wentup",
        "id": 2,
        "numero": 1
    },
    {
        "descricao": "Typy",
        "id": 3,
        "numero": 2
    },
{
"descricao": "Mye’ym",
"id": 4,
"numero": 3
},
{
"descricao": "Tukawa",
"id": 5,
"numero": 4
},
{
"descricao": "Mantukawa",
"id": 6,
"numero": 5
},
{
"descricao": "Mantuwe",
"id": 7,
"numero": 6
},
{
"descricao": "Mantuty ",
"id": 8,
"numero": 7
},
{
"descricao": "Mantumye",
"id": 9,
"numero": 8
},
{
"descricao": "Mantutu ",
"id": 10,
"numero": 9
}
];
function somar() {
    const num1 = parseFloat(document.getElementById("inputNum1").value);
    const num2 = parseFloat(document.getElementById("inputNum2").value);
    const resultado = num1 + num2;
    document.getElementById("resultado").textContent = resultado;
    exibirDescricao(resultado);
}

function subtrair() {
    const num1 = parseFloat(document.getElementById("inputNum1").value);
    const num2 = parseFloat(document.getElementById("inputNum2").value);
    const resultado = num1 - num2;
    document.getElementById("resultado").textContent = resultado;
    exibirDescricao(resultado);
}

function multiplicar() {
    const num1 = parseFloat(document.getElementById("inputNum1").value);
    const num2 = parseFloat(document.getElementById("inputNum2").value);
    const resultado = num1 * num2;
    document.getElementById("resultado").textContent = resultado;
    exibirDescricao(resultado);
}

function dividir() {
    const num1 = parseFloat(document.getElementById("inputNum1").value);
    const num2 = parseFloat(document.getElementById("inputNum2").value);
    if (num2 !== 0) {
        const resultado = num1 / num2;
        document.getElementById("resultado").textContent = resultado;
        exibirDescricao(resultado);
    } else {
        alert("Divisão por zero não é permitida.");
    }
}

function exibirDescricao(resultado) {
    for (const item of data) {
        if (item.numero === resultado) {
            document.getElementById("descricao").textContent = item.descricao;
            return;
        }
    }
    document.getElementById("descricao").textContent = "Não encontrado";
}
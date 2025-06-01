using System.Globalization;
using System.Text;

using DesafioPOO.Interfaces;
using DesafioPOO.Models;

// TODO: Realizar os testes com as classes Nokia e Iphone

// Inicialização
Console.Clear();
Console.OutputEncoding = Encoding.UTF8;
CultureInfo.DefaultThreadCurrentCulture = CultureInfo.CreateSpecificCulture("pt-BR");

// Ler os testes que devem ser executados a partir de um arquivo
// - não poluir o código, ignorar alguns possíveis de erros
// - sempre haverá a lista de celulares
string[] listaCelulares = File.ReadAllLines("tests/listaCelulares.txt");

foreach (var celular in listaCelulares)
{
    ITelefone telefone;

    // Obter os dados usados no teste
    List<string> camposCelular = celular
        .Split(',')
        .Select(campo => campo.Trim())
        .ToList();
    Console.WriteLine($"SmartPhone {camposCelular[0]}");

    // Definir a classe que será instanciada
    if (camposCelular[0] == "Nokia")
    {
        telefone = new Nokia(camposCelular[1], camposCelular[2], camposCelular[3], Convert.ToInt32(camposCelular[4]));
    }
    else
    {
        telefone = new Iphone(camposCelular[1], camposCelular[2], camposCelular[3], Convert.ToInt32(camposCelular[4]));
    }
    telefone.Ligar();
    telefone.ReceberLigacao();
    telefone.InstalarAplicativo(camposCelular[5]);
    Console.WriteLine("");
}

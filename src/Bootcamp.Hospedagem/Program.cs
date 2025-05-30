using System.Globalization;
using System.Text;
using System.Threading;

using DesafioProjetoHospedagem.Models;

// Inicialização
Console.Clear();
Console.OutputEncoding = Encoding.UTF8;
CultureInfo.DefaultThreadCurrentCulture = CultureInfo.CreateSpecificCulture("pt-BR");

// Cria os modelos de hóspedes e cadastra na lista de hóspedes
List<Pessoa> hospedes = new List<Pessoa>();

// Para não poluir o código, vamos ignorar alguns possíveis de erros
// - sempre haverá pessoas e suítes nos respectivos arquivos
string[] listaPessoas = File.ReadAllLines("testes/listaHospedes.txt");

// Selecionar os hóspedes (lista de hóspedes contendo entre 1 and 'listaPessoas.Count()' pessoas)
Random rnd = new Random();
int quantidadeHospedes = rnd.Next(1, listaPessoas.Count());

for (int i = 0; i < quantidadeHospedes; ++i)
{
    hospedes.Add(new Pessoa(nome: listaPessoas[i]));
}

// Selecionar uma dentre as várias suítes
string[] listaSuites = File.ReadAllLines("testes/listaSuites.txt");
int suiteSelecionada = rnd.Next(1, listaSuites.Count());

List<string> camposSuite = listaSuites[suiteSelecionada]
    .Split(',')
    .Select(nome => nome.Trim())
    .ToList();

// Criar a suíte
int capacidade;
Decimal valorDiaria;

int.TryParse(camposSuite[1], out capacidade);
Decimal.TryParse(camposSuite[2], out valorDiaria);
Suite suite = new Suite(tipoSuite: camposSuite[0], capacidade, valorDiaria);

// Selecionar uma duração para a reserva (entre 1 e 30 dias)
int diasReservados = rnd.Next(1, 30);

// Cria uma nova reserva, passando a suíte e os hóspedes
Reserva reserva = new Reserva(diasReservados);
reserva.CadastrarSuite(suite);

Console.WriteLine("############################################################");
Console.WriteLine($"Serão {quantidadeHospedes} pessoas em '{camposSuite[0]}' por {diasReservados} dias.");

try
{
    reserva.CadastrarHospedes(hospedes);
}
catch (ArgumentOutOfRangeException ex)
{
    Console.WriteLine($"Aviso: {ex.Message}");
}
catch (Exception ex)
{
    Console.WriteLine($"Ocorreu um erro: {ex.Message}");
}

// Exibe a quantidade de hóspedes e o valor da diária
Console.WriteLine("############################################################");
Console.WriteLine($"Hóspedes: {reserva.ObterQuantidadeHospedes()}");
Console.WriteLine($"Valor diária: {reserva.CalcularValorDiaria():C}");
Console.WriteLine("############################################################");
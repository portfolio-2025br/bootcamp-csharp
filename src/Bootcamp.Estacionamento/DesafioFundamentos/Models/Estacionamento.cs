using System.Text.RegularExpressions;

namespace DesafioFundamentos.Models
{
    public class Estacionamento
    {
        private decimal precoInicial = 0;
        private decimal precoPorHora = 0;
        private List<string> veiculos = new List<string>();

        public Estacionamento(decimal precoInicial, decimal precoPorHora)
        {
            this.precoInicial = precoInicial;
            this.precoPorHora = precoPorHora;
        }

        public void AdicionarVeiculo()
        {
            string placa = "";

            Console.WriteLine("Digite a placa do veículo para estacionar:");
            placa = Console.ReadLine();

            if (ValidarPlaca(placa) && !VerificarSeVeiculoEstaEstacionado(placa))
            {
                veiculos.Add(placa);
            }
        }

        public void RemoverVeiculo()
        {
            Console.WriteLine("Digite a placa do veículo para remover:");
            string placa = "";
            placa = Console.ReadLine();

            if (!ValidarPlaca(placa))
            {
                return;
            }

            // Verifica se o veículo existe
            if (veiculos.Any(x => x.ToUpper() == placa.ToUpper()))
            {
                Console.WriteLine("Digite a quantidade de horas que o veículo permaneceu estacionado:");

                int horas = 0;
                decimal valorTotal = 0;
                horas = Convert.ToInt32(Console.ReadLine());
                valorTotal = precoInicial + precoPorHora * horas;

                veiculos.Remove(placa);

                Console.WriteLine($"O veículo {placa} foi removido e o preço total foi de: R$ {valorTotal:F2}");
            }
            else
            {
                Console.WriteLine("Desculpe, esse veículo não está estacionado aqui. Confira se digitou a placa corretamente");
            }
        }

        public void ListarVeiculos()
        {
            // Verifica se há veículos no estacionamento
            if (veiculos.Any())
            {
                Console.WriteLine("Os veículos estacionados são:");
                Console.WriteLine($"           Placa \tSituação");

                foreach (string veiculo in veiculos)
                {
                    Console.WriteLine($"- veículo: {veiculo}\tESTACIONADO.");
                }
            }
            else
            {
                Console.WriteLine("Não há veículos estacionados.");
            }
        }

        private bool ValidarPlaca(string placa)
        {
            // Exemplo de placa: ABC1D23
            string pattern = @"[A-Z]{3}[0-9][A-Z][0-9]{2}";

            // Validar se a placa informada "parece ser" válida
            if (placa == string.Empty)
            {
                Console.WriteLine("Nenhum veículo foi informado.");
                return false;
            }
            MatchCollection matches = Regex.Matches(placa, pattern, RegexOptions.Compiled);

            if (matches.Count != 1)
            {
                Console.WriteLine($"A placa {placa} informada é inválida!");
            }
            return (matches.Count == 1);
        }

        private bool VerificarSeVeiculoEstaEstacionado(string placa)
        {
            if (veiculos.Any(x => x.ToUpper() == placa.ToUpper()))
            {
                Console.WriteLine("Veículo já está cadastrado no sistema.");
                return true;
            }
            return false;
        }
    }
}

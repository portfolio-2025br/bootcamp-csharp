using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace DesafioPOO.Interfaces
{
    public interface ITelefone
    {
        public void Ligar();

        public void ReceberLigacao();

        public void InstalarAplicativo(string nomeApp);
    }
}

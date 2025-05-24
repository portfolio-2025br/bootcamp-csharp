# Guia de Contribuição

Este é um projeto aberto, feito com e para a comunidade. Sinta-se livre para contribuir.

## Convenção de Commits

| Tipo de Commit | Descrição                                                                    | Exemplo                               |
| :------------: | ---------------------------------------------------------------------------- | ------------------------------------- |
|    `build`     | Altera a ferramenta de compilação ou as dependências externas.               | `build(ci): update fedora version`    |
|    `chore`     | Tarefa de manutenção técnica ou preventiva do produto ou do repositório. [1] | `chore: initial commit`               |
|      `ci`      | Altera scripts de integração contínua ou de entrega contínua.                | `ci: add macOS testing`               |
|     `docs`     | Altera a documentação do projeto.                                            | `docs: update README.md`              |
|     `feat`     | Adiciona uma nova funcionalidade ao projeto.                                 | `feat: add USENAME.md profile`        |
|     `fix`      | Corrige um bug ou problema no projeto.                                       | `fix: fixed issue`                    |
|   `refactor`   | Realiza mudanças no código que não alteram a funcionalidade.                 | `refactor: refactor at CLASSNAME`     |
|    `style`     | Realiza mudanças na aparência, sem alterar a funcionalidade.                 | `style: add EFFECTNAME to COMPONENT`  |
|     `test`     | Adiciona ou modifica testes no projeto.                                      | `test: add unit test for UserService` |

[1] Por exemplo, criar um release ser considerada um `chore`. Regenerar o código gerado (automaticamente) pode ser um
`chore`.

## Como deve ser uma mensagem de commit

[Conventional Commits](https://www.conventionalcommits.org/) é uma especificação que tem como objetivo melhorar as
mensagens de commit em em geral. A especificação define um formato padrão para mensagens de commit.

As nossas mensagens de commit devem seguir o seguinte formato:

```text
<tipo>[(opcional <escopo>)]: <título> (#PR)

[opcional <descrição>]

[opcional <rodapé(s)>]
```

Uma mensagem de commit deve referir-se ao seu objetivo e ao problema que motivou o seu desenvolvimento:

- Se o problema a que um commit se refere é um relatório de bug, adicione o seguinte texto à mensagem de commit:
  - Fix: #IssueNumber.
- Se o problema ao qual o commit se refere é uma solicitação de recurso, adicione o seguinte texto à mensagem de commit:
  - Close: #IssueNumber.
- Os commits podem não ser exatamente uma correção ou implementação de uma funcionalidade, mas podem estar relacionados
  com algum issue, neste caso, adicione o seguinte texto à mensagem de commit:
  - See: #IssueNumber.

Exemplos:

```text
ci(script.sh): fix a typo (#9999)

Corrige (dentro do subsistema/arquivo) script.sh uma palavra que estava
escrita incorretamente. Estas linhas foram limitadas a 70-80 caracteres.

Como a discussão e processo de aprovação acontece dentro da PR, é sensato
relacionar os commits ao PR de número 9999, de forma a facilitar a pesquisa
e referenciamento futuros.
```

## O processo de revisão de PR

Depois de abrir um pull request, você, como autor, é responsável por:

- Lidar com as falhas de CI dos testes automatizados.
- Resolver conflitos de merge com o branch principal.
- Ser responsivo ao feedback. Isso significa estar preparado para fazer alterações na pull request com base na revisão.
- Seja paciente durante o processo de revisão.
- Não reabra pull requests fechadas. Se você precisar criar uma nova pull request, ela pode fazer referência à PR
  fechada.

## Critérios de aceitação do PR

- O código submetido está correto.
- O comportamento resultante é desejado e considerado útil para o projeto.
- Os mantenedores e committers concordam em manter o código (que será) adicionado.

## Referências

- [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/)

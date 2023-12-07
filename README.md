# AntonioRodrigues_CCEE

**Introdução**

   Primeiramente eu gostaria de agradecer a oportunidade de apresentar esta utomação desenvolvida uilizando ROBOT Framework em resposta ao teste para vaga de automatizador sênior da CCEE.  
  Para melhor avaliação do teste é interesante que sejam seguidos os passos abaixo e também seja lida esta documentação.  
  Este projeto foi desenvolvido observando as melhores práticas de desenvolvmento e demonstra um pouco quão poderosa e viável é a aplicação do ROBOT Framework para aplicação de testes de automação de software.

**Dependências**

  Antes de inicar a execução deste projeto de automação e necessário que instruções abaixo sejam executadas na máquina host da aplicação através do PowerShell do Windows em modo de administrador.

    pip install robotframework-seleniumlibrary
    pip install robotframework-faker
    pip install robotframework-datetime

**Execução**

A automação pode ser executada a partir do VSCode através da linha de comando abaixo:

    robot -d Results Features/VehicleQuoteFeature.robot

**Descrição da estrutura do projeto**

  Este projeto foi desenvolvido aplicando os conceitos de design pattern Page Object, Legibilidade, Manutenabilidade, Rastreabilidade e Evolutividade, desta forma foi subdividido conforme a estrutura de pastas abaixo:  

  1) *Features*: esta pasta contém o arquivo com o descritivo da funcionalidade validade no teste e responsável por conter a estrutura de execução do cenário teste, está escrito em linguagem natural pt-BR em estrutura de BDD;

  2)  *PageObjetc*: foi aplicado o pattern Page Objet às abstrações de tela manipuladas pela automação, este pattern visa o melhor controle dos elementos de tela através do isolamento do mapeamento dos objetos, melhoria na rastreabilidade e legibilidade do código fronte por substitindo da regra de negócio trechos de instrução de máquina por nomes em metadados amigáveis;
     
  3)  *Resources*: este pasta contém o arquivo **Settings.resource** onde é possível encontrar, e configurar, o endereço alvo da automação e o driver a ser utilizado, este arquivo também é responsável por aglutinar as dependências do projeto reduzindo assim a carga de informações repetitidas contidas em cada arquivo .robot e .resource;
  
  4) *Results*: contém os logs de execução da automação, nestes logs é possivel rastrear informações adicionais da execução como deatalhes de falhas;
  
  6) *Steps*: em conformidade com o pattern do PageObject, a pasta contém as abstrações de interação com a tela, nela é possível encontrar principalmente as regras de negócio da automação.
  
  Ao acessar a automação é possivel notar que nem todos os arquivos contidos nela estão com extensão .robot. Os arquivos de PageObjects e Resouces estão definidos com .resource por duas razões. Uma é que a linguagem permite este tipo de definição, dois, estas páginas são apenas declarativas desta forma eles são apenas importadas e compartilhadas pelos arquivos que as usam.    

**Considerações finais**

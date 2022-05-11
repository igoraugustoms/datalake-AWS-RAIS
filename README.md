# Datalake - Rais

#### Objetivo do projeto

<img src="imagens\arquitetura.jpg">

<p>
O seguinte código monta um datalake na AWS com o objetivo de receber os dados do RAIS (Relação Anual de Informações Sociais). 

A ideia foi automatizar o ambiente utilizando terraform e esteiras de deploy do GitHub Actions.
 </p>

#### Tecnologias utilizadas
- ``Terraform``
- ``Spark``
- ``AWS Lambda (Python)``
- ``Boto3``
- ``EMR``
- ``AWS S3``
- ``Glue Crawler``
- ``GitHub Actions``

### Como rodar e testar
<p> No repositório git, não se encontram os dados que utilizei para subir na nuvem. Os mesmos podem ser baixados no link http://pdet.mte.gov.br/microdados-rais-e-caged.

Outro arquivo que não está disponível é o com as minhas variáveis no terraform, que utilizei para dar nome a alguns recursos.

A execução é bem simples. Ao rodar um git push, executamos uma esteira de deploy do GitHub Actions. Esta esteira valida o código terraform. Ao fazer um pull-request para a master, é executada a segunda esteira que faz o deploy dos recursos na AWS.

O arquivo upload_file.py pode ser executado localmente para subir os arquivos do RAIS na nuvem.

A lambda lambda_function.py sobe um cluster EMR e chama a execução do job spark tratamento.py. Este job lê os arquivos TXT, faz algumas modificações e salva na zona staging em formato parquet.

Após executarmos o crawler s3_crawler_rais, podemos executar consultas nos dados com o Athena.

</p>
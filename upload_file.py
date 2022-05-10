import boto3


def upload_arquivo():
    s3_client = boto3.client('s3')

    arquivos = {
                r"C:\Users\igora\PycharmProjects\datalake-RAIS\data\RAIS_VINC_PUB_CENTRO_OESTE.txt" : "RAIS_VINC_PUB_CENTRO_OESTE.txt",
                r"C:\Users\igora\PycharmProjects\datalake-RAIS\data\RAIS_VINC_PUB_MG_ES_RJ.txt" : "RAIS_VINC_PUB_MG_ES_RJ.txt",
                r"C:\Users\igora\PycharmProjects\datalake-RAIS\data\RAIS_VINC_PUB_NORDESTE.txt" : "RAIS_VINC_PUB_NORDESTE.txt",
                r"C:\Users\igora\PycharmProjects\datalake-RAIS\data\RAIS_VINC_PUB_NORTE.txt" : "RAIS_VINC_PUB_NORTE.txt",
                r"C:\Users\igora\PycharmProjects\datalake-RAIS\data\RAIS_VINC_PUB_SP.txt" : "RAIS_VINC_PUB_SP.txt",
                r"C:\Users\igora\PycharmProjects\datalake-RAIS\data\RAIS_VINC_PUB_SUL.txt" : "RAIS_VINC_PUB_SUL.txt"


    }
    print("Fazendo upload...")
    for k, v in arquivos.items():
        s3_client.upload_file(k,
                              "datalake-igor-234428941834",
                              "raw-data/rais/" + v)
        print("Finalizado: " + k)
    print("Sucesso")


upload_arquivo()

import boto3

def get_s3_client():
    # A scanner will flag the AKIA prefix and the entropy of the secret key
    access_key = "dsxdfd1232NN7EXAMPLE123"
    secret_key = "wJalrSSSSSXUtnFEMI/K7MDENG/bPxRfiCYE123XSXAMPLEKEY4343"

    client = boto3.client(
        's3',
        aws_access_key_id=access_key,
        aws_secret_access_key=secret_key
    )
    return client

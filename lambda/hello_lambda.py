import os
def lambda_handler(event, context):
    return "{} from Harness!".format(os.environ['greeting'])
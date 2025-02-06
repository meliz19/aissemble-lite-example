from ingest_data import data_ingest

def load_data():
    return data_ingest()

def process_data(data):
    return 2 * data

def run():
    ingested_data = load_data()
    processed_data = process_data(ingested_data)
    return processed_data
import os

from edotenv import save_edotenv
from getpass import getpass
from sqlalchemy import create_engine
from sqlalchemy.engine.url import URL

# Run Function ----

def run():

    # Display title
    title = 'ICD Upload Database Login'
    divider = '=' * len(title)
    print(f'\n{title}\n{divider}\n')

    # Prompt user for database connection details
    url = URL.create(
        drivername='postgresql',
        host=input('Host: '),
        port=input('Port (5432): ') or '5432',
        database=input('Database: '),
        username=input('User: '),
        password=getpass('Password: ')
    )

    # Check that the user can be logged in
    print('\nLogging in...')
    conn = create_engine(url).connect()
    conn.close()
    print('\nLogin Successful!')

    # Set icd env var
    os.environ['ICD_UPLOAD_DB_URL'] = str(url)
    
    # Encrypt connection details
    save_edotenv(['ICD_UPLOAD_DB_URL'])

    # Display completion
    print('\nLogin Saved!\n')

# Run ---

if __name__ == "__main__":
    run()
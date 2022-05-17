import os

from edotenv import save_edotenv
from getpass import getpass
from sqlalchemy import create_engine
from sqlalchemy.engine.url import URL

# Run Function ----

def run():

    # Display title
    title = 'ICD Database Login'
    divider = '=' * len(title)
    print(f'\n{title}\n{divider}\n')
    evars = []

    # Prompt user for database connection details
    url = URL.create(
        drivername=input('Driver: ') or 'postgresql',
        host=input('Host: '),
        port=input('Port: ') or '5432',
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
    os.environ['ICD_DB_URL'] = str(url)
    evars.append('ICD_DB_URL')
    
    # Encrypt connection details
    save_edotenv(evars)

    # Display completion
    print('\nLogin Saved!\n')

# Run ---

if __name__ == "__main__":
    run()
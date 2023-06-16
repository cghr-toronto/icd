import os

from edotenv import save_edotenv
from getpass import getpass
from sqlalchemy import create_engine
from sqlalchemy.engine.url import URL

# Run Function ----

def run():
    
    # Display upload db title
    title = '\nUpload Database Login'
    divider = '=' * len(title)
    print(f'\n{title}\n{divider}\n')
    evars = []

    # Prompt user for upload database connection details
    uurl = URL.create(
        'postgresql',
        host=input('Host: '),
        port=input('Port (5432): ') or '5432',
        database=input('Database: '),
        username=input('User: '),
        password=getpass('Password: ')
    )

    # Check that the user can be logged in
    print('\nLogging in...')
    conn = create_engine(uurl).connect()
    conn.close()
    print('\nLogin Successful!')

    # Set upload env var
    os.environ['UPLOAD_DB_URL'] = uurl.render_as_string(hide_password=False)
    evars.append('UPLOAD_DB_URL')
    
    # Add whether upload database is Open Mortality or not
    is_om = input('\nIs the upload database for Open Mortality? (y/n): ')
    os.environ['UPLOAD_DB_IS_OM'] = str(is_om.lower() in ['y', 'yes', 'true'])
    evars.append('UPLOAD_DB_IS_OM')

    # Encrypt connection details
    save_edotenv(evars)

    # Display completion
    print('\nLogin Saved!\n')

# Run ---

if __name__ == "__main__":
    run()
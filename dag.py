import datetime as dt
import os
import sys

from airflow import DAG
from airflow.operators.dummy import DummyOperator

BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
CODE_DIR_PATH = os.path.join(BASE_DIR, 'lib')
sys.path.append(CODE_DIR_PATH)

from CustomOperators import MSSQLOperator


dags = {
    'dag1': {
        'schedule_interval': '@monthly',
        'start_date': dt.datetime(2021, 1, 1),
        'source_connection_id': 'creatio',
        'source_script_path': r'/home/da/airflow/dags/creatio_etl_v2/scripts/get_data.sql',
        'dwh_connection_id': 'greenplum',
        'dwh_script_path': r'/home/da/airflow/dags/creatio_etl_v2/scripts/remove_data.sql',
        'source_table_name': 'dbo.Account',
        'dwh_table_name': 'stage.creatio_account',
        'ts_field_name': 'modifiedon',
    }
}

for dag, config in dags.items():

    default_args = {
        'owner': 'Швейников Андрей',
        'email': ['shveynikovab@st.tech'],
        'retries': 4,
        'retry_delay': dt.timedelta(minutes=30),
    }

    with DAG(
        f"creatio_{config['source_table_name']}",
        default_args=default_args,
        description='Получение данных из CREATIO.',
        start_date=config['start_date'],
        schedule_interval=config['schedule_interval'],
        catchup=True,
        max_active_runs=1
    )   as globals()[dag]:
        
        start = DummyOperator(task_id='Старт')        

        get_mssql_data = MSSQLOperator(
            task_id=f"get_{config['source_table_name']}",
            source_connection_id=config['source_connection_id'],
            source_script_path=config['source_script_path'],
            dwh_connection_id=config['dwh_connection_id'],
            dwh_script_path=config['dwh_script_path'],
            source_table_name=config['source_table_name'],
            dwh_table_name=config['dwh_table_name'],
            ts_field_name=config['ts_field_name'],
        )

        end = DummyOperator(task_id='Завершение')

        start >> get_mssql_data >> end
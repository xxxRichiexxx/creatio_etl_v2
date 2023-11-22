import datetime as dt
import os
import sys
import yaml

from airflow import DAG
from airflow.operators.dummy import DummyOperator

DAG_DIR = os.path.dirname(os.path.abspath(__file__))
LIB_DIR = os.path.join(os.path.dirname(DAG_DIR), 'lib')
sys.path.append(LIB_DIR)

from CustomOperators import MSSQLOperator


with open(
    os.path.join(DAG_DIR, 'config.yaml'),
    'r',
) as file:
    dags = yaml.safe_load(file)

for dag, config in dags.items():

    default_args = {
        'owner': 'Швейников Андрей',
        'email': ['shveynikovab@st.tech'],
        'retries': 4,
        'retry_delay': dt.timedelta(minutes=30),
    }

    with DAG(
        f"creatio.{config['source_table_name']}",
        default_args=default_args,
        description='Получение данных из CREATIO.',
        start_date=config['start_date'],
        schedule_interval=config['schedule_interval'],
        catchup=True,
        max_active_runs=1,
        tags=config['tags'],
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
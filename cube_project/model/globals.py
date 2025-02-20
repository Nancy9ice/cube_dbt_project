from cube import TemplateContext
from cube_dbt import Dbt
import os

template = TemplateContext()

script_dir = os.path.dirname(os.path.realpath(__file__))
dbt_semantics_path = os.path.join(script_dir, 'dbt_semantics', 'manifest.json')

dbt = Dbt.from_file(dbt_semantics_path).filter(paths=['staging/'])

for model in dbt.models:
  print(model.name)

@template.function('dbt_models')
def dbt_models():
  return dbt.models

@template.function('dbt_model')
def dbt_model(name):
  return dbt.model(name)
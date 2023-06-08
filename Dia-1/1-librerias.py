from camelcase import CamelCase

# copiar toda una funcionalidad en en una variable
instancia = CamelCase()

text  = 'usando camelcase'

result = instancia.hump(text)

print(result)
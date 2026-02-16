import pandas as pd

df = pd.read_csv('taxi_zone_lookup.csv')

df.to_parquet("taxi_zone_lookup.parquet", index=False)

print('its done!')
#%%
import plotly.express as px
df = px.data.carshare()
fig = px.scatter_map(df, lat="centroid_lat", lon="centroid_lon",     color="peak_hour", size="car_hours",
                  color_continuous_scale=px.colors.cyclical.IceFire, size_max=15, zoom=10)
fig.show()
# %%
import pandas as pd

train_data = pd.read_csv('../data/NPS_-_Trails_-_Web_Mercator.csv')
train_data.head(5)
# %%
train_data.plot()

#%%
train_data.columns
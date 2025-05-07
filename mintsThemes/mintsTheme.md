
# For python 

``` python 
#Define plotting style
montserrat_path = "Montserrat,Sankofa_Display/Montserrat/static"
font_files = font_manager.findSystemFonts(fontpaths=montserrat_path)
for font_file in font_files:
    font_manager.fontManager.addfont(font_file)


mpl.rcParams.update({
    'font.family': 'Montserrat',
    'font.size': 20,
    'axes.labelsize': 18,
    'xtick.labelsize': 15,
    'ytick.labelsize': 15,
    'xtick.major.size': 3,
    'ytick.major.size': 3,
    'xtick.minor.visible': True,
    'ytick.minor.visible': True,
    'xtick.minor.size': 1,
    'ytick.minor.size': 1,
    'grid.alpha': 0.5,
    'axes.grid': True,
    'grid.linewidth': 2,
    'axes.grid.which': 'both',
    'axes.titleweight': 'bold',
    'axes.titlesize': 18,
    'axes.prop_cycle': cycler('color', ['#3cd184', '#f97171', '#1e81b0', '#66beb2', '#f99192', '#8ad6cc', '#3d6647', '#000080']),
    'image.cmap': 'viridis',
})

```

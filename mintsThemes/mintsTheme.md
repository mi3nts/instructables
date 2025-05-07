
### Initial Colors

| Color | Hex Code |
|:-----:|:--------:|
| <span style="background-color:#FBA85B; padding: 0.5em 1em; display:inline-block;"></span> | `#FBA85B` |
| <span style="background-color:#1E81B0; padding: 0.5em 1em; display:inline-block;"></span> | `#1E81B0` |
| <span style="background-color:#F97171; padding: 0.5em 1em; display:inline-block;"></span> | `#F97171` |
| <span style="background-color:#3CD184; padding: 0.5em 1em; display:inline-block;"></span> | `#3CD184` |

---

### Additional Colors

| Color | Hex Code |
|:-----:|:--------:|
| <span style="background-color:#3CD184; padding: 0.5em 1em; display:inline-block;"></span> | `#3CD184` |
| <span style="background-color:#F97171; padding: 0.5em 1em; display:inline-block;"></span> | `#F97171` |
| <span style="background-color:#1E81B0; padding: 0.5em 1em; display:inline-block;"></span> | `#1E81B0` |
| <span style="background-color:#66BEB2; padding: 0.5em 1em; display:inline-block;"></span> | `#66BEB2` |
| <span style="background-color:#F99192; padding: 0.5em 1em; display:inline-block;"></span> | `#F99192` |
| <span style="background-color:#8AD6CC; padding: 0.5em 1em; display:inline-block;"></span> | `#8AD6CC` |
| <span style="background-color:#3D6647; padding: 0.5em 1em; display:inline-block;"></span> | `#3D6647` |
| <span style="background-color:#000080; padding: 0.5em 1em; display:inline-block;"></span> | `#000080` |


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

# Other Colors

color='#FBA85B'
color='#1e81b0')
color='#f97171')
color='#3cd184'
 ['#3cd184', '#f97171', '#1e81b0', '#66beb2', '#f99192', '#8ad6cc', '#3d6647', '#000080']),
```

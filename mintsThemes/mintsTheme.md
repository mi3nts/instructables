
# Mints Theme 

## Logos 





## Color Table 
| Color | Hex Code | Name |
|:-----:|:--------:|:----:|
| ![](./icons/3CD184.png) | `#3CD184` | Green |
| ![](./icons/F97171.png) | `#F97171` | Red |
| ![](./icons/1E81B0.png) | `#1E81B0` | Blue |
| ![](./icons/66BEB2.png) | `#66BEB2` | Teal |
| ![](./icons/F99192.png) | `#F99192` | Pink |
| ![](./icons/8AD6CC.png) | `#8AD6CC` | Aqua |
| ![](./icons/3D6647.png) | `#3D6647` | Forest |
| ![](./icons/000080.png) | `#000080` | Navy |
| ![](./icons/FBA85B.png) | `#FBA85B` | Orange |

## Use Cases 

### Python 

```Python 
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


module Apexcharts.Legend where

import Apexcharts (Apexoptions)
import Data.Functor.Contravariant (cmap)
import Data.Options (Option, Options, opt)
import Data.Options as Opt

data Legend
data Labels
data Markers
data ItemMargin
data OnItemClick
data OnItemHover

legend :: Option Apexoptions (Options Legend)
legend = cmap Opt.options (opt "legend")

show :: Option Legend Boolean
show = opt "show"

showForSingleSeries :: Option Legend Boolean
showForSingleSeries = opt "showForSingleSeries"

showForNullSeries :: Option Legend Boolean
showForNullSeries = opt "showForNullSeries"

showForZeroSeries :: Option Legend Boolean
showForZeroSeries = opt "showForZeroSeries"

position :: Option Legend String
position = opt "position"

horizontalAlign :: Option Legend String
horizontalAlign = opt "horizontalAlign"

floating :: Option Legend Boolean
floating = opt "floating"

fontSize :: Option Legend String
fontSize = opt "fontSize"

fontFamily :: Option Legend String
fontFamily = opt "fontFamily"

fontWeight :: Option Legend Number
fontWeight = opt "fontWeight"

formatter :: Option Legend Undefined
formatter = opt "formatter"

inverseOrder :: Option Legend Boolean
inverseOrder = opt "inverseOrder"

width :: Option Legend Undefined
width = opt "width"

height :: Option Legend Undefined
height = opt "height"

tooltipHoverFormatter :: Option Legend Undefined
tooltipHoverFormatter = opt "tooltipHoverFormatter"

offsetX :: Option Legend Number
offsetX = opt "offsetX"

offsetY :: Option Legend Number
offsetY = opt "offsetY"

labels :: Option Legend (Options Labels)
labels = cmap Opt.options (opt "labels")

colors :: Option Labels Undefined
colors = opt "colors"

useSeriesColors :: Option Labels Boolean
useSeriesColors = opt "useSeriesColors"

markers :: Option Legend (Options Markers)
markers = cmap Opt.options (opt "markers")

width :: Option Markers Number
width = opt "width"

height :: Option Markers Number
height = opt "height"

strokeWidth :: Option Markers Number
strokeWidth = opt "strokeWidth"

strokeColor :: Option Markers String
strokeColor = opt "strokeColor"

fillColors :: Option Markers Undefined
fillColors = opt "fillColors"

radius :: Option Markers Number
radius = opt "radius"

customHTML :: Option Markers Undefined
customHTML = opt "customHTML"

onClick :: Option Markers Undefined
onClick = opt "onClick"

offsetX :: Option Markers Number
offsetX = opt "offsetX"

offsetY :: Option Markers Number
offsetY = opt "offsetY"

itemMargin :: Option Legend (Options ItemMargin)
itemMargin = cmap Opt.options (opt "itemMargin")

horizontal :: Option ItemMargin Number
horizontal = opt "horizontal"

vertical :: Option ItemMargin Number
vertical = opt "vertical"

onItemClick :: Option Legend (Options OnItemClick)
onItemClick = cmap Opt.options (opt "onItemClick")

toggleDataSeries :: Option OnItemClick Boolean
toggleDataSeries = opt "toggleDataSeries"

onItemHover :: Option Legend (Options OnItemHover)
onItemHover = cmap Opt.options (opt "onItemHover")

highlightDataSeries :: Option OnItemHover Boolean
highlightDataSeries = opt "highlightDataSeries"



# ---
# jupyter:
#   jupytext_format_version: '1.1'
#   jupytext_formats: py:percent
#   kernelspec:
#     display_name: Python 3
#     language: python
#     name: python3
#   language_info:
#     codemirror_mode:
#       name: ipython
#       version: 3
#     file_extension: .py
#     mimetype: text/x-python
#     name: python
#     nbconvert_exporter: python
#     pygments_lexer: ipython3
#     version: 3.6.6
#   toc:
#     nav_menu: {}
#     number_sections: true
#     sideBar: true
#     skip_h1_title: false
#     title_cell: Table of Contents
#     title_sidebar: Contents
#     toc_cell: false
#     toc_position: {}
#     toc_section_display: true
#     toc_window_display: false
#   varInspector:
#     cols:
#       lenName: 16
#       lenType: 16
#       lenVar: 40
#     kernels_config:
#       python:
#         delete_cmd_postfix: ''
#         delete_cmd_prefix: 'del '
#         library: var_list.py
#         varRefreshCmd: print(var_dic_list())
#       r:
#         delete_cmd_postfix: ') '
#         delete_cmd_prefix: rm(
#         library: var_list.r
#         varRefreshCmd: 'cat(var_dic_list()) '
#     oldHeight: 122
#     position:
#       height: 40px
#       left: 1650px
#       right: 20px
#       top: 120px
#       width: 250px
#     types_to_exclude:
#     - module
#     - function
#     - builtin_function_or_method
#     - instance
#     - _Feature
#     varInspector_section_display: none
#     window_display: true
# ---

# %% {"ExecuteTime": {"start_time": "2018-10-12T13:20:05.617458Z", "end_time": "2018-10-12T13:20:07.330457Z"}}
import pandas as pd
import altair as alt
alt.renderers.enable('notebook')

# %% {"ExecuteTime": {"start_time": "2018-10-12T13:34:37.753362Z", "end_time": "2018-10-12T13:34:38.491367Z"}}
tchrs = pd.read_stata("teacher_data.dta",convert_categoricals=True)
csos = pd.read_stata("cso_data.dta",convert_categoricals=True)
dirs = pd.read_stata("director_data.dta",convert_categoricals=True)

# %% {"ExecuteTime": {"start_time": "2018-10-12T13:34:39.150869Z", "end_time": "2018-10-12T13:34:39.156361Z"}}
print(f"The Teacher dataset contains {tchrs.shape[0]} records\nThe CSO dataset contains {csos.shape[0]} records\nThe Director dataset contains {dirs.shape[0]} records")

# %% {"ExecuteTime": {"start_time": "2018-10-12T13:38:15.784758Z", "end_time": "2018-10-12T13:38:15.821761Z"}}
dirs.pivot_table(index="designation")

# %% {"ExecuteTime": {"start_time": "2018-10-12T13:36:19.306334Z", "end_time": "2018-10-12T13:36:19.406830Z"}}
?pd.pivot

# %% {"ExecuteTime": {"start_time": "2018-10-12T13:32:40.336427Z", "end_time": "2018-10-12T13:32:40.344930Z"}}
chdir_links = alt.Chart(dirs).mark_bar().encode(
x = "designation",
y = "get_link_yn:O")

# %% {"ExecuteTime": {"start_time": "2018-10-12T13:32:42.006069Z", "end_time": "2018-10-12T13:32:42.112060Z"}}
chdir_links

# %% {"ExecuteTime": {"start_time": "2018-10-12T08:05:19.437595Z", "end_time": "2018-10-12T08:05:19.514605Z"}}
tchrs.head()

# %% {"ExecuteTime": {"start_time": "2018-10-12T08:38:15.873337Z", "end_time": "2018-10-12T08:38:16.116390Z"}}
import altair as alt
from vega_datasets import data

iris = data.iris()

alt.Chart(iris).mark_point().encode(
    x='petalLength',
    y='petalWidth',
    color='species'
)

# %% {"ExecuteTime": {"start_time": "2018-10-09T12:31:21.547815Z", "end_time": "2018-10-09T12:31:21.643847Z"}}
instruments = {"cso":"CSO_Data", "tchr": "Teacher_Data", "dir":"Director_Data"}

for instrument in instruments.keys():
    instrument = pd.read_excel(f"{src}/Consolidated Data 2018-10-09.xlsm", sheet_name=f"{instruments[instrument]}")


# %% {"ExecuteTime": {"start_time": "2018-10-09T13:34:42.831416Z", "end_time": "2018-10-09T13:34:42.867973Z"}}
instruments.keys()

# %% {"ExecuteTime": {"start_time": "2018-10-09T12:28:02.205561Z", "end_time": "2018-10-09T12:28:02.282560Z"}}
cso_data.head()

# %% {"ExecuteTime": {"start_time": "2018-10-12T08:22:10.887478Z", "end_time": "2018-10-12T08:22:10.891486Z"}}
pd.set_option('display.max_colwidth', -1)

# %% {"ExecuteTime": {"start_time": "2018-10-12T08:22:14.252196Z", "end_time": "2018-10-12T08:22:14.270194Z"}}
csos[csos.tang_nonobs_nowhynot!=""].tang_nonobs_nowhynot

# %%


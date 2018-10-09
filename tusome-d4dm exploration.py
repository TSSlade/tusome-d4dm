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

# %% {"ExecuteTime": {"start_time": "2018-10-09T12:16:21.567130Z", "end_time": "2018-10-09T12:16:31.976628Z"}}
import pandas as pd
import altair as alt

# %% {"ExecuteTime": {"start_time": "2018-10-09T12:27:27.444443Z", "end_time": "2018-10-09T12:27:27.448945Z"}}
# Just comment out the ones that're not you
user = "tim"
# user = "lucy"
# user="carmen"
if user=="tim":
    src = "C:/Dropbox/Kenya Tusome/other/Google.org Grant Research/data"

# %% {"ExecuteTime": {"start_time": "2018-10-09T12:31:21.547815Z", "end_time": "2018-10-09T12:31:21.643847Z"}}
instruments = {"cso":"CSO_Data", "tchr": "Teacher_Data", "dir":"Director_Data"}

for instrument in instruments.keys():
    instrument = pd.read_excel(f"{src}/Consolidated Data 2018-10-09.xlsm", sheet_name=f"{instruments[instrument]}")


# %% {"ExecuteTime": {"start_time": "2018-10-09T13:34:42.831416Z", "end_time": "2018-10-09T13:34:42.867973Z"}}
instruments.keys()

# %% {"ExecuteTime": {"start_time": "2018-10-09T12:28:02.205561Z", "end_time": "2018-10-09T12:28:02.282560Z"}}
cso_data.head()

# %%


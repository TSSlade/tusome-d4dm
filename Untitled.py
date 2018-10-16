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
#     types_to_exclude:
#     - module
#     - function
#     - builtin_function_or_method
#     - instance
#     - _Feature
#     window_display: true
# ---

# %% {"ExecuteTime": {"start_time": "2018-10-12T13:19:19.056017Z", "end_time": "2018-10-12T13:19:21.190017Z"}}
import altair as alt
print(alt.renderers.active)

# %% {"ExecuteTime": {"start_time": "2018-10-12T12:11:24.995094Z", "end_time": "2018-10-12T12:11:25.001595Z"}}
import IPython
IPython.__version__

# %% {"ExecuteTime": {"start_time": "2018-10-12T13:19:26.111016Z", "end_time": "2018-10-12T13:19:26.321520Z"}}
alt.renderers.enable("notebook")

# %% {"ExecuteTime": {"start_time": "2018-10-12T13:19:27.814519Z", "end_time": "2018-10-12T13:19:27.883018Z"}}
import altair as alt
from vega_datasets import data

iris = data.iris()

alt.Chart(iris).mark_point().encode(
    x='petalLength',
    y='petalWidth',
    color='species'
)

# %%


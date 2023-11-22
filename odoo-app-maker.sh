#!/bin/bash
################################################################################
# Script for creating Odoo App template
# Author: Piotr Cierkosz
#-------------------------------------------------------------------------------
# This script will create template/skeleton for your Odoo Apps
# Version 1.0 - 11/22/2023 - basic folders
################################################################################

#-------------------------------------------------
# Folders
#-------------------------------------------------

echo -e "\n---- Creating folders ----"
mkdir -p App
#This folder will hold your app - rename it as you wish
mkdir -p App/doc
#This folder contains changelog information as well as basic technical information
mkdir -p App/images
#Folder that keeps app cover photo
mkdir -p App/data
#demo and data xml
mkdir -p App/models
#models definition
mkdir -p App/controllers
#contains controllers (HTTP routes)
mkdir -p App/views
#contains the views and templates
mkdir -p App/static
#contains the web assets, separated into css/, js/, img/, lib/, …
mkdir -p App/static/description
#module description (this is displayed in Odoo app store as well as in the app)
#wizard/ : regroups the transient models (models.TransientModel) and their views
#report/ : contains the printable reports and models based on SQL views. Python objects and XML views are included in this directory
#tests/ : contains the Python tests
#To learn more Coding guidelines visit https://www.odoo.com/documentation/17.0/contributing/development/coding_guidelines.html

echo "Folders created"


#-------------------------------------------------
# Files
#-------------------------------------------------

# Create the "__manifest__.py" file inside the "App" folder
# Manifest is based on https://www.odoo.com/documentation/17.0/developer/reference/backend/module.html
echo "{
    'name': 'A Module',
    'version': '1.0',
    'depends': ['base'],
    'author': 'Author Name',
    'category': 'Category',
    'description': '''
        Description text
    ''',
    # data files always loaded at installation
    'data': [
        'views/mymodule_view.xml',
    ],
    # data files containing optionally loaded demonstration data
    'demo': [
        'demo/demo_data.xml',
    ],
}" > App/__manifest__.py

echo "__manifest__.py file created"

# Create the "LICENSE" file

echo "Odoo Proprietary License v1.0

This software and associated files (the \"Software\") may only be used (executed,
modified, executed after modifications) if you have purchased a valid license
from the authors, typically via Odoo Apps, or if you have received a written
agreement from the authors of the Software (see the COPYRIGHT file).

You may develop Odoo modules that use the Software as a library (typically
by depending on it, importing it and using its resources), but without copying
any source code or material from the Software. You may distribute those
modules under the license of your choice, provided that this license is
compatible with the terms of the Odoo Proprietary License (For example:
LGPL, MIT, or proprietary licenses similar to this one).

It is forbidden to publish, distribute, sublicense, or sell copies of the Software
or modified copies of the Software.

The above copyright notice and this permission notice must be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
DEALINGS IN THE SOFTWARE." > App/LICENSE

echo "LICENSE added to App"
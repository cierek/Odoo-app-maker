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
#--------------------------------------------------

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

# RBMs




## Contents

- [Overview](#overview)
- [System Requirements](#system-requirements)
- [Installation Guide](#installation-guide)
- [Demo](#demo)
- [Instructions for use](#instructions-for-use)
- [Pseudocode](#Pseudocode)


# Overview

Previous raster-based modeling attempts to calculate accessibility could bring considerable inaccuracies, with an average error of 23.81% for travel time-based accessibility estimation of 215 urban road networks worldwide and a 65.14% error in post-disaster accessibility assessment of an earthquake-prone city. Here we propose a transportation network rasterization model for remarkably accurate accessibility assessment. Its high accuracy and robustness, as demonstrated by an empirical analysis of urban road networks, a theoretical analysis of lattices and simulations of random planar graphs, are a consequence of its novel local connection mechanism in combination with the hierarchical structure and edge density range of real networks. Successful applications in accurately mapping large-scale multimodal accessibility at a national scale and assessing post-earthquake accessibility demonstrate its utility to support many sustainability-related research and policy needs.

The RBMs aims to calculate the accessibility estimation error of the 35 RBMs in 215 urban road networks worldwide; test the robustness of the OLC-RBM and the TMS-RBM to changes in the cell configuration, traffic condition, accessibility index and area size; calculate the accessibility estimation error of the OLC-RBM and the TMS-RBM in accurately mapping the multimodal accessibility to healthcare facilities in China, estimating the car-metro multimodal accessibility under peak traffic conditions in Wuhan, as well as precisely estimate the post-disaster transportation accessibility of an earthquake-prone city.


# System Requirements

## Hardware Requirements

When applying the RBMs in accessibility estimation of urban road networks, a normal laptap (for example, RAM: 16.0 GB; CPU: 8 cores, 3.20 GHz/core) is enough.

When applying the RBMs in accessibility estimation of Chinese road network, a high-performance computer with large RAM is required, and we recommend a computer with the following specs, RAM: 96+ GB; CPU: 56+ cores, 2.6+ GHz/core

## Software Requirements

### OS Requirements

The package development version is tested on *Windows* operating systems. The developmental version of the package has been tested on the following systems:

Windows: Windows Server 2012 R2 Standard 

Before setting up the RBMs, users should have Matlab version R2017a or higher.


# Installation Guide

(1)	Install Matlab version R2017a or higher.

(2)	Download matlab.bgl, and add this folder to the Matlab search path.

(3)	Download RBMs.

(4) Download 'China_data', 'friction_surface_2015_v1.0', 'GHS_POP_E2015_GLOBE_R2019A_4326_30ss_V1_0' from the paper “A Method for Rasterizing Transportation Networks to Support Sustainability Decision-Making”. And put the avove three folders in RBMs.

The installation process can take as long as 30 minutes depending on your laptop model


# Demo

## Instructions to run on data

Set city_id=178, run ‘main_calculate_error_time_for_35_RBMs’ to get the accessibility estimation error for 35 RBM in assessing travel time-based accessibility
 

## Expected output

rs1_error_time_TMS: the accessibility estimation error for TMS-RBM (ID=1);

rs1_error_time_LC_MS: the accessibility estimation error for LC&MS-RBM (ID=2);

rs1_error_time_NN_RN_rand: the accessibility estimation error for NN&RN-RBM with randomly selected representative nodes (ID=3);

rs1_error_time_NN_RN: the accessibility estimation error for 15 NN&RN-RBM (ID=4:18);

rs1_error_time_LC_RN: the accessibility estimation error for 15 LC&RN-RBM (ID=19);

rs1_error_time_LC_RN_rand: the accessibility estimation error for LC&RN-RBM with randomly selected representative nodes (ID=20:34);

rs1_error_time_HB: the accessibility estimation error for HB-RBM.


Detailed information of these 35 RBMs are provided in the paper “A Method for Rasterizing Transportation Networks to Support Sustainability Decision-Making”. 
Note that the estimation error for all NN&RN-RBMs and LC&RN-RBMs may change slightly at different run, as the representative nodes are randomly selected from the nodes that meet the requirements.


## Expected run time for demo on a "normal" desktop computer
This demo can take as long as 10 minutes depending on your laptop model


# Instructions for use

S1: For a given city, run ‘main_calculate_error_time_for_35_RBMs’ to get the accessibility estimation error for 35 RBM in assessing travel time-based accessibility

S2: For a given city, run ‘main_calculate_error_dist_for_35_RBMs’ to get the accessibility estimation error for 35 RBM in assessing travel distance-based accessibility 

S3: For a given city, run ‘main_robust_test_for_OLCRBM_TMSRBM’ to get the accessibility estimation error for OLC-RBM and TMS-RBM under different raster sizes, raster centers, road speeds and regional scales

S4: Run ‘main_create_dilluted_DT’ to get random graphs with different edge densities; modify the folder name (filename) as the path of the random graph, and run ‘main_calculate_error_time_for_35_RBMs’ to get the accessibility estimation error for 35 RBMs

S5: Run ‘main_calculation_population_proportion_under_earthqueke_Qujing’ to get the accessibility estimation error for OLC-RBM and TMS-RBM in Qujing under earthquake

S6: Run ‘main_calculation_integrated_accessibility_Wuhan’ to get the accessibility estimation error for OLC-RBM and TMS-RBM in Wuhan integrated_car_metro system

S7: Run ‘main_calculate_error_time_in_China’ to get the accessibility estimation error for OLC-RBM and TMS-RBM in assessing healthcare accessibility in China


# Implementation procedures

Pseudocode of calculating the accessibility estimation error for 35 RBMs：

1: Input city_id and filename

2: Generate raster network, compute and save net_raster_info and area_raster_info

3: Compute travel time-based accessibility derived from the VBM, save it as net_r2r

4: Compute the average accessibility derived from the VBM, save it as aver_acc

5: Compute node betweenness for all road nodes, save it as Bn

6: Compute 16 types of representative nodes for the LC&RN-RBM, save it as raster_typical_nodes_LC_RN

7: Compute 16 types of representative nodes for the NN&RN-RBM, save it as raster_typical_nodes_NN_RN

8: Get local transportation network information for all raster, save it as node_pair

9: Calculate accessibility estimation error for the LC&RN-RBM, save it as rs1_error_time_LC_RN, and rs1_error_time_LC_RN_rand

10: Calculate accessibility estimation error for the NN&RN-RBM, save it as rs1_error_time_NN_RN, and rs1_error_time_NN_RN_rand

11: Calculate accessibility estimation error for the LC&MS-RBM, save it as rs1_error_time_LC_MS

12: Calculate accessibility estimation error for the TMS-RBM, save it as rs1_error_time_TMS




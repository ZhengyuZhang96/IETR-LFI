# IETR-LFI database

Zhengyu Zhang, Shishun Tian, Jinjia Zhou, Luce Morin, and Lu Zhang.

Open resources of our TCSVT2025 paper "A New Benchmark Database and Objective Metric for Light Field Image Quality Evaluation". Please refer to our [paper](https://ieeexplore.ieee.org/abstract/document/10735251/).

### Get access to the IETR-LFI database
Please download the full database on [Baidu drive](https://pan.baidu.com/s/1ZybR5helpGpvDOy6WJTK7w) (code: GZHU).

The database contains 10 reference light field images with 12 distorted versions for each, and their corresponding subjective quality scores.

The structure of the database is shown as follows:

    ------ IETR-LFI
          ------ Score_shift.txt
          ------ IETR-LFI
               ------ R1
                    -------- R1
                    -------- R1A1
                    -------- R1A1S1
                    -------- R1A1S2
                    -------- R1A2
                    -------- R1A2S1
                    -------- R1A2S2
                    -------- R1S1
                    -------- R1S1A1
                    -------- R1S1A2
                    -------- R1S2
                    -------- R1S2A1
                    -------- R1S2A2
                ------ R2
                    -------- ...
                ...
                ------ R10
                    -------- ...


# SAB metric

### Run demo
Please run the following command using MATLAB (The demo code uses a distorted LFI (ID:R1A1S2) from the ITER-LFI database as an example):
```
  $ run_demo.m
```

### Report performance 
Please run the following command to report the performance in our paper.
```
  $ Report_Result_IETR_LFI.m
```

### Citation
If you find this work helpful, please consider citing:
```
@article{IETR-LFI,
  title        = {A New Benchmark Database and Objective Metric for Light Field Image Quality Evaluation},
  author       = {Zhang, Zhengyu and Tian, Shishun and Zhou, Jinjia and Morin, Luce and Zhang, Lu},
  journal      = {IEEE Transactions on Circuits and Systems for Video Technology},
  year         = {2025},
  doi          = {10.1109/TCSVT.2024.3486336}
}
```

## Contact
For some reasons, here we only provide the code of SAB metric with obfuscated pcode files. 

If you want to get the full code, feel free to contact [zhengyuzhang@gzhu.edu.cn](zhengyuzhang@gzhu.edu.cn) and we will send you the full code within 2 days.

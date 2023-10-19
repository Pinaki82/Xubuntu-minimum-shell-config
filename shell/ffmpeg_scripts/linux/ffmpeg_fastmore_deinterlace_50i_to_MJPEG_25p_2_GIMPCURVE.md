Ref:

https://github.com/sinf/gimp-curves-to-ffmpeg

Download the code:

https://github.com/sinf/gimp-curves-to-ffmpeg/blob/main/gimp-to-ffmpeg.py

https://video.stackexchange.com/questions/16352/converting-gimp-curves-files-to-photoshop-acv-for-ffmpeg

https://video.stackexchange.com/questions/20962/ffmpeg-color-correction-gamma-brightness-and-saturation

```
python gimp-to-ffmpeg.py input.exportedGIMPcurve.txt > output.ffmpegCurveNameOrNumber.txt
```

Copy contents of `output.ffmpegCurveNameOrNumber.txt` to the clipboard.

**FFMPEG:** (Windows Batch File Example)

```batch
@ECHO OFF
set path="C:\Program Files\ffmpeg-20160522-git-566be4f-win64-shared\bin"; %path%;
@ECHO ON

for %%A in ("*.*") DO ffmpeg -hwaccel dxva2 -i "%%A"  -c:v mjpeg -q:v 0 -crf 0 -preset ultrafast -filter:v "yadif=0:-1:1, scale=trunc(iw/2)*2:trunc(ih/2)*2, curves=m=0.0/0.0 0.15315315315315314/0.03515625 0.3363363363363363/0.16015625 0.5285285285285286/0.4609375 0.6816816816816818/0.69140625 0.7837837837837838/0.8125 1.0/1.0:r=0.0/0.0 1.0/1.0:g=0.0/0.0 1.0/1.0:b=0.0/0.0 1.0/1.0" -c:a pcm_s16le -r 25 "%%A.MJPEG.AVI"
cmd
```

Bash SHELL script:

```bash
#!/bin/bash

# Color Grading with Photoshop Curve Preset (*.acv) files
# https://askubuntu.com/questions/1011550/how-can-i-convert-all-video-files-in-nested-folders-batch-conversion
# Change the directories and quality level (lower=better):
inputfolder="/media/sf_ffmpeg_linux_tst"
outputfolder="/media/sf_ffmpeg_linux_tst"
codecoption=mjpeg
audiocodec=pcm_s16le
audiosamplerate=48000
audiochannel=2
audiobitrate=384k
videoquality=0
constantratefactor=0 #The range of the CRF scale is 0–51, where 0 is lossless, 23 is the default, and 51 is worst quality possible. A lower value generally leads to higher quality, and a subjectively sane range is 17–28.
framerateconversionratio_at_output=25
SPEED=ultrafast #superfast, veryfast, faster, fast, medium, slow, slower, veryslow
# https://superuser.com/questions/714804/converting-video-from-1080p-to-720p-with-smallest-quality-loss-using-ffmpeg
# https://www.macxdvd.com/mac-dvd-video-converter-how-to/ffmpeg-avi-to-mp4-free.htm
# https://superuser.com/questions/1556953/why-does-preset-veryfast-in-ffmpeg-generate-the-most-compressed-file-compared

for inputfile in "$inputfolder"/*.* ; do
    outputfile="$outputfolder/$(basename "${inputfile%}").AVI"
    ffmpeg -i "$inputfile" -c:v $codecoption -c:a $audiocodec -ar $audiosamplerate \
    -ac $audiochannel -ab $audiobitrate \
    -q:v $videoquality -preset $SPEED -crf $constantratefactor \
    -filter:v "yadif=0:-1:1, scale=trunc(iw/2)*2:trunc(ih/2)*2, curves=m=0.0/0.0 0.15915915915915912/0.08203125 0.3243243243243243/0.25390625 0.4924924924924926/0.4765625 0.6486486486486487/0.671875 0.7747747747747747/0.81640625 1.0/1.0:r=0.0/0.0 1.0/1.0:g=0.0/0.0 1.0/1.0:b=0.0/0.0 1.0/1.0" \
    -r $framerateconversionratio_at_output "$outputfile"
done
```

NOTE: Paste the filter curve's parameters from the clipboard to the BATCH FILE as shown above:

```
curves=m=0.0/0.0 0.15315315315315314/0.03515625 0.3363363363363363/0.16015625 0.5285285285285286/0.4609375 0.6816816816816818/0.69140625 0.7837837837837838/0.8125 1.0/1.0:r=0.0/0.0 1.0/1.0:g=0.0/0.0 1.0/1.0:b=0.0/0.0 1.0/1.0
```

GIMP Side:

Open the video file with a media player. Export a frame from the video file as an image. Open the image file in GIMP.

Menu Bar -> Colors -> Curves... -> (Adjust only the value channel curve) -> Presets _ Manage Presets -> Export Current Settings to File... -> Choose a different location (folder) on your drive (not the GIMP\2.10\curves) and save as a text file.

The GIMP exported curve should look like this:

```
# GIMP 'Curves' settings

(time 0)
(linear no)
(channel value)
(curve
    (curve-type smooth)
    (points 14 0 0 0.15915915915915912 0.08203125 0.32432432432432429 0.25390625 0.49249249249249261 0.4765625 0.64864864864864868 0.671875 0.77477477477477474 0.81640625 1 1)
    (point-types 7 smooth smooth smooth smooth smooth smooth smooth)
    (n-samples 256)
    (samples 256 0 0.0014970518670727837 0.0029960141087983241 0.0044987970998293771 0.0060073112148186988 0.0075234668284190464 0.0090491743152831747 0.010586344050063839 0.0121368864074138 0.013702711761985812 0.015285730488432632 0.016887852961407015 0.01851098955556172 0.020157050645549495 0.021827946606023101 0.023525587811635308 0.025251884637038844 0.02700874745688649 0.028798086645830993 0.030621812578525111 0.032481835629621592 0.034380066173773212 0.036318414585632709 0.038298791239852845 0.040323106511086379 0.042393270773986053 0.044511194403204654 0.046678787773394903 0.048897961259209574 0.051170625235301442 0.053498690076323227 0.055884066156927703 0.058328663851767625 0.060834393535495745 0.063403165582764834 0.066036890368227644 0.068737478266536908 0.071506839652345416 0.074346884900305901 0.07725952438507111 0.080246668481293831 0.08203125 0.085135790790657348 0.088308181664988245 0.091546900131432921 0.094850423698431677 0.098217229874424744 0.10164579616785231 0.10513460008715468 0.10868211914077212 0.11228683083714486 0.1159472126847131 0.11966174219191714 0.12342889686719724 0.12724715421899363 0.13111499175574651 0.13503088698589619 0.13899331741788293 0.14300076056014693 0.14705169392112849 0.15114459500926777 0.15527794133300515 0.15945021040078078 0.16365987972103491 0.1679054268022078 0.17218532915273976 0.17649806428107101 0.18084210969564171 0.18521594290489227 0.18961804141726277 0.19404688274119358 0.19850094438512486 0.20297870385749694 0.20747863866675004 0.2119992263213244 0.21653894432966023 0.2210962702001979 0.2256696814413775 0.23025765556163938 0.23485867006942374 0.23947120247317094 0.24409373028132109 0.24872473100231449 0.25390625 0.25857632664559999 0.26330196971661257 0.26808093126729682 0.27291096335191267 0.27778981802471941 0.28271524733997655 0.28768500335194364 0.29269683811488012 0.29774850368304573 0.30283775211069958 0.30796233545210167 0.31312000576151117 0.31830851509318769 0.32352561550139081 0.32876905904037995 0.33403659776441469 0.33932598372775435 0.34463496898465873 0.34996130558938726 0.35530274559619934 0.36065704105935448 0.36602194403311239 0.37139520657173236 0.37677458072947401 0.38215781856059694 0.3875426721193605 0.39292689346002418 0.39830823463684772 0.40368444770409034 0.40905328471601177 0.4144124977268715 0.41975983879092893 0.42509305996244373 0.43040991329567524 0.43570815084488307 0.44098552466432672 0.4462397868082657 0.45146868933095963 0.45666998428666783 0.46184142372964981 0.46698075971416531 0.47208574429447364 0.4765625 0.48161347932766346 0.48665858873735607 0.49169769688873916 0.49673067244147379 0.50175738405522119 0.50677770038964243 0.51179149010439906 0.5167986218591516 0.52179896431356187 0.52679238612729051 0.53177875595999924 0.536757942471349 0.54172981432100098 0.54669424016861623 0.55165108867385615 0.55660022849638202 0.56154152829585458 0.56647485673193554 0.57140008246428542 0.57631707415256617 0.58122570045643851 0.58612583003556373 0.59101733154960301 0.59590007365821751 0.60077392502106841 0.60563875429781688 0.61049443014812421 0.61534082123165157 0.62017779620806013 0.62500522373701084 0.62982297247816521 0.6346309110911843 0.6394289082357294 0.64421683257146145 0.64899455275804174 0.65376193745513156 0.65851885532239207 0.66326517501948423 0.671875 0.67660736174722125 0.68135964383725878 0.68612834226232289 0.69090995301462521 0.69570097208637527 0.70049789546978414 0.70529721915706245 0.71009543914042073 0.71488905141206938 0.71967455196421903 0.72444843678908111 0.72920720187886479 0.73394734322578192 0.73866535682204237 0.74335773865985699 0.74802098473143641 0.75265159102899104 0.75724605354473173 0.76180086827086901 0.76631253119961351 0.77077753832317564 0.77519238563376613 0.77955356912359552 0.78385758478487444 0.78810092860981362 0.79228009659062348 0.79639158471951466 0.80043188898869799 0.80439750539038368 0.80828492991678269 0.81209065856010532 0.8158111873125623 0.81640625 0.82005648950182408 0.8236828297090294 0.82728569412444219 0.83086550625088862 0.83442268959119448 0.83795766764818613 0.84147086392468962 0.84496270192353096 0.84843360514753641 0.85188399709953178 0.85531430128234354 0.85872494119879761 0.86211634035172002 0.86548892224393692 0.86884311037827411 0.87217932825755862 0.87549799938461526 0.87879954726227116 0.88208439539335193 0.88535296728068391 0.88860568642709292 0.89184297633540544 0.89506526050844681 0.89827296244904431 0.90146650566002273 0.90464631364420933 0.90781280990442914 0.91096641794350952 0.91410756126427528 0.91723666336955334 0.92035414776216928 0.92346043794494981 0.9265559574207205 0.92964112969230772 0.93271637826253739 0.93578212663423566 0.93883879831022865 0.94188681679334252 0.9449266055864034 0.94795858819223722 0.95098318811367011 0.95400082885352822 0.95701193391463768 0.96001692679982453 0.96301623101191502 0.96601027005373497 0.96899946742811061 0.9719842466378682 0.97496503118583355 0.97794224457483292 0.98091631030769233 0.98388765188723792 0.98685669281629584 0.98982385659769212 0.99278956673425289 0.9957542467288043 1))
(channel red)
(curve
    (curve-type smooth)
    (points 4 0 0 1 1)
    (point-types 2 smooth smooth)
    (n-samples 256)
    (samples 256 0 0.0039215686274509803 0.0078431372549019607 0.011764705882352943 0.015686274509803921 0.019607843137254898 0.023529411764705879 0.027450980392156859 0.031372549019607843 0.035294117647058816 0.039215686274509803 0.043137254901960791 0.047058823529411764 0.050980392156862737 0.054901960784313725 0.058823529411764712 0.062745098039215685 0.066666666666666666 0.07058823529411766 0.07450980392156864 0.078431372549019621 0.082352941176470587 0.086274509803921567 0.090196078431372534 0.094117647058823528 0.098039215686274508 0.10196078431372547 0.10588235294117647 0.10980392156862745 0.11372549019607843 0.11764705882352938 0.1215686274509804 0.12549019607843137 0.12941176470588237 0.13333333333333336 0.13725490196078433 0.14117647058823532 0.14509803921568629 0.14901960784313723 0.15294117647058825 0.15686274509803921 0.16078431372549021 0.1647058823529412 0.16862745098039217 0.17254901960784311 0.17647058823529413 0.18039215686274507 0.18431372549019609 0.18823529411764706 0.19215686274509805 0.19607843137254902 0.20000000000000007 0.20392156862745101 0.20784313725490197 0.21176470588235291 0.21568627450980393 0.21960784313725493 0.22352941176470589 0.22745098039215686 0.23137254901960783 0.23529411764705882 0.23921568627450979 0.24313725490196075 0.24705882352941175 0.25098039215686274 0.25490196078431371 0.25882352941176473 0.26274509803921575 0.26666666666666672 0.27058823529411768 0.27450980392156865 0.27843137254901962 0.28235294117647064 0.2862745098039215 0.29019607843137252 0.29411764705882348 0.29803921568627445 0.30196078431372542 0.30588235294117649 0.30980392156862746 0.31372549019607843 0.31764705882352934 0.32156862745098053 0.32549019607843144 0.3294117647058824 0.33333333333333331 0.33725490196078434 0.3411764705882353 0.34509803921568633 0.34901960784313729 0.35294117647058826 0.35686274509803917 0.36078431372549019 0.3647058823529411 0.36862745098039224 0.37254901960784315 0.37647058823529411 0.38039215686274508 0.3843137254901961 0.38823529411764712 0.39215686274509809 0.39607843137254906 0.39999999999999997 0.40392156862745099 0.40784313725490196 0.41176470588235292 0.41568627450980383 0.41960784313725485 0.42352941176470582 0.42745098039215684 0.43137254901960786 0.43529411764705883 0.4392156862745098 0.44313725490196076 0.44705882352941184 0.45098039215686281 0.45490196078431377 0.45882352941176474 0.46274509803921571 0.46666666666666667 0.47058823529411764 0.47450980392156861 0.47843137254901957 0.48235294117647054 0.48627450980392145 0.49019607843137247 0.49411764705882355 0.49803921568627452 0.50196078431372548 0.50588235294117645 0.50980392156862742 0.51372549019607838 0.51764705882352946 0.52156862745098043 0.52549019607843139 0.52941176470588236 0.53333333333333333 0.53725490196078429 0.54117647058823526 0.54509803921568634 0.5490196078431373 0.55294117647058827 0.55686274509803924 0.5607843137254902 0.56470588235294117 0.56862745098039214 0.5725490196078431 0.57647058823529407 0.58039215686274515 0.58431372549019611 0.58823529411764708 0.59215686274509804 0.59607843137254901 0.59999999999999998 0.60392156862745094 0.60784313725490191 0.61176470588235299 0.61568627450980395 0.61960784313725492 0.62352941176470589 0.62745098039215685 0.63137254901960782 0.63529411764705879 0.63921568627450975 0.64313725490196083 0.6470588235294118 0.65098039215686287 0.65490196078431384 0.65882352941176481 0.66274509803921577 0.66666666666666663 0.6705882352941176 0.67450980392156867 0.67843137254901964 0.68235294117647061 0.68627450980392157 0.69019607843137254 0.69411764705882351 0.69803921568627447 0.70196078431372544 0.70588235294117663 0.70980392156862759 0.71372549019607845 0.71764705882352942 0.72156862745098038 0.72549019607843135 0.7294117647058822 0.73333333333333328 0.73725490196078436 0.74117647058823533 0.74509803921568629 0.74901960784313726 0.75294117647058822 0.75686274509803919 0.76078431372549016 0.76470588235294112 0.76862745098039231 0.77254901960784317 0.77647058823529425 0.78039215686274521 0.78431372549019607 0.78823529411764703 0.79215686274509811 0.79607843137254897 0.80000000000000004 0.80392156862745101 0.80784313725490198 0.81176470588235294 0.81568627450980391 0.81960784313725488 0.82352941176470584 0.82745098039215681 0.83137254901960789 0.83529411764705874 0.83921568627450982 0.84313725490196068 0.84705882352941175 0.85098039215686272 0.8549019607843138 0.85882352941176465 0.86274509803921573 0.8666666666666667 0.87058823529411766 0.87450980392156863 0.8784313725490196 0.88235294117647056 0.88627450980392164 0.8901960784313725 0.89411764705882357 0.89803921568627443 0.90196078431372551 0.90588235294117636 0.90980392156862755 0.91372549019607852 0.91764705882352937 0.92156862745098023 0.92549019607843142 0.92941176470588238 0.93333333333333335 0.93725490196078431 0.94117647058823528 0.94509803921568625 0.94901960784313721 0.95294117647058818 0.95686274509803926 0.96078431372549011 0.96470588235294119 0.96862745098039216 0.97254901960784312 0.97647058823529409 0.98039215686274506 0.98431372549019591 0.98823529411764721 0.99215686274509807 0.99607843137254914 1))
(channel green)
(curve
    (curve-type smooth)
    (points 4 0 0 1 1)
    (point-types 2 smooth smooth)
    (n-samples 256)
    (samples 256 0 0.0039215686274509803 0.0078431372549019607 0.011764705882352943 0.015686274509803921 0.019607843137254898 0.023529411764705879 0.027450980392156859 0.031372549019607843 0.035294117647058816 0.039215686274509803 0.043137254901960791 0.047058823529411764 0.050980392156862737 0.054901960784313725 0.058823529411764712 0.062745098039215685 0.066666666666666666 0.07058823529411766 0.07450980392156864 0.078431372549019621 0.082352941176470587 0.086274509803921567 0.090196078431372534 0.094117647058823528 0.098039215686274508 0.10196078431372547 0.10588235294117647 0.10980392156862745 0.11372549019607843 0.11764705882352938 0.1215686274509804 0.12549019607843137 0.12941176470588237 0.13333333333333336 0.13725490196078433 0.14117647058823532 0.14509803921568629 0.14901960784313723 0.15294117647058825 0.15686274509803921 0.16078431372549021 0.1647058823529412 0.16862745098039217 0.17254901960784311 0.17647058823529413 0.18039215686274507 0.18431372549019609 0.18823529411764706 0.19215686274509805 0.19607843137254902 0.20000000000000007 0.20392156862745101 0.20784313725490197 0.21176470588235291 0.21568627450980393 0.21960784313725493 0.22352941176470589 0.22745098039215686 0.23137254901960783 0.23529411764705882 0.23921568627450979 0.24313725490196075 0.24705882352941175 0.25098039215686274 0.25490196078431371 0.25882352941176473 0.26274509803921575 0.26666666666666672 0.27058823529411768 0.27450980392156865 0.27843137254901962 0.28235294117647064 0.2862745098039215 0.29019607843137252 0.29411764705882348 0.29803921568627445 0.30196078431372542 0.30588235294117649 0.30980392156862746 0.31372549019607843 0.31764705882352934 0.32156862745098053 0.32549019607843144 0.3294117647058824 0.33333333333333331 0.33725490196078434 0.3411764705882353 0.34509803921568633 0.34901960784313729 0.35294117647058826 0.35686274509803917 0.36078431372549019 0.3647058823529411 0.36862745098039224 0.37254901960784315 0.37647058823529411 0.38039215686274508 0.3843137254901961 0.38823529411764712 0.39215686274509809 0.39607843137254906 0.39999999999999997 0.40392156862745099 0.40784313725490196 0.41176470588235292 0.41568627450980383 0.41960784313725485 0.42352941176470582 0.42745098039215684 0.43137254901960786 0.43529411764705883 0.4392156862745098 0.44313725490196076 0.44705882352941184 0.45098039215686281 0.45490196078431377 0.45882352941176474 0.46274509803921571 0.46666666666666667 0.47058823529411764 0.47450980392156861 0.47843137254901957 0.48235294117647054 0.48627450980392145 0.49019607843137247 0.49411764705882355 0.49803921568627452 0.50196078431372548 0.50588235294117645 0.50980392156862742 0.51372549019607838 0.51764705882352946 0.52156862745098043 0.52549019607843139 0.52941176470588236 0.53333333333333333 0.53725490196078429 0.54117647058823526 0.54509803921568634 0.5490196078431373 0.55294117647058827 0.55686274509803924 0.5607843137254902 0.56470588235294117 0.56862745098039214 0.5725490196078431 0.57647058823529407 0.58039215686274515 0.58431372549019611 0.58823529411764708 0.59215686274509804 0.59607843137254901 0.59999999999999998 0.60392156862745094 0.60784313725490191 0.61176470588235299 0.61568627450980395 0.61960784313725492 0.62352941176470589 0.62745098039215685 0.63137254901960782 0.63529411764705879 0.63921568627450975 0.64313725490196083 0.6470588235294118 0.65098039215686287 0.65490196078431384 0.65882352941176481 0.66274509803921577 0.66666666666666663 0.6705882352941176 0.67450980392156867 0.67843137254901964 0.68235294117647061 0.68627450980392157 0.69019607843137254 0.69411764705882351 0.69803921568627447 0.70196078431372544 0.70588235294117663 0.70980392156862759 0.71372549019607845 0.71764705882352942 0.72156862745098038 0.72549019607843135 0.7294117647058822 0.73333333333333328 0.73725490196078436 0.74117647058823533 0.74509803921568629 0.74901960784313726 0.75294117647058822 0.75686274509803919 0.76078431372549016 0.76470588235294112 0.76862745098039231 0.77254901960784317 0.77647058823529425 0.78039215686274521 0.78431372549019607 0.78823529411764703 0.79215686274509811 0.79607843137254897 0.80000000000000004 0.80392156862745101 0.80784313725490198 0.81176470588235294 0.81568627450980391 0.81960784313725488 0.82352941176470584 0.82745098039215681 0.83137254901960789 0.83529411764705874 0.83921568627450982 0.84313725490196068 0.84705882352941175 0.85098039215686272 0.8549019607843138 0.85882352941176465 0.86274509803921573 0.8666666666666667 0.87058823529411766 0.87450980392156863 0.8784313725490196 0.88235294117647056 0.88627450980392164 0.8901960784313725 0.89411764705882357 0.89803921568627443 0.90196078431372551 0.90588235294117636 0.90980392156862755 0.91372549019607852 0.91764705882352937 0.92156862745098023 0.92549019607843142 0.92941176470588238 0.93333333333333335 0.93725490196078431 0.94117647058823528 0.94509803921568625 0.94901960784313721 0.95294117647058818 0.95686274509803926 0.96078431372549011 0.96470588235294119 0.96862745098039216 0.97254901960784312 0.97647058823529409 0.98039215686274506 0.98431372549019591 0.98823529411764721 0.99215686274509807 0.99607843137254914 1))
(channel blue)
(curve
    (curve-type smooth)
    (points 4 0 0 1 1)
    (point-types 2 smooth smooth)
    (n-samples 256)
    (samples 256 0 0.0039215686274509803 0.0078431372549019607 0.011764705882352943 0.015686274509803921 0.019607843137254898 0.023529411764705879 0.027450980392156859 0.031372549019607843 0.035294117647058816 0.039215686274509803 0.043137254901960791 0.047058823529411764 0.050980392156862737 0.054901960784313725 0.058823529411764712 0.062745098039215685 0.066666666666666666 0.07058823529411766 0.07450980392156864 0.078431372549019621 0.082352941176470587 0.086274509803921567 0.090196078431372534 0.094117647058823528 0.098039215686274508 0.10196078431372547 0.10588235294117647 0.10980392156862745 0.11372549019607843 0.11764705882352938 0.1215686274509804 0.12549019607843137 0.12941176470588237 0.13333333333333336 0.13725490196078433 0.14117647058823532 0.14509803921568629 0.14901960784313723 0.15294117647058825 0.15686274509803921 0.16078431372549021 0.1647058823529412 0.16862745098039217 0.17254901960784311 0.17647058823529413 0.18039215686274507 0.18431372549019609 0.18823529411764706 0.19215686274509805 0.19607843137254902 0.20000000000000007 0.20392156862745101 0.20784313725490197 0.21176470588235291 0.21568627450980393 0.21960784313725493 0.22352941176470589 0.22745098039215686 0.23137254901960783 0.23529411764705882 0.23921568627450979 0.24313725490196075 0.24705882352941175 0.25098039215686274 0.25490196078431371 0.25882352941176473 0.26274509803921575 0.26666666666666672 0.27058823529411768 0.27450980392156865 0.27843137254901962 0.28235294117647064 0.2862745098039215 0.29019607843137252 0.29411764705882348 0.29803921568627445 0.30196078431372542 0.30588235294117649 0.30980392156862746 0.31372549019607843 0.31764705882352934 0.32156862745098053 0.32549019607843144 0.3294117647058824 0.33333333333333331 0.33725490196078434 0.3411764705882353 0.34509803921568633 0.34901960784313729 0.35294117647058826 0.35686274509803917 0.36078431372549019 0.3647058823529411 0.36862745098039224 0.37254901960784315 0.37647058823529411 0.38039215686274508 0.3843137254901961 0.38823529411764712 0.39215686274509809 0.39607843137254906 0.39999999999999997 0.40392156862745099 0.40784313725490196 0.41176470588235292 0.41568627450980383 0.41960784313725485 0.42352941176470582 0.42745098039215684 0.43137254901960786 0.43529411764705883 0.4392156862745098 0.44313725490196076 0.44705882352941184 0.45098039215686281 0.45490196078431377 0.45882352941176474 0.46274509803921571 0.46666666666666667 0.47058823529411764 0.47450980392156861 0.47843137254901957 0.48235294117647054 0.48627450980392145 0.49019607843137247 0.49411764705882355 0.49803921568627452 0.50196078431372548 0.50588235294117645 0.50980392156862742 0.51372549019607838 0.51764705882352946 0.52156862745098043 0.52549019607843139 0.52941176470588236 0.53333333333333333 0.53725490196078429 0.54117647058823526 0.54509803921568634 0.5490196078431373 0.55294117647058827 0.55686274509803924 0.5607843137254902 0.56470588235294117 0.56862745098039214 0.5725490196078431 0.57647058823529407 0.58039215686274515 0.58431372549019611 0.58823529411764708 0.59215686274509804 0.59607843137254901 0.59999999999999998 0.60392156862745094 0.60784313725490191 0.61176470588235299 0.61568627450980395 0.61960784313725492 0.62352941176470589 0.62745098039215685 0.63137254901960782 0.63529411764705879 0.63921568627450975 0.64313725490196083 0.6470588235294118 0.65098039215686287 0.65490196078431384 0.65882352941176481 0.66274509803921577 0.66666666666666663 0.6705882352941176 0.67450980392156867 0.67843137254901964 0.68235294117647061 0.68627450980392157 0.69019607843137254 0.69411764705882351 0.69803921568627447 0.70196078431372544 0.70588235294117663 0.70980392156862759 0.71372549019607845 0.71764705882352942 0.72156862745098038 0.72549019607843135 0.7294117647058822 0.73333333333333328 0.73725490196078436 0.74117647058823533 0.74509803921568629 0.74901960784313726 0.75294117647058822 0.75686274509803919 0.76078431372549016 0.76470588235294112 0.76862745098039231 0.77254901960784317 0.77647058823529425 0.78039215686274521 0.78431372549019607 0.78823529411764703 0.79215686274509811 0.79607843137254897 0.80000000000000004 0.80392156862745101 0.80784313725490198 0.81176470588235294 0.81568627450980391 0.81960784313725488 0.82352941176470584 0.82745098039215681 0.83137254901960789 0.83529411764705874 0.83921568627450982 0.84313725490196068 0.84705882352941175 0.85098039215686272 0.8549019607843138 0.85882352941176465 0.86274509803921573 0.8666666666666667 0.87058823529411766 0.87450980392156863 0.8784313725490196 0.88235294117647056 0.88627450980392164 0.8901960784313725 0.89411764705882357 0.89803921568627443 0.90196078431372551 0.90588235294117636 0.90980392156862755 0.91372549019607852 0.91764705882352937 0.92156862745098023 0.92549019607843142 0.92941176470588238 0.93333333333333335 0.93725490196078431 0.94117647058823528 0.94509803921568625 0.94901960784313721 0.95294117647058818 0.95686274509803926 0.96078431372549011 0.96470588235294119 0.96862745098039216 0.97254901960784312 0.97647058823529409 0.98039215686274506 0.98431372549019591 0.98823529411764721 0.99215686274509807 0.99607843137254914 1))
(channel alpha)
(curve
    (curve-type smooth)
    (points 4 0 0 1 1)
    (point-types 2 smooth smooth)
    (n-samples 256)
    (samples 256 0 0.0039215686274509803 0.0078431372549019607 0.011764705882352943 0.015686274509803921 0.019607843137254898 0.023529411764705879 0.027450980392156859 0.031372549019607843 0.035294117647058816 0.039215686274509803 0.043137254901960791 0.047058823529411764 0.050980392156862737 0.054901960784313725 0.058823529411764712 0.062745098039215685 0.066666666666666666 0.07058823529411766 0.07450980392156864 0.078431372549019621 0.082352941176470587 0.086274509803921567 0.090196078431372534 0.094117647058823528 0.098039215686274508 0.10196078431372547 0.10588235294117647 0.10980392156862745 0.11372549019607843 0.11764705882352938 0.1215686274509804 0.12549019607843137 0.12941176470588237 0.13333333333333336 0.13725490196078433 0.14117647058823532 0.14509803921568629 0.14901960784313723 0.15294117647058825 0.15686274509803921 0.16078431372549021 0.1647058823529412 0.16862745098039217 0.17254901960784311 0.17647058823529413 0.18039215686274507 0.18431372549019609 0.18823529411764706 0.19215686274509805 0.19607843137254902 0.20000000000000007 0.20392156862745101 0.20784313725490197 0.21176470588235291 0.21568627450980393 0.21960784313725493 0.22352941176470589 0.22745098039215686 0.23137254901960783 0.23529411764705882 0.23921568627450979 0.24313725490196075 0.24705882352941175 0.25098039215686274 0.25490196078431371 0.25882352941176473 0.26274509803921575 0.26666666666666672 0.27058823529411768 0.27450980392156865 0.27843137254901962 0.28235294117647064 0.2862745098039215 0.29019607843137252 0.29411764705882348 0.29803921568627445 0.30196078431372542 0.30588235294117649 0.30980392156862746 0.31372549019607843 0.31764705882352934 0.32156862745098053 0.32549019607843144 0.3294117647058824 0.33333333333333331 0.33725490196078434 0.3411764705882353 0.34509803921568633 0.34901960784313729 0.35294117647058826 0.35686274509803917 0.36078431372549019 0.3647058823529411 0.36862745098039224 0.37254901960784315 0.37647058823529411 0.38039215686274508 0.3843137254901961 0.38823529411764712 0.39215686274509809 0.39607843137254906 0.39999999999999997 0.40392156862745099 0.40784313725490196 0.41176470588235292 0.41568627450980383 0.41960784313725485 0.42352941176470582 0.42745098039215684 0.43137254901960786 0.43529411764705883 0.4392156862745098 0.44313725490196076 0.44705882352941184 0.45098039215686281 0.45490196078431377 0.45882352941176474 0.46274509803921571 0.46666666666666667 0.47058823529411764 0.47450980392156861 0.47843137254901957 0.48235294117647054 0.48627450980392145 0.49019607843137247 0.49411764705882355 0.49803921568627452 0.50196078431372548 0.50588235294117645 0.50980392156862742 0.51372549019607838 0.51764705882352946 0.52156862745098043 0.52549019607843139 0.52941176470588236 0.53333333333333333 0.53725490196078429 0.54117647058823526 0.54509803921568634 0.5490196078431373 0.55294117647058827 0.55686274509803924 0.5607843137254902 0.56470588235294117 0.56862745098039214 0.5725490196078431 0.57647058823529407 0.58039215686274515 0.58431372549019611 0.58823529411764708 0.59215686274509804 0.59607843137254901 0.59999999999999998 0.60392156862745094 0.60784313725490191 0.61176470588235299 0.61568627450980395 0.61960784313725492 0.62352941176470589 0.62745098039215685 0.63137254901960782 0.63529411764705879 0.63921568627450975 0.64313725490196083 0.6470588235294118 0.65098039215686287 0.65490196078431384 0.65882352941176481 0.66274509803921577 0.66666666666666663 0.6705882352941176 0.67450980392156867 0.67843137254901964 0.68235294117647061 0.68627450980392157 0.69019607843137254 0.69411764705882351 0.69803921568627447 0.70196078431372544 0.70588235294117663 0.70980392156862759 0.71372549019607845 0.71764705882352942 0.72156862745098038 0.72549019607843135 0.7294117647058822 0.73333333333333328 0.73725490196078436 0.74117647058823533 0.74509803921568629 0.74901960784313726 0.75294117647058822 0.75686274509803919 0.76078431372549016 0.76470588235294112 0.76862745098039231 0.77254901960784317 0.77647058823529425 0.78039215686274521 0.78431372549019607 0.78823529411764703 0.79215686274509811 0.79607843137254897 0.80000000000000004 0.80392156862745101 0.80784313725490198 0.81176470588235294 0.81568627450980391 0.81960784313725488 0.82352941176470584 0.82745098039215681 0.83137254901960789 0.83529411764705874 0.83921568627450982 0.84313725490196068 0.84705882352941175 0.85098039215686272 0.8549019607843138 0.85882352941176465 0.86274509803921573 0.8666666666666667 0.87058823529411766 0.87450980392156863 0.8784313725490196 0.88235294117647056 0.88627450980392164 0.8901960784313725 0.89411764705882357 0.89803921568627443 0.90196078431372551 0.90588235294117636 0.90980392156862755 0.91372549019607852 0.91764705882352937 0.92156862745098023 0.92549019607843142 0.92941176470588238 0.93333333333333335 0.93725490196078431 0.94117647058823528 0.94509803921568625 0.94901960784313721 0.95294117647058818 0.95686274509803926 0.96078431372549011 0.96470588235294119 0.96862745098039216 0.97254901960784312 0.97647058823529409 0.98039215686274506 0.98431372549019591 0.98823529411764721 0.99215686274509807 0.99607843137254914 1))

# end of 'Curves' settings
```

---

Python code (from https://github.com/sinf/gimp-curves-to-ffmpeg/blob/main/gimp-to-ffmpeg.py):

```python
import re
from argparse import ArgumentParser

def read_curves(f):
    points = {}
    for line in f.readlines():
        line=line.strip()
        if line.startswith("(channel "):
            ch=re.match(r'\(channel (\w+)\)', line).group(1)
        elif line.startswith("(points "):
            co = [float(m.group(1)) for m in re.finditer(r'\b([0-9.]+)\b', line)]
            co = list(zip(co[1::2], co[2::2]))
            points[ch] = co
    return points

def ffmpeg_points(points):
    return ' '.join('{0}/{1}'.format(x,y) for x,y in points)

def main():
    ap = ArgumentParser()
    ap.add_argument("input")
    ap.add_argument("-q", "--quote", action='store_true')
    a = ap.parse_args()
    with open(a.input, "r") as f:
        points = read_curves(f)
    ffp=[
        ffmpeg_points(points['value']),
        ffmpeg_points(points['red']),
        ffmpeg_points(points['green']),
        ffmpeg_points(points['blue'])
    ]
    if a.quote:
        print("curves=m='{0}':r='{1}':g='{2}':b='{3}'".format(*ffp))
    else:
        print("curves=m={0}:r={1}:g={2}:b={3}".format(*ffp))

main()
```

---
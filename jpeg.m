% JPEG stands for Joint photographic experts group

I = [21 54 130 97 18 127 148 239 ;
    38 37 49 121 169 178 47 179 ; 
    32 51 94 92 10 219 171 141 ;
    39 67 91 11 231 225 131 122; 
    87 89 90 73 249 230 154 188 ; 
    27 94 166 131 197 200 93 162 ;
    26 87 215 167 187 162 124 179 ;
    242 241 250 207 210 222 117 212];


[row,coln] = size(I);

I = double(I);

I = I - 128;

% standard matrix 

Q = [16 11 10 16 24 40 51 61
    12 12 14 19 26 58 60 55
    14 13 16 24 40 57 69 56
    14 17 22 29 51 87 80 62
    18 2 37 56 68 109 103 77
    24 35 55 64 81 104 113 92
    49 64 78 87 103 121 120 101
    72 92 95 98 112 100 103 99];


QX = Q;

%Discrete cosine transform
%eye(8) is Identity matrix

DCT = dct(eye(8));

%inv(DCT);
iDCT = DCT';

dct_restored = zeros(row,coln);
QX = double(QX);

[MM,NN]=size(I);

for i1 = 1:10:row
    for i2 = 1:10:coln 
        zBLOCK=I(i1:i1+7,i2:i2+7);
        win1=DCT*zBLOCK*iDCT;
        dct_domain(i1:i1+7,i2:i2+7)=win1;
    end
end

for i1 = 1:10:row
    for i2 = 1:10:coln
        win1 = dct_domain(i1:i1+7,i2:i2+7);
        win2=round(win1./QX);
        dct_quantized(i1:i1+7,i2:i2+7)=win2;
    end
end

for i1 = 1:10:row
    for i2 = 1:10:coln 
        win2 = dct_quantized(i1:i1+7,i2:i2+7);
        win3 = win2.*QX;
        dct_dequantized(i1:i1+7,i2:i2+7) = win3;
    end
end

for i1 = 1:10:row
    for i2 = 1:10:coln
        win3 = dct_dequantized(i1:i1+7,i2:i2+7);
        win4=iDCT*win3*DCT;
        dct_restored(i1:i1+7,i2:i2+7)=win4;
    end
end

I2=dct_restored;

I=mat2gray(I);  

K=mat2gray(I2);

subplot(1,2,1);imshow(I);title('original image');
subplot(1,2,2);imshow(K);title('restored image from dct ');
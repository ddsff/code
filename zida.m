clc
clear
load data c1
load data c2
load data c3
load data c4
data(1:500,:)=c1(1:500,:);
data(501:1000,:)=c2(1:500,:);
data(1001:1500,:)=c3(1:500,:);
input=data(:,2:25);
output1=data(:,1);
for i=1:2000
    switch otput1(i)
        case 1
            output(i,:)=[1 0 0 0];
        case 2
            output(i,:)=[0 1 0 0];
        case 3
            output(i,:)=[0 0 1 0];
        case 4
            output(i,:)=[0 0 0 1];
    end
end
k=rand(1,2000);
[m,n]=sort(k);
input_train=input(n(1:1500),:)';
output_train=output(n(1:1500),:)';
input_test=input(n(1501:2000,:))';
output_test=output(n(1501:2000),:)';
[inputn,inputps]=mapminmax(input_train);




















































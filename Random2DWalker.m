% Author: Nawaf k. Abdullah
% Path of a 2D random walker
% Reference: Computational Physics 2nd Edition - Nicholas J. Giordano and
% Hisao Nakanishi

W= 100;
N= 100;
x=zeros(W,N);
y=zeros(W,N);

xave=zeros(1,N);
yave=zeros(1,N);
MSD=zeros(1,N);
xfinals=zeros(W,1);
yfinals=zeros(W,1);


for w=1:W-1
    for n=1:N-1
        r=rand(1);
        if (r < 0.25)
            x(w,n+1)=x(w,n)-1;
            y(w,n+1)=y(w,n);
            
        elseif  (r >= 0.25 && r < 0.50)
            x(w,n+1)=x(w,n)+1;
            y(w,n+1)=y(w,n);
            
        elseif (r >= 0.50 && r < 0.75)
             y(w,n+1)=y(w,n)-1;
             x(w,n+1)=x(w,n);
             
        else 
             y(w,n+1)=y(w,n)+1;
             x(w,n+1)=x(w,n);
             
        end
        xave(1,n+1)=xave(1,n+1)+x(w,n+1);
        MSD(1,n+1)=MSD(1,n+1)+x(w,n+1)^2;
        yave(1,n+1)=yave(1,n+1)+y(w,n+1);
        MSD(1,n+1)=MSD(1,n+1)+y(w,n+1)^2;
    end
end


xave=xave/W;
xfinals(:,1)=x(:,N);

yave=yave/W;
yfinals(:,1)=y(:,N);

MSD=MSD/W;


%Walker path
figure(1)
plot(x(1,:),y(1,:))

%Mean square displacement
figure(2)
plot(MSD)
hold on
title('Mean Squared Displacment')
hold off
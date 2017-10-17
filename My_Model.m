function [res] = My_Model()
%MY MODEL Summary of this function goes here
%   Detailed explanation goes here


%% Getting Data:
        
        X=readNPY('F:\Training Data\X.npy');
        Y=readNPY('F:\Training Data\Y.npy');
        
        
%% Proccesing The Data:
        
        % adjusting the Dimintion of X to be (n+1) according to Normal
        % ( n= 16) 
        % ( m = 100)
        % Equation Model
        newX=[ones(size(X,1)) X];
        
        % Calculation the Parameters debending on "Normal Equation" Model
        theta1=pinv( newX' * newX ) * newX' * Y(:,1) ;
        theta2=pinv( newX' * newX ) * newX' * Y(:,2) ;
        
        % claculating the Predicted results
        result1=newX*theta1;  % m*1 vector
        result2=newX*theta2;  % m*1 vector
        
        
%% Result:
        
        %result with dimintion of Y matrix
        res=[result1 result2]; % m*2 vector
      
end


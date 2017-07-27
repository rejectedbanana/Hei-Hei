function [cmp] = tamatoa( vargin )
 
% function [cmp] = tamatoa( vargin )
%
% DESCRIPTION:
% Colormap based on bioluminescent Tamatoa in Moana. .
%
% INPUT:
%   len    =   colormap size
%
% OUTPUT: 
%   cmp    =   [len x 3] colormap vector
%
%
% KiM MARTiNi 07.2017
% Sea-Bird Scientific 
% kmartini@seabird.com

if nargin<1
    len=length(colormap);
else
    len=vargin(1);
end;

cmdata = [
    27     7   254
    2    13    28
    255    22   255]./255; % face pink


xcmdata=(1:size(cmdata,1))./size(cmdata,1);
dx = 1/(size(cmdata,1)-1);
xcmdata=0:dx:1;
dx = 1/(len-1);
xnew = 0:dx:1;
cmp=interp1(xcmdata,cmdata,xnew);

% colors picked from the Bioluminescent_Tamatoa.jpg
% #0435B7 [ 4    53   183]% dark blue
% #1B07FE [27     7   254] % face dark blue
% #4AC0E3 [ 74   192   227 ]% light blue
% #020D1C [2    13    28]% darkness
% #FF16FF [255    22   255]% face pink

function [cmp] = heihei( vargin )
 
% function [cmp] = heihei( vargin )
%
% DESCRIPTION:
% Colormap based on Hei Hei the chicken in Moana. Because it's colorful.
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
    7    44    67 % deep blue
    19    88    70 % green
    49   186   138 % jade
    254   191   108 % yellow
    253   143    54 % golden neck
    246    60    68 % red comb
    76    53    81]./255; % purple eyebag


xcmdata=(1:size(cmdata,1))./size(cmdata,1);
dx = 1/(size(cmdata,1)-1);
xcmdata=0:dx:1;
dx = 1/(len-1);
xnew = 0:dx:1;
cmp=interp1(xcmdata,cmdata,xnew);

% colors picked from the heihei.png
% #072C43 [7    44    67] % really deep blue
% #335C79  [51    92   121] blue tail feather
% #375D77   [55    93   119] deep blue tail feather
% #135846   [19    88    70] green tail feather
% #31BA8A   [49   186   138] jade tail feather
% #FEBF6C   [ 254   191   108] yellow beak
% #FD8F36   [253   143    54] golden neck
% #D95510   [217    85    16] orange neck
% #F63C44   [ 246    60    68] red comb
% #4C3551   [76    53    81] purple eye bags
% #773C53   [119    60    83] really deep purple eyebags
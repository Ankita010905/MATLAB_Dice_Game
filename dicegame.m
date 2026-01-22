function varargout = dicegame(varargin)
% DICEGAME MATLAB code for dicegame.fig
%      DICEGAME, by itself, creates a new DICEGAME or raises the existing
%      singleton*.
%
%      H = DICEGAME returns the handle to a new DICEGAME or the handle to
%      the existing singleton*.
%
%      DICEGAME('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DICEGAME.M with the given input arguments.
%
%      DICEGAME('Property','Value',...) creates a new DICEGAME or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before dicegame_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to dicegame_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help dicegame

% Last Modified by GUIDE v2.5 30-Jul-2024 20:41:09

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @dicegame_OpeningFcn, ...
                   'gui_OutputFcn',  @dicegame_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before dicegame is made visible.
function dicegame_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to dicegame (see VARARGIN)

% Choose default command line output for dicegame
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes dicegame wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = dicegame_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in rolldicebutton.
function rolldicebutton_Callback(hObject, eventdata, handles)
% hObject    handle to rolldicebutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%Roll the dice
dicevalue = randi([1 6]);

%Update the result text
set(handles.result,'string',num2str(dicevalue));
%Display the corresponding dice face image
axes(handles.axes1);%set current axes to axes1
imshow(['dice' num2str(dicevalue) '.png']);
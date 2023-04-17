function varargout = Semester_Project(varargin)
% SEMESTER_PROJECT MATLAB code for Semester_Project.fig
%      SEMESTER_PROJECT, by itself, creates a new SEMESTER_PROJECT or raises the existing
%      singleton*.
%
%      H = SEMESTER_PROJECT returns the handle to a new SEMESTER_PROJECT or the handle to
%      the existing singleton*.
%
%      SEMESTER_PROJECT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SEMESTER_PROJECT.M with the given input arguments.
%
%      SEMESTER_PROJECT('Property','Value',...) creates a new SEMESTER_PROJECT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Semester_Project_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Semester_Project_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Semester_Project

% Last Modified by GUIDE v2.5 17-Apr-2023 02:21:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Semester_Project_OpeningFcn, ...
                   'gui_OutputFcn',  @Semester_Project_OutputFcn, ...
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




global model;
global augur; global points; global conlist;
model = importGeometry('AUGER_Dispenser_Copy.stl');
pdegplot(model);

augur = stlread('AUGER_Dispenser_Copy.stl');
points = augur.Points;
conlist = augur.ConnectivityList;




% --- Executes just before Semester_Project is made visible.
function Semester_Project_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Semester_Project (see VARARGIN)

% Choose default command line output for Semester_Project
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Semester_Project wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Semester_Project_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Draw_Augur_Button.
function Draw_Augur_Button_Callback(hObject, eventdata, handles)
% hObject    handle to Draw_Augur_Button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function Augur_Diameter_Edit_Text_Callback(hObject, eventdata, handles)
% hObject    handle to Augur_Diameter_Edit_Text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Augur_Diameter_Edit_Text as text
%        str2double(get(hObject,'String')) returns contents of Augur_Diameter_Edit_Text as a double


% --- Executes during object creation, after setting all properties.
function Augur_Diameter_Edit_Text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Augur_Diameter_Edit_Text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function Augur_Diameter_Slider_Callback(hObject, eventdata, handles)
% hObject    handle to Augur_Diameter_Slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function Augur_Diameter_Slider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Augur_Diameter_Slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function Augur_Length_Callback(hObject, eventdata, handles)
% hObject    handle to Augur_Length (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function Augur_Length_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Augur_Length (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function Augur_Length_Text_Callback(hObject, eventdata, handles)
% hObject    handle to Augur_Length_Text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Augur_Length_Text as text
%        str2double(get(hObject,'String')) returns contents of Augur_Length_Text as a double


% --- Executes during object creation, after setting all properties.
function Augur_Length_Text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Augur_Length_Text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function Total_scale_Slider_Callback(hObject, eventdata, handles)
% hObject    handle to Total_scale_Slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global model;
value = get(hObject,'Value');
scale(model,value);
handles.axes1 = pdegplot(model);
pdegplot(model);
global points; global conlist; global augur
%points = [value 0 0; 0 value 0;0 0 value] * points';
%points = points';
%augur = triangulation(conlist,points);


% --- Executes during object creation, after setting all properties.
function Total_scale_Slider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Total_scale_Slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function export_edit_Callback(hObject, eventdata, handles)
% hObject    handle to export_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of export_edit as text
%        str2double(get(hObject,'String')) returns contents of export_edit as a double
global stl_name;
stl_name = get(hobject,'String');


% --- Executes during object creation, after setting all properties.
function export_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to export_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Export_Button.
function Export_Button_Callback(hObject, eventdata, handles)
% hObject    handle to Export_Button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global stl_name; global augur;
stlwrite(augur,stl_name);

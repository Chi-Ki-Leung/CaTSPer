classdef DR_Checker_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        DynamicRangeCheckerUIFigure     matlab.ui.Figure
        Image                           matlab.ui.control.Image
        AbsorptionspectrumYaxisfittingCheckBox  matlab.ui.control.CheckBox
        PoweredbyTerahertzApplicationsGroupUniversityofCambridgeLabel  matlab.ui.control.Label
        SampleIDEditField               matlab.ui.control.EditField
        SampleIDEditFieldLabel          matlab.ui.control.Label
        MeasurementTypeButtonGroup      matlab.ui.container.ButtonGroup
        ReflectionButton                matlab.ui.control.RadioButton
        TransmissionButton              matlab.ui.control.RadioButton
        APPLYALLButton                  matlab.ui.control.Button
        APPLYButton                     matlab.ui.control.Button
        SAMPLEINFORMATIONPanel          matlab.ui.container.Panel
        UpperlimitFrequencySlider       matlab.ui.control.Slider
        UpperlimitFrequencySliderLabel  matlab.ui.control.Label
        FrequencyLimitTHzEditField      matlab.ui.control.NumericEditField
        FrequencyLimitTHzEditFieldLabel  matlab.ui.control.Label
        ThicknessmmEditField            matlab.ui.control.NumericEditField
        ThicknessmmEditFieldLabel       matlab.ui.control.Label
        CUTOFFSETTINGPanel              matlab.ui.container.Panel
        CutoffFrequencySlider           matlab.ui.control.Slider
        CutoffFrequencyLabel_2          matlab.ui.control.Label
        NoiseFloorEditField             matlab.ui.control.NumericEditField
        NoiseFloorEditFieldLabel        matlab.ui.control.Label
        CutoffFrequencyEditField        matlab.ui.control.NumericEditField
        CutoffFrequencyLabel            matlab.ui.control.Label
        DynamicrangecheckerLabel        matlab.ui.control.Label
        UIAxes2                         matlab.ui.control.UIAxes
        UIAxes1                         matlab.ui.control.UIAxes
    end

    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % This in-line code annotation of DR_Checker v1.0 aims to provide a detailed explanation of the
    % script, function and processes of the DR_Checker app
    % Definitions of parameters are not annotated for conciseness.
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    properties (Access = private)
        CallingApp % Main app object
    end
    
    properties (Access = public)
        refF
        refE
        samA
        n_eff
    end
    
    methods (Access = private)
        
        % findNF defines the noise floor as the reference amplitude
        % at the first frequency greater than the specified cutoff
        % frequency, and then runs the functions plotAx1 and plotAx2
        function findNF(app)
            % find the noise floor for the given reference data
            
            % extract reference frequency, reference frequency domain amplitude and
            % sample absorption coefficient
            refF = app.refF;
            refE = app.refE;
            samA = app.samA;
            % extract the cutoff frequency value as indicated from the slider
            cutoffF = app.CutoffFrequencySlider.Value; % THz
            % convert the value into units of Hz
            cutoffF = cutoffF * 10^12;
            
            % find the index of the first reference freqency that has a
            % value greater than the cutoff frequency
            cfLoc = find(refF>cutoffF,1);
            
            % if thickness value is not available or equals to zero, display warning message
            if isequal(app.ThicknessmmEditField.Value,0)
                    fig = app.DynamicRangeCheckerUIFigure;
                    ID = app.SampleIDEditField.Value;
                    msg = strcat("[",(ID),"]"," doesn't have thickness information.");
                    uialert(fig,(msg),'Invalid Thickness');
                    return;
                end
            
            % if there is no frequency greater than the cutoff frequency,
            % display warning message
            if isempty(cfLoc)
                cutoffF = refF(end);
                fig = app.DynamicRangeCheckerUIFigure;
                maxF = num2str(cutoffF*10^-12,'%.2f');
                msg = strcat("The cutoff frquency data is not defined."," Max. Freq.:",(maxF));
                uialert(fig,(msg),'Invalid Data');
                return;
            end
            
%             noFl = mean(refE(cfLoc:end));
            % find the reference amplitude at the first
            % frequency greater than the cutoff frequency
            noFl = refE(cfLoc);
            
            % define the above reference amplitude as the noise floor
            app.NoiseFloorEditField.Value = noFl;   
            
            % run the functions plotAx1 and plotAx2
            plotAx1(app);
            plotAx2(app);
        end
        
        % plotAx1 determines the normalised reference frequency domain
        % amplitude, and plots it against frequency with the cutoff frequency
        % indicated
        function plotAx1(app)
            % extract values
            ax = app.UIAxes1;
            noFl = app.NoiseFloorEditField.Value;
            cutoffF = app.CutoffFrequencyEditField.Value;
            % convert frequency into units of terahertz            
            refF = app.refF.* 10^-12;
            % cutoff frequency is already in units of terahertz and hence
            % the following line of code
            cutoffF = cutoffF;
            % normalise the reference amplitude with the noise floor
            refE = app.refE./noFl;
            
            % plots the normalised reference amplitude against
            % frequency, the cutoff frequency is also plotted for
            % indication purposes
            plot(ax,refF,refE,"LineWidth",1);
            hold(ax,"on")
            xline(ax,cutoffF,'--r',{'Cutoff Frequency',(cutoffF)});
            yline(ax,1,'--b',{'Noise Floor'});
            hold(ax,"off")
            
        end
        
        % plotAx2 determines the upper limit of detectable absorption,
        % plots it and the sample absorption coefficient against frequency,
        % and also the specified upper limit frequency
        function plotAx2(app)
            % extract values
            samA = app.samA;
            limitFreq = app.FrequencyLimitTHzEditField.Value;
            noFl = app.NoiseFloorEditField.Value;
            thickness = app.ThicknessmmEditField.Value;
            % convert frequency into units of terahertz
            refF = app.refF.*10^-12;
            % normalise the reference amplitude values with the noise floor
            refE = app.refE./noFl;
            
            % definitions
            c = 299792458; % the speed of light
            n_medium = 1; % refractive index of medium
            n_reference = 1; % refractive indx of the reference
            n_sample = app.n_eff;
               
            % calculate the maximum absorption coefficient
            % the logarithm base is e.
            % this is calculated by referencing equation 3 from Jepsen and Fischer (DOI: 10.1364/ol.30.000029)
            % the calculation is broken down into steps
            ref_factor = 4.*n_medium.*n_reference./((n_medium + n_reference).^2);
            sam_factor = 4.*n_medium.*n_sample./((n_medium + n_sample).^2);
            scaleFactor = ref_factor./sam_factor;
                
            scaledRefDRMag = refE.*scaleFactor;
                
            % upper limit of detectable absorption
            DRlimit = 2./(thickness*0.1).*log(scaledRefDRMag);
            
            ax = app.UIAxes2;
            
            % if the box for the absorption spectrum y-axis fitting
            % is checked, use auto generated y-axis limits
            if app.AbsorptionspectrumYaxisfittingCheckBox.Value
                ylim(ax,"auto");
            % if the box for the absorption spectrum y-axis fitting
            % is unchecked, use the default y-axis limits
            else
                ylim(ax,[-100,500]);
            end

            % deleting graphics objects, that are specified by 'ax', from the axes
            cla(ax)
            hold(ax,"on")
            
            % plot the upper limit of detectable absorption against frequency
            plot(ax,refF,DRlimit,'-','LineWidth',1);
            % plot the sample absorption coefficients against frequency
            plot(ax,refF,samA,'LineWidth',1);
            % plot the upper limit frequency
            xline(ax,limitFreq,'--r',{'Upper-limit Frequency',(limitFreq)});
            hold(ax,"off")
        end
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app, mainapp, refF, refE, samA, n_eff, thickness, sampleID)
            % startupFcn extracts values for running the app, checks the
            % measurement type and runs the findNF function

            %Store main app object
            app.CallingApp = mainapp;
            app.refF = refF;
            app.refE = refE;
            app.samA = samA;
            assignin("base","samA",samA);
            app.n_eff = n_eff;
            cutoffF = app.CutoffFrequencySlider.Value;
            limitFreq = app.UpperlimitFrequencySlider.Value;
                   
            % extract values     
            app.ThicknessmmEditField.Value = thickness;
            app.CutoffFrequencyEditField.Value = cutoffF;            
            app.SampleIDEditField.Value = sampleID;
            app.FrequencyLimitTHzEditField.Value = limitFreq;
            
            % check measurement tyep: transmission or reflecton
            measType = app.MeasurementTypeButtonGroup.SelectedObject.Text;
            
            if isequal(measType,'Reflection')
                % put logics and equations for reflection measurement                                
            end
            
            % runs the findNF function
            findNF(app);           

        end

        % Button pushed function: APPLYButton
        function APPLYButtonPushed(app, event)
            % APPLYButtonPushed updates the upper limit frequency value as
            % specified by the user on the edit field, runs the updateFreqRange function from the
           % CaTSper app and deletes the dialog box
            
            % Call main app's public function
            
            % extract the updated upper limit frequency value specified by
            % the user in the edit field
            limitFreq = app.FrequencyLimitTHzEditField.Value;
             
            % run the updateFreqRange function from the CaTSper app
            updateFreqRange(app.CallingApp,limitFreq,0);
            
            % Delete the dialog box
            delete(app)
        end

        % Button pushed function: APPLYALLButton
        function APPLYALLButtonPushed(app, event)
            % APPLYALLButtonPushed updates the upper limit frequency value as
            % specified by the user on the edit field, runs the updateFreqRange function from the
            % CaTSper app and deletes the dialog box    
            
            % Call main app's public function

            % extract the updated upper limit frequency value specified by
            % the user in the edit field
            limitFreq = app.FrequencyLimitTHzEditField.Value;
            
            % run the updateFreqRange function from the CaTSper app
            updateFreqRange(app.CallingApp,limitFreq,1);
            
            % Delete the dialog box
            delete(app)
        end

        % Value changed function: CutoffFrequencySlider
        function CutoffFrequencySliderValueChanged(app, event)
            % CutoffFrequencySliderValueChanged updates the cutoff frequency
            % edit field with the new value that is specified by the user on
            % the slider, and runs the findNF and plotAx1 function
            
            % extract the updated cutoff frequency value specified by
            % the user in the slider
            value = app.CutoffFrequencySlider.Value;
            % update the cutoff frequency edit field with the new value
            app.CutoffFrequencyEditField.Value = value;
            % run findNF and plotAx1 functions
            findNF(app);
            plotAx1(app);
        end

        % Value changed function: CutoffFrequencyEditField
        function CutoffFrequencyEditFieldValueChanged(app, event)
            % CutoffFrequencyEditFieldValueChanged updates the cutoff frequency
            % slider with the new value that is specified by the user on
            % the edit field, and runs the findNF and plotAx1 function
            
            % extract the updated cutoff frequency value specified by
            % the user in the edit field
            value = app.CutoffFrequencyEditField.Value;
            % update the cutoff frequency slider with the new value
            app.CutoffFrequencySlider.Value = value;
            % run findNF and plotAx1 functions
            findNF(app);
            plotAx1(app);
        end

        % Value changed function: UpperlimitFrequencySlider
        function UpperlimitFrequencySliderValueChanged(app, event)
            % UpperlimitFrequencySliderValueChanged updates the upper limit frequency
            % edit field with the new value that is specified by the user on
            % the slider, and runs the plotAx2 function    
            
            % extract the updated upper limit frequency value specified by
            % the user in the slider
            value = app.UpperlimitFrequencySlider.Value;
            % update the upper limit frequency edit field with the new value
            app.FrequencyLimitTHzEditField.Value = value;
            % run the plotAx2 function
            plotAx2(app);
        end

        % Value changed function: FrequencyLimitTHzEditField
        function FrequencyLimitTHzEditFieldValueChanged(app, event)
            % FrequencyLimitTHzEditFieldValueChanged updates the upper limit frequency
            % slider with the new value that is specified by the user on
            % the edit field, and runs the plotAx2 function    
            
            % extract the updated upper limit frequency value specified by
            % the user in the edit field
            value = app.FrequencyLimitTHzEditField.Value;
            % update the upper limit frequency slider with the new value
            app.UpperlimitFrequencySlider.Value = value;
            % run the plotAx2 function
            plotAx2(app);            
        end

        % Value changed function: AbsorptionspectrumYaxisfittingCheckBox
        function AbsorptionspectrumYaxisfittingCheckBoxValueChanged(app, event)
            % AbsorptionspectrumYaxisfittingCheckBoxValueChanged extracts the updated 
            % value from the absorption spectrum y-axis fitting box and runs the plotAx2 function

            % extract the updated value from the absorption spectrum y-axis fitting box 
            value = app.AbsorptionspectrumYaxisfittingCheckBox.Value;
            % run the plotAx2 function
            plotAx2(app);
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Get the file path for locating images
            pathToMLAPP = fileparts(mfilename('fullpath'));

            % Create DynamicRangeCheckerUIFigure and hide until all components are created
            app.DynamicRangeCheckerUIFigure = uifigure('Visible', 'off');
            app.DynamicRangeCheckerUIFigure.Position = [100 100 884 710];
            app.DynamicRangeCheckerUIFigure.Name = 'Dynamic Range Checker';
            app.DynamicRangeCheckerUIFigure.Icon = fullfile(pathToMLAPP, 'CaT_logo.png');

            % Create UIAxes1
            app.UIAxes1 = uiaxes(app.DynamicRangeCheckerUIFigure);
            title(app.UIAxes1, 'Normalized Dynamic Range and Noise Floor')
            xlabel(app.UIAxes1, 'Frequency (THz)')
            ylabel(app.UIAxes1, 'Dynamic Range')
            app.UIAxes1.PlotBoxAspectRatio = [1.80656934306569 1 1];
            app.UIAxes1.FontWeight = 'bold';
            app.UIAxes1.XLim = [0 5];
            app.UIAxes1.YLim = [0 3000];
            app.UIAxes1.XTickLabelRotation = 0;
            app.UIAxes1.YTickLabelRotation = 0;
            app.UIAxes1.YScale = 'log';
            app.UIAxes1.YMinorTick = 'on';
            app.UIAxes1.ZTickLabelRotation = 0;
            app.UIAxes1.LineWidth = 1;
            app.UIAxes1.Box = 'on';
            app.UIAxes1.Position = [306 364 550 330];

            % Create UIAxes2
            app.UIAxes2 = uiaxes(app.DynamicRangeCheckerUIFigure);
            title(app.UIAxes2, 'Absorption Spectrum')
            xlabel(app.UIAxes2, 'Frequency (THz)')
            ylabel(app.UIAxes2, 'Absorption coefficient [cm^{-1}]')
            app.UIAxes2.PlotBoxAspectRatio = [1.80656934306569 1 1];
            app.UIAxes2.FontWeight = 'bold';
            app.UIAxes2.XLim = [0 5];
            app.UIAxes2.YLim = [-100 500];
            app.UIAxes2.XTickLabelRotation = 0;
            app.UIAxes2.YTickLabelRotation = 0;
            app.UIAxes2.ZTickLabelRotation = 0;
            app.UIAxes2.LineWidth = 1;
            app.UIAxes2.Box = 'on';
            app.UIAxes2.Position = [307 25 550 330];

            % Create DynamicrangecheckerLabel
            app.DynamicrangecheckerLabel = uilabel(app.DynamicRangeCheckerUIFigure);
            app.DynamicrangecheckerLabel.FontSize = 18;
            app.DynamicrangecheckerLabel.FontWeight = 'bold';
            app.DynamicrangecheckerLabel.Tooltip = {'Jepsen et al. 2005: Dynamic range in terahertz time-domain transmission and reflection spectroscopy'};
            app.DynamicrangecheckerLabel.Position = [71 655 209 23];
            app.DynamicrangecheckerLabel.Text = 'Dynamic range checker';

            % Create CUTOFFSETTINGPanel
            app.CUTOFFSETTINGPanel = uipanel(app.DynamicRangeCheckerUIFigure);
            app.CUTOFFSETTINGPanel.Title = 'CUTOFF SETTING';
            app.CUTOFFSETTINGPanel.Position = [31 375 234 167];

            % Create CutoffFrequencyLabel
            app.CutoffFrequencyLabel = uilabel(app.CUTOFFSETTINGPanel);
            app.CutoffFrequencyLabel.HorizontalAlignment = 'right';
            app.CutoffFrequencyLabel.Position = [11 39 101 22];
            app.CutoffFrequencyLabel.Text = 'Cutoff Frequency';

            % Create CutoffFrequencyEditField
            app.CutoffFrequencyEditField = uieditfield(app.CUTOFFSETTINGPanel, 'numeric');
            app.CutoffFrequencyEditField.Limits = [0 5];
            app.CutoffFrequencyEditField.ValueDisplayFormat = '%.2f';
            app.CutoffFrequencyEditField.ValueChangedFcn = createCallbackFcn(app, @CutoffFrequencyEditFieldValueChanged, true);
            app.CutoffFrequencyEditField.Position = [132 39 90 22];

            % Create NoiseFloorEditFieldLabel
            app.NoiseFloorEditFieldLabel = uilabel(app.CUTOFFSETTINGPanel);
            app.NoiseFloorEditFieldLabel.HorizontalAlignment = 'right';
            app.NoiseFloorEditFieldLabel.Position = [45 9 67 22];
            app.NoiseFloorEditFieldLabel.Text = 'Noise Floor';

            % Create NoiseFloorEditField
            app.NoiseFloorEditField = uieditfield(app.CUTOFFSETTINGPanel, 'numeric');
            app.NoiseFloorEditField.Editable = 'off';
            app.NoiseFloorEditField.Position = [132 9 90 22];

            % Create CutoffFrequencyLabel_2
            app.CutoffFrequencyLabel_2 = uilabel(app.CUTOFFSETTINGPanel);
            app.CutoffFrequencyLabel_2.HorizontalAlignment = 'right';
            app.CutoffFrequencyLabel_2.Position = [5 116 101 22];
            app.CutoffFrequencyLabel_2.Text = 'Cutoff Frequency';

            % Create CutoffFrequencySlider
            app.CutoffFrequencySlider = uislider(app.CUTOFFSETTINGPanel);
            app.CutoffFrequencySlider.Limits = [1 5];
            app.CutoffFrequencySlider.ValueChangedFcn = createCallbackFcn(app, @CutoffFrequencySliderValueChanged, true);
            app.CutoffFrequencySlider.Position = [24 103 195 3];
            app.CutoffFrequencySlider.Value = 3.5;

            % Create SAMPLEINFORMATIONPanel
            app.SAMPLEINFORMATIONPanel = uipanel(app.DynamicRangeCheckerUIFigure);
            app.SAMPLEINFORMATIONPanel.Title = 'SAMPLE INFORMATION';
            app.SAMPLEINFORMATIONPanel.Position = [31 196 234 166];

            % Create ThicknessmmEditFieldLabel
            app.ThicknessmmEditFieldLabel = uilabel(app.SAMPLEINFORMATIONPanel);
            app.ThicknessmmEditFieldLabel.HorizontalAlignment = 'right';
            app.ThicknessmmEditFieldLabel.Position = [33 41 90 22];
            app.ThicknessmmEditFieldLabel.Text = 'Thickness (mm)';

            % Create ThicknessmmEditField
            app.ThicknessmmEditField = uieditfield(app.SAMPLEINFORMATIONPanel, 'numeric');
            app.ThicknessmmEditField.ValueDisplayFormat = '%.3f';
            app.ThicknessmmEditField.Position = [135 41 90 22];

            % Create FrequencyLimitTHzEditFieldLabel
            app.FrequencyLimitTHzEditFieldLabel = uilabel(app.SAMPLEINFORMATIONPanel);
            app.FrequencyLimitTHzEditFieldLabel.HorizontalAlignment = 'right';
            app.FrequencyLimitTHzEditFieldLabel.Position = [3 10 124 22];
            app.FrequencyLimitTHzEditFieldLabel.Text = 'Frequency Limit (THz)';

            % Create FrequencyLimitTHzEditField
            app.FrequencyLimitTHzEditField = uieditfield(app.SAMPLEINFORMATIONPanel, 'numeric');
            app.FrequencyLimitTHzEditField.Limits = [0 4];
            app.FrequencyLimitTHzEditField.ValueDisplayFormat = '%.3f';
            app.FrequencyLimitTHzEditField.ValueChangedFcn = createCallbackFcn(app, @FrequencyLimitTHzEditFieldValueChanged, true);
            app.FrequencyLimitTHzEditField.Position = [136 10 90 22];

            % Create UpperlimitFrequencySliderLabel
            app.UpperlimitFrequencySliderLabel = uilabel(app.SAMPLEINFORMATIONPanel);
            app.UpperlimitFrequencySliderLabel.HorizontalAlignment = 'right';
            app.UpperlimitFrequencySliderLabel.Position = [6 120 124 22];
            app.UpperlimitFrequencySliderLabel.Text = 'Upper-limit Frequency';

            % Create UpperlimitFrequencySlider
            app.UpperlimitFrequencySlider = uislider(app.SAMPLEINFORMATIONPanel);
            app.UpperlimitFrequencySlider.Limits = [1 5];
            app.UpperlimitFrequencySlider.ValueChangedFcn = createCallbackFcn(app, @UpperlimitFrequencySliderValueChanged, true);
            app.UpperlimitFrequencySlider.Position = [24 107 195 3];
            app.UpperlimitFrequencySlider.Value = 3.5;

            % Create APPLYButton
            app.APPLYButton = uibutton(app.DynamicRangeCheckerUIFigure, 'push');
            app.APPLYButton.ButtonPushedFcn = createCallbackFcn(app, @APPLYButtonPushed, true);
            app.APPLYButton.FontWeight = 'bold';
            app.APPLYButton.Position = [32 102 234 37];
            app.APPLYButton.Text = 'APPLY';

            % Create APPLYALLButton
            app.APPLYALLButton = uibutton(app.DynamicRangeCheckerUIFigure, 'push');
            app.APPLYALLButton.ButtonPushedFcn = createCallbackFcn(app, @APPLYALLButtonPushed, true);
            app.APPLYALLButton.FontWeight = 'bold';
            app.APPLYALLButton.Position = [34 51 234 37];
            app.APPLYALLButton.Text = 'APPLY ALL';

            % Create MeasurementTypeButtonGroup
            app.MeasurementTypeButtonGroup = uibuttongroup(app.DynamicRangeCheckerUIFigure);
            app.MeasurementTypeButtonGroup.Title = 'Measurement Type';
            app.MeasurementTypeButtonGroup.Position = [31 554 234 52];

            % Create TransmissionButton
            app.TransmissionButton = uiradiobutton(app.MeasurementTypeButtonGroup);
            app.TransmissionButton.Text = 'Transmission';
            app.TransmissionButton.Position = [16 6 93 22];
            app.TransmissionButton.Value = true;

            % Create ReflectionButton
            app.ReflectionButton = uiradiobutton(app.MeasurementTypeButtonGroup);
            app.ReflectionButton.Enable = 'off';
            app.ReflectionButton.Text = 'Reflection';
            app.ReflectionButton.Position = [122 6 75 22];

            % Create SampleIDEditFieldLabel
            app.SampleIDEditFieldLabel = uilabel(app.DynamicRangeCheckerUIFigure);
            app.SampleIDEditFieldLabel.HorizontalAlignment = 'right';
            app.SampleIDEditFieldLabel.Position = [32 617 62 22];
            app.SampleIDEditFieldLabel.Text = 'Sample ID';

            % Create SampleIDEditField
            app.SampleIDEditField = uieditfield(app.DynamicRangeCheckerUIFigure, 'text');
            app.SampleIDEditField.Position = [103 617 163 22];

            % Create PoweredbyTerahertzApplicationsGroupUniversityofCambridgeLabel
            app.PoweredbyTerahertzApplicationsGroupUniversityofCambridgeLabel = uilabel(app.DynamicRangeCheckerUIFigure);
            app.PoweredbyTerahertzApplicationsGroupUniversityofCambridgeLabel.FontSize = 11;
            app.PoweredbyTerahertzApplicationsGroupUniversityofCambridgeLabel.Position = [8 2 336 22];
            app.PoweredbyTerahertzApplicationsGroupUniversityofCambridgeLabel.Text = 'Powered by Terahertz Applications Group, University of Cambridge';

            % Create AbsorptionspectrumYaxisfittingCheckBox
            app.AbsorptionspectrumYaxisfittingCheckBox = uicheckbox(app.DynamicRangeCheckerUIFigure);
            app.AbsorptionspectrumYaxisfittingCheckBox.ValueChangedFcn = createCallbackFcn(app, @AbsorptionspectrumYaxisfittingCheckBoxValueChanged, true);
            app.AbsorptionspectrumYaxisfittingCheckBox.Text = 'Absorption spectrum Y-axis fitting';
            app.AbsorptionspectrumYaxisfittingCheckBox.Position = [66 166 200 22];

            % Create Image
            app.Image = uiimage(app.DynamicRangeCheckerUIFigure);
            app.Image.Position = [8 645 63 56];
            app.Image.ImageSource = fullfile(pathToMLAPP, 'dotTHz_logo.png');

            % Show the figure after all components are created
            app.DynamicRangeCheckerUIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = DR_Checker_exported(varargin)

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.DynamicRangeCheckerUIFigure)

            % Execute the startup function
            runStartupFcn(app, @(app)startupFcn(app, varargin{:}))

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.DynamicRangeCheckerUIFigure)
        end
    end
end
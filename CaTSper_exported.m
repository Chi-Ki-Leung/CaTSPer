classdef CaTSper_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        CatsperUIFigure                 matlab.ui.Figure
        DEPLOYButton                    matlab.ui.control.Button
        Image                           matlab.ui.control.Image
        ProjectsEditField               matlab.ui.control.EditField
        ImportTHzButton                 matlab.ui.control.Button
        PoweredbyTerahertzApplicationsGroupUniversityofCambridgeLabel  matlab.ui.control.Label
        CambridgeTerahertzSpectrumAnalyserLabel  matlab.ui.control.Label
        CaTSperLabel                    matlab.ui.control.Label
        SAVETDFDDMButton                matlab.ui.control.Button
        CLEARMEMORYButton               matlab.ui.control.Button
        DEBUGMsgLabel                   matlab.ui.control.Label
        SystemStatusLabel               matlab.ui.control.Label
        TabGroup                        matlab.ui.container.TabGroup
        TimeDomainTDTab                 matlab.ui.container.Tab
        CHECKDYNAMICRANGEButton         matlab.ui.control.Button
        ASSIGNButtonTD                  matlab.ui.control.Button
        SaveData_TD                     matlab.ui.control.Button
        LoadData_TD                     matlab.ui.control.Button
        SampleDetailsPanel              matlab.ui.container.Panel
        InstrumentEditField             matlab.ui.control.EditField
        InstrumentEditFieldLabel        matlab.ui.control.Label
        ScanTimeEditField               matlab.ui.control.EditField
        ScanTimeEditFieldLabel          matlab.ui.control.Label
        DescriptionEditField            matlab.ui.control.EditField
        DescriptionEditFieldLabel       matlab.ui.control.Label
        RefractiveIndexEditField        matlab.ui.control.NumericEditField
        RefractiveIndexEditFieldLabel   matlab.ui.control.Label
        stinternalreflectionpsEditField  matlab.ui.control.NumericEditField
        stinternalreflectionpsEditFieldLabel  matlab.ui.control.Label
        TimedelaypsEditField            matlab.ui.control.NumericEditField
        TimedelaypsEditFieldLabel       matlab.ui.control.Label
        ThicknessmmEditField            matlab.ui.control.NumericEditField
        ThicknessmmEditFieldLabel       matlab.ui.control.Label
        GRIDOFFButton                   matlab.ui.control.StateButton
        JETCOLORMAPButton               matlab.ui.control.StateButton
        LEGENDButton_2                  matlab.ui.control.StateButton
        ButtonGroupTD                   matlab.ui.container.ButtonGroup
        BothButtonTD                    matlab.ui.control.RadioButton
        SampleButtonTD                  matlab.ui.control.RadioButton
        ReferenceButtonTD               matlab.ui.control.RadioButton
        ALLButton                       matlab.ui.control.Button
        PLOT2TDButton                   matlab.ui.control.Button
        FFTSettingsPanel                matlab.ui.container.Panel
        SpectralResolutionTHzLabel      matlab.ui.control.Label
        Label                           matlab.ui.control.Label
        MinTimeEditField                matlab.ui.control.NumericEditField
        MinTimeEditFieldLabel           matlab.ui.control.Label
        psLabel_4                       matlab.ui.control.Label
        WindowFunctionLabel             matlab.ui.control.Label
        FFTUpsamplingLabel              matlab.ui.control.Label
        FrequencyrangeLabel             matlab.ui.control.Label
        AUTOWINDOWButton                matlab.ui.control.StateButton
        orLabel                         matlab.ui.control.Label
        ZeroFillingpowerofSpinner       matlab.ui.control.Spinner
        ZeroFillingpowerofSpinnerLabel  matlab.ui.control.Label
        ApodizationFunctionDropDown     matlab.ui.control.DropDown
        ApodizationFunctionDropDownLabel  matlab.ui.control.Label
        TRANSFORMButton                 matlab.ui.control.Button
        at1stinternalreflectionsLabel   matlab.ui.control.Label
        MaxTimeEditField                matlab.ui.control.NumericEditField
        MaxTimeLabel                    matlab.ui.control.Label
        THzLabel_4                      matlab.ui.control.Label
        MaxFreqEditField                matlab.ui.control.NumericEditField
        MaxFreqEditFieldLabel           matlab.ui.control.Label
        MinFreqEditField                matlab.ui.control.NumericEditField
        MinFreqEditFieldLabel           matlab.ui.control.Label
        PLOT1TDButton                   matlab.ui.control.Button
        SelectionListBox                matlab.ui.control.ListBox
        SelectionListBoxLabel           matlab.ui.control.Label
        DELButton                       matlab.ui.control.Button
        ADDButton                       matlab.ui.control.Button
        MeasurementListBox              matlab.ui.control.ListBox
        MeasurementListBoxLabel         matlab.ui.control.Label
        UIAxes1                         matlab.ui.control.UIAxes
        UIAxes2                         matlab.ui.control.UIAxes
        FrequencyDomainFDTab            matlab.ui.container.Tab
        GRIDOFFButton_2                 matlab.ui.control.StateButton
        dataManipulationButton          matlab.ui.control.Button
        FDDatatoLabel                   matlab.ui.control.Label
        JETCOLORMAPButton_2             matlab.ui.control.StateButton
        LEGENDButton                    matlab.ui.control.StateButton
        LoadData_FD                     matlab.ui.control.Button
        SaveData_FD                     matlab.ui.control.Button
        MagPhaseButtonGroup             matlab.ui.container.ButtonGroup
        PhaseButton                     matlab.ui.control.RadioButton
        AmplitudeButton                 matlab.ui.control.RadioButton
        YscaleButtonGroup               matlab.ui.container.ButtonGroup
        linearButton                    matlab.ui.control.RadioButton
        logButton                       matlab.ui.control.RadioButton
        FDDataAnalysisPanel             matlab.ui.container.Panel
        GRIDOFFButton_3                 matlab.ui.control.StateButton
        RealImagButtonGroup             matlab.ui.container.ButtonGroup
        ImaginaryButton                 matlab.ui.control.RadioButton
        RealButton                      matlab.ui.control.RadioButton
        PLOTNEWFDButton                 matlab.ui.control.Button
        YscaleButtonGroup_2             matlab.ui.container.ButtonGroup
        linearButton_2                  matlab.ui.control.RadioButton
        logButton_2                     matlab.ui.control.RadioButton
        PlotDataButtonGroup             matlab.ui.container.ButtonGroup
        DIELECTRICCONSTANTButton        matlab.ui.control.ToggleButton
        REFRACTIVEINDEXButton           matlab.ui.control.ToggleButton
        ABSORPTIONButton                matlab.ui.control.ToggleButton
        TRANSMITTANCEButton             matlab.ui.control.ToggleButton
        FDSelectionListBox_2            matlab.ui.control.ListBox
        FDSelectionListBox_2Label       matlab.ui.control.Label
        CALCULATEOPTICALPARAMATERSButton  matlab.ui.control.Button
        NumberofMultipleReflectionsPanel  matlab.ui.container.Panel
        SampleNMREditField              matlab.ui.control.NumericEditField
        SampleEditField_2Label          matlab.ui.control.Label
        RefNMREditField                 matlab.ui.control.NumericEditField
        RefEditField_2Label             matlab.ui.control.Label
        ThicknessmmPanel                matlab.ui.container.Panel
        SampleEditField                 matlab.ui.control.NumericEditField
        SampleEditFieldLabel            matlab.ui.control.Label
        RefEditField                    matlab.ui.control.NumericEditField
        RefEditFieldLabel               matlab.ui.control.Label
        DescriptionEditField_FD         matlab.ui.control.EditField
        DescriptionEditField_2Label     matlab.ui.control.Label
        DELFDButton_2                   matlab.ui.control.Button
        ADDFDButton_2                   matlab.ui.control.Button
        ALLFDButton_2                   matlab.ui.control.Button
        MagPhaseButtonGroup_2           matlab.ui.container.ButtonGroup
        PhaseButton_2                   matlab.ui.control.RadioButton
        AmplitudeButton_2               matlab.ui.control.RadioButton
        PLOT2FDButton_2                 matlab.ui.control.Button
        PLOT1FDButton_2                 matlab.ui.control.Button
        ASSIGNButtonFD                  matlab.ui.control.Button
        REMOVEALLButton                 matlab.ui.control.Button
        REMOVEButton                    matlab.ui.control.Button
        ButtonGroupFD                   matlab.ui.container.ButtonGroup
        BothButtonFD                    matlab.ui.control.RadioButton
        SampleButtonFD                  matlab.ui.control.RadioButton
        ReferenceButtonFD               matlab.ui.control.RadioButton
        FDSelectionListBox              matlab.ui.control.ListBox
        FDSelectionListBoxLabel         matlab.ui.control.Label
        DELFDButton                     matlab.ui.control.Button
        ADDFDButton                     matlab.ui.control.Button
        ALLFDButton                     matlab.ui.control.Button
        FDListListBox                   matlab.ui.control.ListBox
        FDListListBoxLabel              matlab.ui.control.Label
        PLOT2FDButton                   matlab.ui.control.Button
        PLOT1FDButton                   matlab.ui.control.Button
        UIAxes4                         matlab.ui.control.UIAxes
        UIAxes3                         matlab.ui.control.UIAxes
        DataManipulationDMTab           matlab.ui.container.Tab
        JETCOLORMAPButton_DM            matlab.ui.control.StateButton
        DMTabGroup                      matlab.ui.container.TabGroup
        FrequencyBaseTab                matlab.ui.container.Tab
        MeasurementEditField            matlab.ui.control.EditField
        MeasurementEditFieldLabel       matlab.ui.control.Label
        YLabelEditField                 matlab.ui.control.EditField
        YLabelEditFieldLabel            matlab.ui.control.Label
        XLabelEditField                 matlab.ui.control.EditField
        XLabelEditFieldLabel            matlab.ui.control.Label
        YaxisDataEditField_2            matlab.ui.control.EditField
        YaxisDataEditField_2Label       matlab.ui.control.Label
        GetDatafromFrequencyTHzEditField  matlab.ui.control.EditField
        GetDatafromFrequencyTHzEditFieldLabel  matlab.ui.control.Label
        XaxisDataEditField              matlab.ui.control.EditField
        XaxisDataEditFieldLabel         matlab.ui.control.Label
        PLOTButton_2                    matlab.ui.control.Button
        REARRANGEDATAButton             matlab.ui.control.Button
        DISPLAYXLINESButton             matlab.ui.control.Button
        PeakBaseTab                     matlab.ui.container.Tab
        MinPeakProminenceEditField      matlab.ui.control.NumericEditField
        MinPeakProminenceEditFieldLabel  matlab.ui.control.Label
        MeasurementEditField_2          matlab.ui.control.EditField
        MeasurementEditField_2Label     matlab.ui.control.Label
        YLabelEditField_2               matlab.ui.control.EditField
        YLabelEditField_2Label          matlab.ui.control.Label
        XLabelEditField_2               matlab.ui.control.EditField
        XLabelEditField_2Label          matlab.ui.control.Label
        YaxisDataEditField_3            matlab.ui.control.EditField
        YaxisDataEditField_3Label       matlab.ui.control.Label
        XaxisDataEditField_2            matlab.ui.control.EditField
        XaxisDataEditField_2Label       matlab.ui.control.Label
        LowerLimitTHzEditField          matlab.ui.control.NumericEditField
        LowerLimitTHzEditFieldLabel     matlab.ui.control.Label
        PeakNumSpinner                  matlab.ui.control.Spinner
        PeakNumSpinnerLabel             matlab.ui.control.Label
        PLOTButton_3                    matlab.ui.control.Button
        REARRANGEDATAButton_2           matlab.ui.control.Button
        SaveData_DM                     matlab.ui.control.Button
        ASSIGNButtonDM                  matlab.ui.control.Button
        STEP1Panel                      matlab.ui.container.Panel
        PLOTmeanandrangeButton          matlab.ui.control.Button
        DPlotFrequencyxaxisPanel        matlab.ui.container.Panel
        DplotdoesnotsupportthebelowextractingfunctionLabel  matlab.ui.control.Label
        data3DDropDown                  matlab.ui.control.DropDown
        dataDropDownLabel               matlab.ui.control.Label
        PLOT1_3DButton                  matlab.ui.control.Button
        exABABCetcLabel                 matlab.ui.control.Label
        NumberofDataEditField           matlab.ui.control.NumericEditField
        NumberofDataEditFieldLabel      matlab.ui.control.Label
        AvailableDataSetEditField       matlab.ui.control.EditField
        AvailableDataSetEditFieldLabel  matlab.ui.control.Label
        IMPORTALLDATAButton             matlab.ui.control.Button
        CALCULATEButton_2               matlab.ui.control.Button
        CforDropDown                    matlab.ui.control.DropDown
        CforDropDownLabel               matlab.ui.control.Label
        BforDropDown                    matlab.ui.control.DropDown
        BforDropDownLabel               matlab.ui.control.Label
        PLOTindividualdatasetsButton    matlab.ui.control.Button
        YaxisDataFormulationEditField   matlab.ui.control.EditField
        YaxisDataFormulationEditFieldLabel  matlab.ui.control.Label
        XaxisDataDropDown               matlab.ui.control.DropDown
        XaxisDataDropDownLabel          matlab.ui.control.Label
        DefinevariablesLabel            matlab.ui.control.Label
        AforDropDown                    matlab.ui.control.DropDown
        AforDropDownLabel               matlab.ui.control.Label
        SourceDataSetEditField          matlab.ui.control.EditField
        SourceDataSetEditFieldLabel     matlab.ui.control.Label
        UIAxes9                         matlab.ui.control.UIAxes
        UIAxes10                        matlab.ui.control.UIAxes
    end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% CaTSper/ Cambridge Terahertz Spectrum Analyser
%% The dotTHz project, 2023 Terahertz Applications Group                 
%% Department of Chemical Engineering and Biotechnology
%% University of Cambridge, UK (Prof Axel Zeitler's group)
%%
%% <<Version information>>
%% 
%% <<Acknowledgement>>
%% CaTSper source code is under MIT license
%% <<Contact>>
%% https://github.com/CamTHz  - online repository
%% https://thz.ceb.cam.ac.uk  - research group website
%% Lead developer: Jongmin Lee, jl2112@cam.ac.uk
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    properties (Access = public)
        fullpathname % Terapulse project file name and folder information
        filename % Terapulse project file name
        TD_data %time domain data extracted from HDF5 project file
        TD_select %time domain measurment selection
        TD_config % TD to FD transformation configuration
        FD_data %frequency data transfered through DFT
        FD_select
        FD_select_2
        FD_config
        DM_count % the number of data manipulation data
        DM_data % data manipluation data
        DM_peaks % data MAnipulation peaks 
        PRJ_count % the number of project files imported
    end
    
    properties (Access = private)
        DialogApp % Dialog box app
    end
    
    methods (Access = private)
        
        function TDanalysisUpdate(app,TDindex)
            thickness = app.TD_data.thickness{TDindex};
            delta_t = app.TD_data.settings{TDindex}.timeDelay;
            
            % recalculate
            if ~isequal(thickness,0)
                n_eff = round((delta_t*10^-12*3e8/(thickness*10^-3) + 1)*1000)/1000;
                etl_t = delta_t + 2*thickness*10^-3*n_eff/3e8*10^12;
            else
                n_eff = 0;
                mtpRelection = 0;
            end

            
            % update information
            app.TD_data.settings{TDindex}.refractiveIndex = n_eff;
            app.TD_data.settings{TDindex}.internalReflection = etl_t;
            
            % display update
            app.RefractiveIndexEditField.Value = n_eff;
            app.stinternalreflectionpsEditField.Value = etl_t;
        end
        
        function FDdataDel(app,FDindex)
            app.FD_data.sampleList(FDindex) = [];
            app.FD_data.settings(FDindex) = [];
            app.FD_data.frequency(FDindex) = [];
            app.FD_data.ffd_references(FDindex) = [];
            app.FD_data.ffd_samples(FDindex) = [];
            app.FD_data.ref_amplitude(FDindex) = [];
            app.FD_data.ref_phase(FDindex) = [];
            app.FD_data.sam_amplitude(FDindex) = [];
            app.FD_data.sam_phase(FDindex) = [];
            app.FD_data.transmit_amplitude(FDindex) = [];
            app.FD_data.transmit_phase(FDindex) = [];
            
            if isfield(app.FD_data,'absorptions')
               app.FD_data.absorption(FDindex) = [];
                app.FD_data.refractiveIndex(FDindex) = [];
                app.FD_data.eReal(FDindex) = [];
                app.FD_data.eImag(FDindex) = [];
            end
             
            
            if ~isempty(app.FD_data.settings)
                app.FD_data.thickness(FDindex) = [];
                app.FD_data.settings(FDindex) = [];
            end
            
        end
        
        function TDdataDel(app)
            app.TD_data = [];
            app.MeasurementListBox.Items(:) = [];
            app.SelectionListBox.Items(:) = [];
        end
        
        
        function plotTD_data(app,axesNum)
            
            plotList = app.TD_select;
            plotType = app.ButtonGroupTD.SelectedObject.Text;
            cnt = 1;
            lgd = {};
            
            ax = axesNum;
            
            % reset 'NO LEGEND', 'JET COLORMAP'
            app.LEGENDButton_2.Value = 0;
            app.JETCOLORMAPButton.Value = 0;
            
            cla(ax)
            legend(ax,'off');
            hold(ax,"on")
            axis(ax,"tight");
            colorNum = length(plotList);
            
            if app.GRIDOFFButton.Value
                grid(ax,"off")
            else
                grid(ax,"on")
            end
            
            if isequal(plotType,'Both')
                colorNum = colorNum * 2;
            end
            
            for idx = plotList
                td_base = app.TD_data.references{idx,1};
                td_reference = app.TD_data.references{idx,2};
                td_sample = app.TD_data.samples{idx,2};
                sampleID = strjoin(app.TD_data.sampleList{idx});
%                 assignin('base',"td_Base",td_base);
%                 assignin('base',"td_sample",td_sample);
                
                switch plotType
                    case 'Sample'
                      plot(ax,td_base,td_sample,'linewidth',1);
                      lgd{cnt} = sampleID;
                      cnt = cnt + 1;
                    case 'Reference'
                      plot(ax,td_base,td_reference,'linewidth',1);
                    otherwise
                      plot(ax,td_base,td_reference,td_base,td_sample,...
                          'linewidth',1);
                end
            end
            
            if isequal(plotType,'Sample')
                legend(ax,(lgd),'Interpreter','none');
            end
            ax.ColorOrder = lines(colorNum);
            hold(ax,"off")
            
        end
        
        function plotFD_data(app,axesNum)
            plotList = app.FD_select;
            plotType = app.ButtonGroupFD.SelectedObject.Text;
            plotInfo = app.MagPhaseButtonGroup.SelectedObject.Text;
            Yscale = app.YscaleButtonGroup.SelectedObject.Text;
            cnt = 1;
            lgd = {};
            
            ax = axesNum;
            
            cla(ax)
            legend(ax,'off');
            hold(ax,"on")
            ax.YScale = (Yscale);
            ax.ColorOrder = lines(length(plotList));
            
            % reset 'NO LEGEND', 'JET COLORMAP'
            app.LEGENDButton.Value = 0;
            app.JETCOLORMAPButton_2.Value = 0;
            
            if app.GRIDOFFButton_2.Value
                grid(ax,"off")
            else
                grid(ax,"on")
            end
            
            for idx = plotList
                fd_base = app.FD_data.frequency{idx} * 10^-12;
                sampleID = app.FD_data.sampleList{idx};
                
                if isequal(plotInfo,'Amplitude')
                    fd_reference = app.FD_data.ref_amplitude{idx};
                    fd_sample = app.FD_data.sam_amplitude{idx};
                    ylabel(ax,'E_{field intensity} (a.u.)');
                    title(ax,'Amplitude')
                else
                    fd_reference = app.FD_data.ref_phase{idx};
                    fd_sample = app.FD_data.sam_phase{idx};
                    ylabel(ax,'Phase');
                    title(ax,'Phase')
                end
                
                switch plotType
                    case 'Sample'
                      plot(ax,fd_base,fd_sample,'linewidth',1);
                      lgd{cnt} = sampleID;
                      cnt = cnt + 1;
                    case 'Reference'
                      plot(ax,fd_base,fd_reference,'linewidth',1);
                    otherwise
                      plot(ax,fd_base,fd_reference...
                          ,fd_base,fd_sample,'linewidth',1);
                end
                
            end
            
            if isequal(plotType,'Sample')
                legend(ax,(lgd),'Location',"best",'Interpreter','none');
                legend(ax,"hide");
            end
            
            hold(ax,"off")
            
        end
        
        function plotFD_data2(app,axesNum)
            plotList = app.FD_select_2;
            ax = axesNum;
            
            if isempty(plotList)
                return;
            end
            
            plotType = app.PlotDataButtonGroup.SelectedObject.Text;
            plotInfo = app.MagPhaseButtonGroup_2.SelectedObject.Text;
            Yscale = app.YscaleButtonGroup_2.SelectedObject.Text;
            realImag = app.RealImagButtonGroup.SelectedObject.Text;
            cnt = 1;
            lgd = {};
            
            cla(ax)
            legend(ax,'off');
            hold(ax,"on")
            ax.YScale = (Yscale);
            ax.ColorOrder = lines(length(plotList));
            
            % reset 'NO LEGEND', 'JET COLORMAP'
            app.LEGENDButton.Value = 0;
            app.JETCOLORMAPButton_2.Value = 0;

            if app.GRIDOFFButton_3.Value
                grid(ax,"off")
            else
                grid(ax,"on")
            end
    
            if size(plotType,1) == 2;
                plotType = strjoin(plotType(1));
            end
            
                       
            for idx = plotList
                fd_base = app.FD_data.frequency{idx} * 10^-12;
                sampleID = app.FD_data.sampleList{idx};
                lgd{cnt} = sampleID;
                cnt = cnt + 1;
                
                if isequal(plotInfo,'Amplitude')
                    fd_transmit = app.FD_data.transmit_amplitude{idx};
                    ylabel(ax,'Amplitude');
                else
                    fd_transmit = app.FD_data.transmit_phase{idx};
                    ylabel(ax,'Phase');
                end
                
                switch plotType
                    case 'TRANSMITTANCE'
                      plot(ax,fd_base,fd_transmit,'linewidth',1);
                      title(ax,'Transmittance');
                    case 'ABSORPTION'
                      fd_absorption = app.FD_data.absorption{idx};
                      plot(ax,fd_base,fd_absorption,'linewidth',1);
                      ylabel(ax,'Absorption coefficient (cm^{-1})');
                      title(ax,'Absorption');
                    case 'REFRACTIVE'
                      if isequal(realImag,'Real')
                          fd_refIdx = app.FD_data.refractiveIndex{idx};
                          ylabel(ax,'n',"FontSize",13);
                      else
                          fd_refIdx = app.FD_data.extinction{idx};
                          ylabel(ax,'\kappa',"FontSize",13);
                      end
                      plot(ax,fd_base,fd_refIdx,'linewidth',1);
                      title(ax,'Refractive Index')
                    otherwise
                      if isequal(realImag,'Real')
                          fd_dielectric = app.FD_data.eReal{idx};
                          ylabel(ax,'\epsilon\prime',"FontSize",13);
                      else
                          fd_dielectric = app.FD_data.eImag{idx};
                          ylabel(ax,'\epsilon\prime\prime',"FontSize",13);
                      end
                      plot(ax,fd_base,fd_dielectric,'Linewidth',1);
                      title(ax,'Dielectric Constant');                       
                end
                
            end
            
            legend(ax,(lgd),'Location',"best",'Interpreter','none');
            legend(ax,"hide");
            hold(ax,"off")
            
            
        end
        
        function FD_PlotData_reset(app)
%           app.TRANSMITTANCEButton.Enable = true;
            app.ABSORPTIONButton.Enable = false;
            app.REFRACTIVEINDEXButton.Enable = false;
            app.DIELECTRICCONSTANTButton.Enable = false;
        end
        
        function plotFD_dataNew(app)
            % Create UIFigure and hide until all components are created
            fig = uifigure('Visible', 'on');
            fig.Position = [100 100 1200 800];
            fig.Name = app.ProjectsEditField.Value;

            % Create UIAxes
            ax = uiaxes(fig);
            xlabel(ax, 'Frequency (THz)')
            ax.Position = [20 10 1140 780];
%             ax.YLim = [0 100];

             plotList = app.FD_select_2;
            
            if isempty(plotList)
                return;
            end
            
            plotType = app.PlotDataButtonGroup.SelectedObject.Text;
            plotInfo = app.MagPhaseButtonGroup_2.SelectedObject.Text;
            Yscale = app.YscaleButtonGroup_2.SelectedObject.Text;
            realImag = app.RealImagButtonGroup.SelectedObject.Text;
            cnt = 1;
            lgd = {};        
            
            cla(ax)
            legend(ax,'off');
            hold(ax,"on")
            ax.YScale = (Yscale);
            ax.ColorOrder = flipud(jet(length(plotList)));
            
            % reset 'NO LEGEND', 'JET COLORMAP'
            app.LEGENDButton.Value = 0;
            app.JETCOLORMAPButton_2.Value = 0;
    
            if size(plotType,1) == 2;
                plotType = strjoin(plotType(1));
            end
            
            for idx = plotList
                fd_base = app.FD_data.frequency{idx} * 10^-12;
                sampleID = app.FD_data.sampleList{idx};
                lgd{cnt} = sampleID;
                cnt = cnt + 1;
%                 pause(1);
                
                if isequal(plotInfo,'Amplitude')
                    fd_transmit = app.FD_data.transmit_amplitude{idx};
                    ylabel(ax,'Amplitude');
                else
                    fd_transmit = app.FD_data.transmit_phase{idx};
                    ylabel(ax,'Phase');
                end

                switch plotType
                    case 'TRANSMITTANCE'
                      plot(ax,fd_base,fd_transmit,'linewidth',1);
                      title(ax,'Transmittance');
                    case 'ABSORPTION'
                      fd_absorption = app.FD_data.absorption{idx};
                      plot(ax,fd_base,fd_absorption,'linewidth',1);
                      ylabel(ax,'Absorption coefficient (cm^{-1})');
                      title(ax,'Absorption');
                    case 'REFRACTIVE'
                      fd_refIdx = app.FD_data.refractiveIndex{idx};
                      plot(ax,fd_base,fd_refIdx,'linewidth',1);
                      title(ax,'Refractive Index')
                    otherwise
                      if isequal(realImag,'Real')
                          fd_dielectric = app.FD_data.eReal{idx};
                      else
                          fd_dielectric = app.FD_data.eImag{idx};
                      end
                      plot(ax,fd_base,fd_dielectric,'Linewidth',1);
                      title(ax,'Dielectric Constant');                       
                end
                legend(ax,sampleID,'Interpreter','none');
            end
            
            legend(ax,(lgd),'Location',"best",'Interpreter','none');
            hold(ax,"off")
            
        end
        
        
        function output = TDSunwrap(app,pData,freq)
            % unwrapping functon
            %freq = app.FD_data.frequency{idx};
            
            %unwrapping starting frequency: 0.8THz due to its high SNR
            srtFreq = 0.8 * 1e12;
            srtLoc = find(freq > srtFreq,1);
            pData1 = unwrap(pData(srtLoc:end));
            pData2 = unwrap(pData(srtLoc:-1:1));
            pData3 = pData2(end:-1:2);
            pData = [pData3 pData1];
            
            % correction for lower frequency region(0 to 0.1THz) with extrapolation
            epol_srtFreq = 0.05 * 1e12;
            epol_endFreq = 0.4 * 1e12;
            epol_srtLoc = find(freq > epol_srtFreq,1);
            epol_endLoc = find(freq > epol_endFreq,1);
            epol_freq = freq(epol_srtLoc:epol_endLoc);
            epol_data = pData(epol_srtLoc:epol_endLoc);
            
            p = polyfit(epol_freq,epol_data,1);
            shift = p(2); % y-axis intersection point value
            output = pData - shift;
            
        end
        
        function findDMPeaks(app)
            dataList = str2num(app.SourceDataSetEditField.Value);
            pksProm = app.MinPeakProminenceEditField.Value;
            lowLimit = app.LowerLimitTHzEditField.Value *10^12;
            pkNum = app.PeakNumSpinner.Value;
            fig = app.CatsperUIFigure;
            ax = app.UIAxes9;
            hold(ax,"on")
            heightMat  = [];
            freqMat = [];
            
            if ~isempty(app.DM_peaks)
                delete(app.DM_peaks);
            end
            
            % arrange y-axis data
            for idx = dataList
                freq = app.FD_data.frequency{idx};
                dmData = app.DM_data.base{idx};
                lb = sum(freq<=lowLimit); % lower boundary

                if lb==0||lb==length(freq)
                    msg = strcat("Invalide lower limit");
                    app.LowerLimitTHzEditField.Value = 1;
                    uialert(fig,msg,'Warning');
                    return;
                end

                [pks, locs] = findpeaks(dmData(lb:end),freq(lb:end),'MinPeakProminence',pksProm);
                
                if pkNum > length(pks)
                    msg = strcat('Cannot find Peak-',num2str(pkNum),' from Dataset-',num2str(idx));
                    uialert(fig,msg,'Warning');
                    app.PeakNumSpinner.Value = 1;
                    return;
                end
                
                if ~isempty(pks)
                    heightMat = [heightMat pks(pkNum)];
                    freqMat = [freqMat locs(pkNum)];
                    plot(ax,locs,pks,'o');
                    text(ax,locs+.1,pks,num2str((1:numel(pks))'));
                end
            end
            hold(ax,"off")
                
            app.DM_data.heightMat = flip(heightMat);
            app.DM_data.freqMat = flip(freqMat);
        end
        
        
        function AdvFDbuttonsEnable(app,tf)
            app.ABSORPTIONButton.Enable = tf;
            app.REFRACTIVEINDEXButton.Enable = tf;
            app.DIELECTRICCONSTANTButton.Enable = tf;
            app.dataManipulationButton.Enable = tf;            
        end
        
        
        
        function tDelay = getTimeDelay(app,refTime,refSig,samTime,samSig)
            [Ref_max Ref_idx] = max(refSig);
            maxPerLocs = find(refSig >(Ref_max*0.8));
            maxLoc = maxPerLocs(round(length(maxPerLocs)/2));                        
            time_shift = refTime(maxLoc);
            refTime = refTime - time_shift;
            samTime = samTime - time_shift;
            
            Sam_max = max(samSig);
            maxPerLocs = find(samSig >(Sam_max*0.8));
            maxLoc = maxPerLocs(round(length(maxPerLocs)/2));
            tDelay = (round(samTime(maxLoc)*10^3))/10^3;            
        end
    end
    
    methods (Access = public)
        
        function updateThickness(app,thickness,pksProm,loc,All,refMdm,maxPer)
            
            TDselected = app.MeasurementListBox.Value;
            app.ThicknessmmEditField.Value = thickness;
            app.TD_data.thickness{TDselected} = thickness;
            
            if ~isequal(All,0)
                for TDindex = 1:app.TD_data.totalMeasNum
                    if isequal(All,1)
                        refT = app.TD_data.references{TDindex,1};
                        refE = app.TD_data.references{TDindex,2};
                        samT = app.TD_data.samples{TDindex,1};
                        samE = app.TD_data.samples{TDindex,2};
                        del_t = app.TD_data.settings{TDindex}.timeDelay;
                      
                        tShift = find(refT > del_t,1) - find(refT > 0,1);
                        refE = [zeros(1,tShift) refE(1:end-tShift)];
                        refE = refE * (max(samE)/max(refE));

                        % QUARTZ medium case is not reflected yet.
                        
                        pksLLimit = 4*del_t;
                        diff = samE - refE;
                        [pks, locs] = findpeaks(diff,refT,'MinPeakProminence',pksProm);
                        pks = pks(locs>pksLLimit);
                        locs = locs(locs>pksLLimit);
                     
                        mrt = locs(loc);
                        pkloc = find(refT == mrt,1);
                        
                        % peak time correction function
                        mrtAmp = diff(pkloc);
                        mrtRange = diff > mrtAmp*maxPer; % 0 and 1 vector
                        maxPerRange = 25;
                        mrtRange(1:pkloc-maxPerRange) = 0;
                        mrtRange(pkloc+maxPerRange:end) = 0;
                        mrt = sum(refT.*mrtRange)/sum(mrtRange);
                        
                        mrt = mrt *10^-12;
                        
                        del_t = del_t*10^-12;
                        thickness = floor((mrt - 3*del_t)*3e8/2*10^3*1000)/1000;
                    end
                    
                    % reflect updated thickness
                    app.TD_data.thickness{TDindex} = thickness;
                    TDanalysisUpdate(app,TDindex);
                end
            end
            TDanalysisUpdate(app,TDselected);
            
        end
        
        function updateFreqRange(app,limitFreq,all)
            FDindex = app.FDSelectionListBox_2.Value;
            filterList = FDindex;
            
            if all
                filterList = app.FD_select_2;
            end
                
            for FDindex = filterList
                % find limitFreq location
                freq = app.FD_data.frequency{FDindex};
                limitLoc = sum(freq < (limitFreq * 10^12));
                
                % update FD_data
                app.FD_data.ffd_references{FDindex}(limitLoc:end) = [];
                app.FD_data.ffd_samples{FDindex}(limitLoc:end) = [];
                app.FD_data.ref_amplitude{FDindex}(limitLoc:end) = [];
                app.FD_data.ref_phase{FDindex}(limitLoc:end) = [];
                app.FD_data.sam_amplitude{FDindex}(limitLoc:end) = [];
                app.FD_data.sam_phase{FDindex}(limitLoc:end) = [];
                app.FD_data.transmit_amplitude{FDindex}(limitLoc:end) = [];
                app.FD_data.transmit_phase{FDindex}(limitLoc:end) = [];
                app.FD_data.refractiveIndex{FDindex}(limitLoc:end) = [];
                app.FD_data.absorption{FDindex}(limitLoc:end) = [];    
                app.FD_data.frequency{FDindex}(limitLoc:end) = [];
                app.FD_data.extinction{FDindex}(limitLoc:end) = [];
                app.FD_data.eReal{FDindex}(limitLoc:end) = [];
                app.FD_data.eImag{FDindex}(limitLoc:end) = [];
            end 
        end
        
        function updateThickness2(app,thicknesses,updateList)
            for idx = updateList
                app.TD_data.thickness{idx} = thicknesses(idx);
                TDanalysisUpdate(app,idx);
            end
        end
        
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            app.PRJ_count = 0;
            app.filename = [];
            %app.DEBUGMsgLabel.Text = app.CatsperUIFigure.Tag;
        end

        % Value changed function: MeasurementListBox
        function MeasurementListBoxValueChanged(app, event)
            MeasNum = app.MeasurementListBox.Value;
            delta_t = app.TD_data.settings{MeasNum}.timeDelay;
            thickness = app.TD_data.thickness{MeasNum};
            n_eff = app.TD_data.settings{MeasNum}.refractiveIndex;
            etl_t = app.TD_data.settings{MeasNum}.internalReflection;
            
            description = app.TD_data.settings{MeasNum}.description;
            scanTime = app.TD_data.settings{MeasNum}.scanStartDateTime;
            insModel = app.TD_data.settings{MeasNum}.instrument;
            
            %display measurement setting
            app.DescriptionEditField.Value = description;
            app.ScanTimeEditField.Value = scanTime;
            app.InstrumentEditField.Value = insModel;
            
            %display sample detail
            app.TimedelaypsEditField.Value = delta_t;
            app.ThicknessmmEditField.Value = thickness;
            app.RefractiveIndexEditField.Value = n_eff;
            app.stinternalreflectionpsEditField.Value = etl_t;         
        end

        % Button pushed function: ADDButton
        function ADDButtonPushed(app, event)
            
            addItem = app.MeasurementListBox.Value;
            ListBoxItem = {};
            ListBoxItemValue = [];
            
            if isempty(addItem)
                return;
            end
            
            if ~sum(app.TD_select == addItem)
                app.TD_select = [app.TD_select addItem];
                app.TD_select = sort(app.TD_select);
                ListBoxItemValue = app.TD_select;
                
                for ListNo = 1:length(app.TD_select)
                   ItemNo = app.TD_select(ListNo);
                   AddItem = strjoin(app.TD_data.sampleList{ItemNo});
                   ListBoxItem{ListNo} = AddItem;
                end
                       
             app.SelectionListBox.ItemsData = ListBoxItemValue;
             app.SelectionListBox.Items = ListBoxItem;
            
            end
             
            if ~isequal(addItem,1)
                List = app.MeasurementListBox.ItemsData;
                curLoc = sum(List < addItem);
                if ~isequal(curLoc,0)
                    cursor = List(curLoc);
                    app.MeasurementListBox.Value = cursor;                  
                end

            end
            
        end

        % Button pushed function: TRANSFORMButton
        function TRANSFORMButtonPushed(app, event)
            
            % checking the current FD list number
            FDindexNum = size(app.FD_data.sampleList,2);
            FDindex = 0;
            
            ListBoxItem = app.FDListListBox.Items;
            addFDList = app.TD_select;
            isAutowindow = app.AUTOWINDOWButton.Value;
            min_freq = app.MinFreqEditField.Value;
            max_freq = app.MaxFreqEditField.Value;
            upscale = app.ZeroFillingpowerofSpinner.Value; 
            funcName = app.ApodizationFunctionDropDown.Value; %window function
            
            for cnt = 1:length(addFDList)
                
                TDindex = addFDList(cnt);
                
                % reference waveform 
                xSpacing = app.TD_data.settings{TDindex}.xSpacing;
                fs = 1/(xSpacing*10^-12); % obtain sampling frequency based on xSpacing value
                t_reference = app.TD_data.references{TDindex,1};
                E_reference = app.TD_data.references{TDindex,2};
                
                % sample waveform
                t_sample = app.TD_data.samples{TDindex,1};
                E_sample = app.TD_data.samples{TDindex,2};
                
                delta_t = app.TD_data.settings{TDindex}.timeDelay;
                
                % windowing
                etl_t = app.TD_data.settings{TDindex}.internalReflection;
                
                if isAutowindow
                    td_max = etl_t;
                    td_min = - etl_t + delta_t;
                else
                    td_max = app.MaxTimeEditField.Value;
                    td_min = app.MinTimeEditField.Value;
                end
                
                cutoff_low = sum(t_sample < td_min) + 1;
                cutoff_high = sum(t_sample < td_max);
                
                E_reference = E_reference(cutoff_low:cutoff_high);
                E_sample = E_sample(cutoff_low:cutoff_high);
                
                % window function
                if ~isequal(funcName,'Boxcar')
                    wf = str2func(funcName);
                    E_reference = E_reference.*...
                        window(wf,length(E_reference))';
                    E_sample = E_sample.*window(wf,length(E_sample))';
                end
                
                % fast Fourier tranform
                samNum = length(E_sample);
                N = 2^(nextpow2(length(E_sample))+upscale);
                
                FD_reference = fft(E_reference,N);
                FD_sample = fft(E_sample,N);
                
                % Calculate the double and single-sided spectra
                freqs = 0:fs/N:fs/2;
                FD_reference = FD_reference(1:N/2 + 1)/samNum;
                FD_sample = FD_sample(1:N/2 + 1)/samNum;
                % calculate the spectral resolution
                freqRes = fs/(N*10^12);
                app.Label.Text = num2str(freqRes,'%.3f');
                
                cutoff_low = sum(freqs < min_freq*10^12) + 1;
                cutoff_high = sum(freqs < max_freq*10^12); 
                
                FD_frequency = freqs(1:cutoff_high);                
                FD_reference = FD_reference(1:cutoff_high);
                FD_sample = FD_sample(1:cutoff_high);
                
                FDindex = cnt + FDindexNum;
                
                FTsetting = strcat(' ((',num2str(td_min,3),'-',num2str(td_max,3),'ps/'...
                    ,num2str(min_freq,3),'-',num2str(max_freq,3),'THz/'...
                    ,(funcName),'/',num2str(upscale),'upscale))');
                
                sampleID = strjoin(app.TD_data.sampleList{TDindex});
                FDsampleName = strcat(num2str(FDindex),':',sampleID);
                AddItem = strcat(FDsampleName,FTsetting);
                app.FD_data.sampleList{FDindex} = FDsampleName;
                app.FD_data.settings{FDindex} = FTsetting;
                ListBoxItem{FDindex} = AddItem;
                
                % calculate the number of etalon oscillations in the data
                etlNum_sam = floor((td_max - delta_t)/(etl_t-delta_t));
                etlNum_ref = 0;
                
                % input FD_data structure
                sampleID = matlab.lang.makeValidName(sampleID);
                app.FD_data.settings{FDindex} = ...
                    app.TD_data.settings{TDindex};
                app.FD_data.thickness{FDindex} = ...
                    app.TD_data.thickness{TDindex};
                app.FD_data.refThickness{FDindex} = 0;
                app.FD_data.settings{FDindex}.timeWindow = [td_min td_max];
                app.FD_data.settings{FDindex}.windowFunction = funcName;
                app.FD_data.settings{FDindex}.etlNum_ref = etlNum_ref;
                app.FD_data.settings{FDindex}.etlNum_sam = etlNum_sam;
                
                % unwrap phase data (calling TDS-unwrap function)
                app.FD_data.frequency{FDindex} = FD_frequency;
                uw_refPhase = TDSunwrap(app,angle(FD_reference),FD_frequency);
                uw_samPhase = TDSunwrap(app,angle(FD_sample),FD_frequency);
                
                % cut off lower frequency part
                FD_frequency = FD_frequency(cutoff_low:end);
                FD_reference = FD_reference(cutoff_low:end);
                FD_sample = FD_sample(cutoff_low:end);
                uw_refPhase = uw_refPhase(cutoff_low:end);
                uw_samPhase = uw_samPhase(cutoff_low:end);
                
                
                % allocating FD_data
                app.FD_data.frequency{FDindex} = FD_frequency;
                app.FD_data.ffd_references{FDindex} = FD_reference;
                app.FD_data.ffd_samples{FDindex} = FD_sample;
                app.FD_data.ref_amplitude{FDindex} = abs(FD_reference);
                app.FD_data.ref_phase{FDindex} = uw_refPhase;
                app.FD_data.sam_amplitude{FDindex} = abs(FD_sample);
                app.FD_data.sam_phase{FDindex} = uw_samPhase;
                
                % calculate Transmittance
                app.FD_data.transmit_amplitude{FDindex} =...
                    abs(FD_sample)./abs(FD_reference);
                app.FD_data.transmit_phase{FDindex} = ...
                    uw_refPhase - uw_samPhase;
                
            end
            
            app.FDListListBox.Items = ListBoxItem;
            app.FDListListBox.ItemsData = (1:FDindex);
        end

        % Button pushed function: PLOT1TDButton
        function PLOT1TDButtonPushed(app, event)
            plotTD_data(app,app.UIAxes1);
        end

        % Button pushed function: PLOT1FDButton
        function PLOT1FDButtonPushed(app, event)
            plotFD_data(app,app.UIAxes3);     
        end

        % Button pushed function: PLOT2FDButton
        function PLOT2FDButtonPushed(app, event)
            plotFD_data(app,app.UIAxes4);
        end

        % Callback function
        function YscaleButtonGroupSelectionChanged(app, event)
            selectedButton = app.YscaleButtonGroup.SelectedObject;
            
            if selectedButton == "logarithm"
                app.UIAxes1.YScale = "log";
            else
                app.UIAxes1.YScale = "linear";
            end
        end

        % Value changed function: AUTOWINDOWButton
        function AUTOWINDOWButtonValueChanged(app, event)
            value = app.AUTOWINDOWButton.Value;
            if value
                app.MaxTimeEditField.Enable = "off";
                app.MinTimeEditField.Enable = "off";
            else
                app.MaxTimeEditField.Enable = "on";
                app.MinTimeEditField.Enable = "on";
            end
        end

        % Button pushed function: DELButton
        function DELButtonPushed(app, event)
            
            delItem = app.SelectionListBox.Value;
            ListBoxItem = {};
            ListBoxItemValue = [];
            
            if size(delItem,1)
                if  sum(app.TD_select == delItem)
                    app.TD_select = app.TD_select(app.TD_select~=delItem);
                    ListBoxItemValue = app.TD_select;
                
                    for ListNo = 1:length(app.TD_select)
                        ItemNo = app.TD_select(ListNo);
                        AddItem = strjoin(app.TD_data.sampleList{ItemNo});
                        ListBoxItem{ListNo} = AddItem;
                    end
         
                    app.SelectionListBox.ItemsData = ListBoxItemValue;
                    app.SelectionListBox.Items = ListBoxItem;
                    
                    if ~isempty(ListBoxItemValue)
                        curLoc = sum(ListBoxItemValue<delItem);
                        if isequal(curLoc,0)
                           curLoc = 1; 
                        end
                        cursor = ListBoxItemValue(curLoc);
                        app.SelectionListBox.Value = cursor;                           
                    end
                    
                end         
            end
        end

        % Button pushed function: ALLButton
        function ALLButtonPushed(app, event)
            ListBoxItemValue = app.MeasurementListBox.ItemsData;
            ListBoxItems = app.MeasurementListBox.Items;
            
            app.TD_select = ListBoxItemValue;            
            app.SelectionListBox.ItemsData = ListBoxItemValue;
            app.SelectionListBox.Items = ListBoxItems;
        end

        % Button pushed function: PLOT2TDButton
        function PLOT2TDButtonPushed(app, event)
            plotTD_data(app,app.UIAxes2);
        end

        % Button pushed function: REMOVEButton
        function REMOVEButtonPushed(app, event)
            delItem = app.FDListListBox.Value;
            ListBoxItems = app.FDListListBox.Items;
            
            if isempty(delItem)
                return;
            end
            
            FDdataDel(app,delItem);
            ListBoxItems(delItem) = [];

            for idx = delItem:length(app.FD_data.sampleList)
                ListBoxID = ListBoxItems{idx};
                sampleID = app.FD_data.sampleList{idx};
                
                repOld = strcat(num2str(idx+1),':');
                repNew = strcat(num2str(idx),':');
                
                sampleID = replace(sampleID,repOld,repNew);
                ListBoxID = replace(ListBoxID,repOld, repNew);
                
                app.FD_data.sampleList{idx} = sampleID;
                ListBoxItems{idx} = ListBoxID;
            end
            
            app.FDListListBox.Items = ListBoxItems;
            app.FDListListBox.ItemsData = (1:length(ListBoxItems));
            
            app.FD_select = {};
            app.FD_select_2 = {};
            app.FDSelectionListBox.Items = {};
            app.FDSelectionListBox_2.Items = {};
        end

        % Button pushed function: ALLFDButton
        function ALLFDButtonPushed(app, event)
            ListBoxItemValue = app.FDListListBox.ItemsData;
            app.FD_select = ListBoxItemValue;
            
            if isempty(ListBoxItemValue)
                return;
            end
                
            for ListNo = 1:length(app.FD_select)
                ItemNo = app.FD_select(ListNo);
                AddItem = app.FD_data.sampleList{ItemNo};
                ListBoxItem{ListNo} = AddItem;
            end
                       
            app.FDSelectionListBox.ItemsData = ListBoxItemValue;
            app.FDSelectionListBox.Items = ListBoxItem;
        end

        % Button pushed function: ADDFDButton
        function ADDFDButtonPushed(app, event)
            addItem = app.FDListListBox.Value;
            ListBoxItem = {};
            ListBoxItemValue = [];
            
            if isempty(addItem)
                return;
            end
            
            if ~sum(app.FD_select == addItem)
                app.FD_select = [app.FD_select addItem];
                app.FD_select = sort(app.FD_select);
                ListBoxItemValue = app.FD_select;
                
                for ListNo = 1:length(app.FD_select)
                   ItemNo = app.FD_select(ListNo);
                   AddItem = app.FD_data.sampleList{ItemNo};
                   ListBoxItem{ListNo} = AddItem;
                end
                       
             app.FDSelectionListBox.ItemsData = ListBoxItemValue;
             app.FDSelectionListBox.Items = ListBoxItem;
            
            end
            
            if ~isequal(addItem,1)
                List = app.FDListListBox.ItemsData;
                curLoc = sum(List < addItem);
                if ~isequal(curLoc,0)
                    cursor = List(curLoc);
                    app.FDListListBox.Value = cursor;                  
                end
            end  
        end

        % Button pushed function: DELFDButton
        function DELFDButtonPushed(app, event)
            delItem = app.FDSelectionListBox.Value;
            ListBoxItem = {};
            ListBoxItemValue = [];
            
            if size(delItem,1)
                if  sum(app.FD_select == delItem)
                    app.FD_select = app.FD_select(app.FD_select~=delItem);
                    ListBoxItemValue = app.FD_select;
                
                for ListNo = 1:length(app.FD_select)
                   ItemNo = app.FD_select(ListNo);
                   AddItem = app.FD_data.sampleList{ItemNo};
                   ListBoxItem{ListNo} = AddItem;
                end
                       
                app.FDSelectionListBox.ItemsData = ListBoxItemValue;
                app.FDSelectionListBox.Items = ListBoxItem;
                
                if ~isempty(ListBoxItemValue)
                    curLoc = sum(ListBoxItemValue<delItem);
                        if isequal(curLoc,0)
                           curLoc = 1; 
                        end
                    cursor = ListBoxItemValue(curLoc);
                    app.FDSelectionListBox.Value = cursor;
                end
            
            end         
            end
        end

        % Value changed function: DescriptionEditField
        function DescriptionEditFieldValueChanged(app, event)
            value = app.DescriptionEditField.Value;
%             Update = app.MeasurementListBox.Value;
            MeasNum = app.MeasurementListBox.Value;
            
            if isempty(MeasNum)
                return;
            end
            
            % update description
            app.TD_data.settings{MeasNum}.description = value;
        end

        % Value changed function: ThicknessmmEditField
        function ThicknessmmEditFieldValueChanged(app, event)
            value = app.ThicknessmmEditField.Value;
            
            if value <= 0
                fig = app.CatsperUIFigure;
                uialert(fig,'Please input a valid thickness','Invalid Thickness');
                return;
            end
            
            Update = app.MeasurementListBox.Value;
            
            if isempty(Update)
                return;
            end

            % update thickness
            TDindex = app.MeasurementListBox.Value;
            app.TD_data.thickness{TDindex} = value;
            
            % update correlated information
            TDanalysisUpdate(app,TDindex);
            
        end

        % Button pushed function: ASSIGNButtonTD
        function ASSIGNButtonTDPushed(app, event)
            assignin('base',"TD_data",app.TD_data);
        end

        % Button pushed function: ASSIGNButtonFD
        function ASSIGNButtonFDPushed(app, event)
            assignin('base',"FD_data",app.FD_data);
        end

        % Button pushed function: REMOVEALLButton
        function REMOVEALLButtonPushed(app, event)
            
            FDdataDel(app,':');         
            app.FDListListBox.Items = {};
            app.FDSelectionListBox.Items = {};
            app.FDSelectionListBox_2.Items = {};
            app.FD_select = [];
            app.FD_select_2 = [];
            FD_PlotData_reset(app);
        end

        % Button pushed function: SaveData_TD
        function SaveData_TDPushed(app, event)
            
            question = "Do you want to save all data?";
            answer = questdlg(question,'Data Range','Yes','No, only selected data','cancel');
            
            filter = {'*.mat';'*.*'};
            [filename, filepath] = uiputfile(filter);
            
            if isequal(filename,0)||isequal(filepath,0)
                return;          
            end
            
            
            fullfile = strcat(filepath,filename);
            
            if isequal(answer,'Yes')
                ListItems = app.MeasurementListBox.Items;
                TD_data = app.TD_data;
            else
                if isempty(app.TD_select)
                    warning('There are no selected data.')
                    return;
                end
                
                ListItems = app.SelectionListBox.Items;
                ListIdx = app.TD_select;
                cnt = 1
                
                for Idx = ListIdx
                   TD_data.samples{cnt,1} = app.TD_data.samples{Idx,1};
                   TD_data.samples{cnt,2} = app.TD_data.samples{Idx,2};
                   TD_data.references{cnt,1} = app.TD_data.references{Idx,1};
                   TD_data.references{cnt,2} = app.TD_data.references{Idx,2};
                   TD_data.sampleList{cnt} = app.TD_data.sampleList{Idx};
                   TD_data.settings{cnt} = app.TD_data.settings{Idx};
                   TD_data.thickness{cnt} = app.TD_data.thickness{Idx};
%                    TD_data.analysis{cnt} = app.TD_data.analysis{Idx}; %[Re_max, delta_t, n_eff, elt_t]
                 
                   cnt = cnt + 1;
                end
                TD_data.totalMeasNum = length(ListIdx);

            end
            save(fullfile,'TD_data','ListItems');
        end

        % Button pushed function: LoadData_TD
        function LoadData_TDButtonPushed(app, event)
            [filename, filepath] = uigetfile('*.mat');
            
            if isequal(filename,0)||isequal(filepath,0)
                return;
            end
            
            fullfile = strcat(filepath,filename);
            
            TDdataDel(app);
            load(fullfile);
            app.TD_data = TD_data;
            app.MeasurementListBox.Items = ListItems;
            app.MeasurementListBox.ItemsData = (1:length(ListItems));
            app.TRANSFORMButton.Enable = true;
            
            app.FD_data.sampleList = {};
            app.FD_data.settings = {};
        end

        % Button pushed function: SaveData_FD
        function SaveData_FDButtonPushed(app, event)
            
            filter = {'*.mat';'*.*'};
            [filename, filepath] = uiputfile(filter);
            
            if isequal(filename,0)||isequal(filepath,0)
                return;          
            end
            
            fullfile = strcat(filepath,filename);
            ListItems = app.FDListListBox.Items;
            ListItems2 = app.FDSelectionListBox_2.Items;
            FD_data = app.FD_data;
            save(fullfile,'FD_data','ListItems','ListItems2');
        end

        % Button pushed function: ALLFDButton_2
        function ALLFDButton_2Pushed(app, event)
            ListBoxItemValue = app.FDListListBox.ItemsData;
            app.FD_select_2 = ListBoxItemValue;
            
            if isempty(ListBoxItemValue)
                return;
            end
                
            for ListNo = 1:length(app.FD_select_2)
                ItemNo = app.FD_select_2(ListNo);
                AddItem = app.FD_data.sampleList{ItemNo};
                ListBoxItem{ListNo} = AddItem;
            end
                       
            app.FDSelectionListBox_2.ItemsData = ListBoxItemValue;
            app.FDSelectionListBox_2.Items = ListBoxItem;
            
            AdvFDbuttonsEnable(app,0);
        end

        % Button pushed function: ADDFDButton_2
        function ADDFDButton_2Pushed(app, event)
            addItem = app.FDListListBox.Value;
            ListBoxItem = {};
            ListBoxItemValue = [];
            
            if isempty(addItem)
                return;
            end
            
            if ~sum(app.FD_select_2 == addItem)
                app.FD_select_2 = [app.FD_select_2 addItem];
                app.FD_select_2 = sort(app.FD_select_2);
                ListBoxItemValue = app.FD_select_2;
                
                for ListNo = 1:length(app.FD_select_2)
                   ItemNo = app.FD_select_2(ListNo);
                   AddItem = app.FD_data.sampleList{ItemNo};
                   ListBoxItem{ListNo} = AddItem;
                end
                       
             app.FDSelectionListBox_2.ItemsData = ListBoxItemValue;
             app.FDSelectionListBox_2.Items = ListBoxItem;          
            end 
            
            if ~isequal(addItem,1)
                List = app.FDListListBox.ItemsData;
                curLoc = sum(List < addItem);
                if ~isequal(curLoc,0)
                    cursor = List(curLoc);
                    app.FDListListBox.Value = cursor;                  
                end
            end 
            
            AdvFDbuttonsEnable(app,0);
        end

        % Button pushed function: DELFDButton_2
        function DELFDButton_2Pushed(app, event)
            delItem = app.FDSelectionListBox_2.Value;
            ListBoxItem = {};
            ListBoxItemValue = [];
            
            if size(delItem,1)
                if  sum(app.FD_select_2 == delItem)
                    app.FD_select_2 = app.FD_select_2(app.FD_select_2~=delItem);
                    ListBoxItemValue = app.FD_select_2;
                
                for ListNo = 1:length(app.FD_select_2)
                   ItemNo = app.FD_select_2(ListNo);
                   AddItem = app.FD_data.sampleList{ItemNo};
                   ListBoxItem{ListNo} = AddItem;
                end
                       
                app.FDSelectionListBox_2.ItemsData = ListBoxItemValue;
                app.FDSelectionListBox_2.Items = ListBoxItem;
                
                if ~isempty(ListBoxItemValue)
                    curLoc = sum(ListBoxItemValue<delItem);
                        if isequal(curLoc,0)
                           curLoc = 1; 
                        end
                    cursor = ListBoxItemValue(curLoc);
                    app.FDSelectionListBox_2.Value = cursor;
                end
            
            end         
            end
        end

        % Value changed function: FDSelectionListBox_2
        function FDSelectionListBox_2ValueChanged(app, event)
            idx = app.FDSelectionListBox_2.Value;
            
            description = app.FD_data.settings{idx}.description;
            
            % thickness->FD_data.thickness(idx)=[sam ref]
            sam_thickness = app.FD_data.thickness{idx};
            ref_thickness = app.FD_data.refThickness{idx};
            etlNum_ref = app.FD_data.settings{idx}.etlNum_ref;
            etlNum_sam= app.FD_data.settings{idx}.etlNum_sam;
                       
            % display in EditTextFields
            app.DescriptionEditField_FD.Value = description;
            app.RefEditField.Value = ref_thickness;
            app.SampleEditField.Value = sam_thickness;
            app.RefNMREditField.Value = etlNum_ref;
            app.SampleNMREditField.Value = etlNum_sam;
                        
        end

        % Button pushed function: CALCULATEOPTICALPARAMATERSButton
        function CALCULATEOPTICALPARAMATERSButtonPushed(app, event)

            if isempty(app.FD_select_2)
                fig = app.CatsperUIFigure;
                uialert(fig,'There is no item to calcate in the list','Warning');
                return;
            end
            
            for FDindex = app.FD_select_2
                t_diff = abs(app.FD_data.thickness{FDindex} -...
                    app.FD_data.refThickness{FDindex});
                
                if isempty(app.FD_data.thickness{FDindex})
                    fig = app.CatsperUIFigure;
                    ID = app.FD_data.sampleList{FDindex};
                    msg = strcat((ID)," doesn't have the thickness information.");
                    uialert(fig,(msg),'Calculation Aborted');
                    return;
                end
                
                c = 299792458; % the speed of light
                n_medium = 1; % refractive index of medium
                n_reference = 1; % refractive indx of the reference
                n_sample = c.*app.FD_data.transmit_phase{FDindex}./...
                    (2*pi*app.FD_data.frequency{FDindex}.*t_diff*10^-3) + 1;
                
                % calcute the absorption coefficient, log base is 10.
                % equation 2 from Jepsen and Fisher
                ref_factor = 4.*n_medium.*n_reference./...
                    ((n_medium + n_reference).^2);
                sam_factor = 4.*n_medium.*n_sample./...
                    ((n_medium + n_sample).^2);
                scaleFactor = ref_factor./sam_factor;
                
                scaledTransmitMag = ...
                    app.FD_data.transmit_amplitude{FDindex}.*scaleFactor;
                
                absorption = -2./(t_diff*0.1).*log(scaledTransmitMag); % unit: cm^-1
                % calcuate extinction coefficients
                % 100 is for compensating cm to m in absorption calculation
                % absorption = 4pi*f*k/c -> k = c*absorption/4pi*f
                extinction = c*100*absorption./(4*pi*app.FD_data.frequency{FDindex});

                app.FD_data.refractiveIndex{FDindex} = n_sample;
                app.FD_data.absorption{FDindex} = absorption; 
                app.FD_data.extinction{FDindex} = extinction;
                
                % calculate dielectric constancts
                eReal = n_sample.^2 - extinction.^2;
                eImag = 2 * n_sample.*extinction;
                
                app.FD_data.eReal{FDindex} = eReal;
                app.FD_data.eImag{FDindex} = eImag;
                
            end
            
            % enable absorption, refractive index, dielectric constant btn
            AdvFDbuttonsEnable(app,1);
        end

        % Button pushed function: PLOT1FDButton_2
        function PLOT1FDButton_2Pushed(app, event)
            plotFD_data2(app,app.UIAxes3);
        end

        % Button pushed function: PLOT2FDButton_2
        function PLOT2FDButton_2Pushed(app, event)
            plotFD_data2(app,app.UIAxes4);
        end

        % Selection changed function: PlotDataButtonGroup
        function PlotDataButtonGroupSelectionChanged(app, event)
            selectedButton = app.PlotDataButtonGroup.SelectedObject.Text;
            
            if size(selectedButton,1) == 2;
                selectedButton = strjoin(selectedButton(1));
            end
            
            switch selectedButton
                case 'TRANSMITTANCE'
                    app.YscaleButtonGroup_2.Visible = true;
                    app.MagPhaseButtonGroup_2.Visible = true;
                    app.RealImagButtonGroup.Visible = false;
                
                case 'DIELECTRIC'
                    app.linearButton_2.Value = true;
                    app.YscaleButtonGroup_2.Visible = false;
                    app.MagPhaseButtonGroup_2.Visible = false;
                    app.RealImagButtonGroup.Visible = true;
                    
                case 'REFRACTIVE'
                    app.linearButton_2.Value = true;
                    app.YscaleButtonGroup_2.Visible = false;
                    app.MagPhaseButtonGroup_2.Visible = false;
                    app.RealImagButtonGroup.Visible = true;
                    
                otherwise
                    app.linearButton_2.Value = true;
                    app.YscaleButtonGroup_2.Visible = false;
                    app.MagPhaseButtonGroup_2.Visible = false; 
                    app.RealImagButtonGroup.Visible = false;
            end
            
        end

        % Callback function
        function PLOTREFRACTIVEINDICESButtonPushed(app, event)
            % Create UIFigure and hide until all components are created
            fig = uifigure('Visible', 'on');
            fig.Position = [100 100 1100 600];
            fig.Name = 'EFFECTIVE REFRACTIVE INDEX';

            % Create UIAxes
            ax = uiaxes(fig);
            title(ax, 'REFRACTIVE INDEX')
            xlabel(ax, 'SAMPLE LIST')
            ylabel(ax, 'REFRACTIVE INDEX (n)')
            ax.Position = [20 10 1065 550];

            labels= {};
            idxNum = app.TD_data.totalMeasNum;
            tList = [];
            
            for idx=1:idxNum
                labels{idx} = strrep(strjoin(app.TD_data.sampleList{idx}),'_',' ');
                tList =[tList app.TD_data.settings{idx}.refractiveIndex];
            end
            
            ax.XTick = (1:idxNum);
            ax.XTickLabel = labels;
            ax.XTickLabelRotation= 45;
            plot(ax,(1:idxNum),tList,'-o');
        end

        % Value changed function: LEGENDButton_2
        function LEGENDButton_2ValueChanged(app, event)
            value = app.LEGENDButton_2.Value;
            if isequal(value,0)
                legend(app.UIAxes1,"hide");
                legend(app.UIAxes2,"hide");
            else
                legend(app.UIAxes1,"show");
                legend(app.UIAxes2,"show");
            end
        end

        % Value changed function: JETCOLORMAPButton
        function JETCOLORMAPButtonValueChanged(app, event)
            value = app.JETCOLORMAPButton.Value;
            idxNum = length(app.TD_select);
            if isequal(value,1)
                app.UIAxes1.ColorOrder = flipud(jet(idxNum));
                app.UIAxes2.ColorOrder = flipud(jet(idxNum));
            else
                app.UIAxes1.ColorOrder = lines(idxNum);
                app.UIAxes2.ColorOrder = lines(idxNum);
            end
        end

        % Value changed function: LEGENDButton
        function LEGENDButtonValueChanged(app, event)
            value = app.LEGENDButton.Value;
             if isequal(value,0)
                legend(app.UIAxes3,"hide");
                legend(app.UIAxes4,"hide");
            else
                legend(app.UIAxes3,"show");
                legend(app.UIAxes4,"show");
            end
            
        end

        % Value changed function: JETCOLORMAPButton_2
        function JETCOLORMAPButton_2ValueChanged(app, event)
            value = app.JETCOLORMAPButton_2.Value;
            idxNum = length(app.FD_select_2);
            if isequal(value,1)
                app.UIAxes3.ColorOrder = flipud(jet(idxNum));
                app.UIAxes4.ColorOrder = flipud(jet(idxNum));
            else
                app.UIAxes3.ColorOrder = lines(idxNum);
                app.UIAxes4.ColorOrder = lines(idxNum);
            end
        end

        % Button pushed function: CHECKDYNAMICRANGEButton
        function CHECKDYNAMICRANGEButtonPushed(app, event)
            measNum = app.SelectionListBox.Value;
            td_max = app.MaxTimeEditField.Value;
            td_min = app.MinTimeEditField.Value;
            upscale = app.ZeroFillingpowerofSpinner.Value; 

            if isempty(measNum)
                fig = app.CatsperUIFigure;
                uialert(fig,'Select an item in the the list','Warning');
                return;
            end

            % reference waveform 
            xSpacing = app.TD_data.settings{measNum}.xSpacing;
            fs = 1/(xSpacing*10^-12); % obtain sampling frequency based on xSpacing value
            t_reference = app.TD_data.references{measNum,1};
            E_reference = app.TD_data.references{measNum,2};
                
            % sample waveform
            t_sample = app.TD_data.samples{measNum,1};
            E_sample = app.TD_data.samples{measNum,2};
                             
            cutoff_low = sum(t_sample < td_min) + 1;
            cutoff_high = sum(t_sample < td_max);
                
            E_reference = E_reference(cutoff_low:cutoff_high);
            E_sample = E_sample(cutoff_low:cutoff_high);
                
            % fast Fourier tranform
            samNum = length(E_sample);
            N = 2^(nextpow2(length(E_sample))+upscale);
                
            FD_reference = fft(E_reference,N);
            FD_sample = fft(E_sample,N);
                
            % Calculate the double and single-sided spectra
            freqs = 0:fs/N:fs/2;
            FD_reference = FD_reference(1:N/2 + 1)/samNum;
            FD_sample = FD_sample(1:N/2 + 1)/samNum;
            
            cutoff_low = sum(freqs < 0.2*10^12) + 1;
            cutoff_high = sum(freqs < 5*10^12); 
                
            FD_frequency = freqs(1:cutoff_high);                
            FD_reference = FD_reference(1:cutoff_high);
            FD_sample = FD_sample(1:cutoff_high);

            uw_refPhase = TDSunwrap(app,angle(FD_reference),FD_frequency);
            uw_samPhase = TDSunwrap(app,angle(FD_sample),FD_frequency);

            % cut off lower frequency part
            FD_frequency = FD_frequency(cutoff_low:end);
            FD_reference = FD_reference(cutoff_low:end);
            FD_sample = FD_sample(cutoff_low:end);
            uw_refPhase = uw_refPhase(cutoff_low:end);
            uw_samPhase = uw_samPhase(cutoff_low:end);
              
            % calculate Transmittance
            transmAmp = abs(FD_sample)./abs(FD_reference);
            transmPha = uw_refPhase - uw_samPhase;
         
            % calculate the absorption coefficient, the logartihm base is e.
            % equation 2 from Jepsen and Fisher (DOI: 10.1364/ol.30.000029)
            
            c = 299792458; % the speed of light
            n_medium = 1; % refractive index of medium
            n_reference = 1; % refractive indx of the reference
            thickness = app.TD_data.thickness{measNum};
            n_sample = c.*transmPha./(2*pi*FD_frequency.*thickness*10^-3) + 1;
            ref_factor = 4*n_medium*n_reference/((n_medium + n_reference).^2);
            sam_factor = 4*n_medium*n_sample/((n_medium + n_sample).^2);
            scaleFactor = ref_factor/sam_factor;
            scaledTransmitMag = transmAmp*scaleFactor;
                
            absorption = -2./(thickness*0.1).*log(scaledTransmitMag); % unit: cm^-1
  
            % Find the selected item in the list box
            refF = abs(FD_frequency);
            refE = abs(FD_reference);
            samA = absorption;
            sampleID = strjoin(app.TD_data.sampleList{measNum});
            n_eff = app.TD_data.settings{measNum}.refractiveIndex;
            
            app.DialogApp = DR_Checker(app,refF,refE,samA,n_eff,thickness,sampleID);
        end

        % Button pushed function: PLOTNEWFDButton
        function PLOTNEWFDButtonPushed(app, event)
            plotFD_dataNew(app);
        end

        % Button pushed function: dataManipulationButton
        function dataManipulationButtonPushed(app, event)
            dataList = app.FD_select_2;
            dataList2 = app.FDSelectionListBox_2.Items;
            dataList2v = app.FDSelectionListBox_2.ItemsData;
            app.AvailableDataSetEditField.Value = num2str(dataList);
            app.data3DDropDown.Items = dataList2;
            app.data3DDropDown.ItemsData = dataList2v;
            app.DM_data.set = 'FD_data';
            itemList = {'frequency', 'ref_amplitude', 'ref_phase', 'sam_amplitude', 'sam_phase', 'transmit_amplitude', 'transmit_phase', 'refractiveIndex', 'absorption', 'extinction', 'eReal', 'eImag'};
            app.AforDropDown.Items = itemList;
            app.BforDropDown.Items = itemList;
            app.CforDropDown.Items = itemList;
            app.TabGroup.SelectedTab = app.TabGroup.Children(3);
        end

        % Button pushed function: IMPORTALLDATAButton
        function IMPORTALLDATAButtonPushed(app, event)
            dataList = app.FD_select_2;
            app.SourceDataSetEditField.Value = num2str(dataList);
        end

        % Button pushed function: CALCULATEButton_2
        function CALCULATEButton_2Pushed(app, event)
            dataList = str2num(app.SourceDataSetEditField.Value);
            app.NumberofDataEditField.Value = length(dataList);
            app.PLOTindividualdatasetsButton.Enable = "on";
            app.PLOTmeanandrangeButton.Enable = "on";
            
            Func = app.YaxisDataFormulationEditField.Value;
            
            if isempty(Func)
                return;
            end
            
            dataSrc = app.DM_data.set;
            
            for idx = dataList
                A = app.AforDropDown.Value;
                B = app.BforDropDown.Value;
                C = app.CforDropDown.Value;
                
                A = app.(dataSrc).(A){idx};
                B = app.(dataSrc).(B){idx};
                C = app.(dataSrc).(C){idx};
                
                output = eval([(Func)]);
                app.DM_data.base{idx} = output;
            end
        end

        % Button pushed function: PLOTindividualdatasetsButton
        function PLOTindividualdatasetsButtonPushed(app, event)
            
%             if ~exist('app.FD_data.DM1')
%                 display("no data to plot")
%                 return;
%             end
            
            ax = app.UIAxes9;
            
            cla(ax);
            dataList = str2num(app.SourceDataSetEditField.Value);
            ax.YLabel.String = app.YaxisDataFormulationEditField.Value;
            hold(ax,"on");
            
            xData = app.XaxisDataDropDown.Value;
            dataSrc = app.DM_data.set;
            
            for idx = dataList
                plot(ax,app.(dataSrc).(xData){idx},app.DM_data.base{idx},"LineWidth",1);
            end
            
            A = app.AforDropDown.Value;
            B = app.BforDropDown.Value;
            C = app.CforDropDown.Value;
            ylabel = strrep(app.YaxisDataFormulationEditField.Value,'A',A);
            ylabel = strrep(ylabel,'B',B);
            ylabel = strrep(ylabel,'C',C);
            
            ax.reset;
            ax.YLabel.String = ylabel;
            ax.YLabel.Interpreter = "none";
            ax.XLabel.String = app.XaxisDataDropDown.Value;
            hold(ax,"off");
            
        end

        % Button pushed function: DISPLAYXLINESButton
        function DISPLAYXLINESButtonPushed(app, event)
            ax = app.UIAxes9;
            selectedFreq = str2num(app.GetDatafromFrequencyTHzEditField.Value);
            
            for idx = selectedFreq
                idxLoc = idx*10^12;
                xlineName = strcat(num2str(idx)," THz");
                xline(ax,idxLoc,'--r',xlineName);
            end
        end

        % Button pushed function: REARRANGEDATAButton
        function REARRANGEDATAButtonPushed(app, event)
            dataList = str2num(app.SourceDataSetEditField.Value);
            freqList = str2num(app.GetDatafromFrequencyTHzEditField.Value);
            cnt1 = 0;
            
            for freqIdx = freqList
                dmData = [];
                xtempList = [];
                cnt1 = cnt1 +1;
                cnt2 = length(dataList);
                
                for idx = dataList
                    freq = app.FD_data.frequency{idx};
                    freqTHz = freqIdx * 10^12;
                    freqLoc = find(freq > freqTHz,1);
                    dmData = [app.DM_data.base{idx}(freqLoc) dmData];
                    
                    xList = app.FD_data.sampleList{idx};
                    comLoc = strfind(xList,':');
                    barLoc = strfind(xList,'_');
                    preName = xList(comLoc+1:barLoc-1);
                    xTemp = xList(barLoc + 1:end);
                    xtempList{cnt2} = xTemp;
                    cnt2 = cnt2 - 1;
                end
                
                app.MeasurementEditField.Value = preName;
                dataFreq = strcat(num2str(freqIdx)," THz");
                app.DM_data.freq{cnt1} = dataFreq;
                app.DM_data.values{cnt1} = dmData;
            end
            
            app.DM_count = cnt1;
            app.DM_data.tempList = xtempList;
            app.XaxisDataEditField.Value = cell2mat(xtempList);
            app.PLOTButton_2.Enable = "on";
        end

        % Button pushed function: PLOTButton_2
        function PLOTButton_2Pushed(app, event)
            ax = app.UIAxes10;
            lgd = {};
            labels = app.DM_data.tempList;
            numLabels = length(labels);
            
            cla(ax)
            hold(ax,"on")
            
            for idx = 1:app.DM_count
                lgd{idx} = app.DM_data.freq{idx};
                yData = app.DM_data.values{idx};
                plot(ax,yData,'--o','LineWidth',1);
            end
            
            ax.reset;
            ax.XTick = (1:numLabels);
            ax.XLabel.String = app.XLabelEditField.Value;
            ax.Title.String = app.MeasurementEditField.Value;
            ax.XTickLabel = labels;
            ax.XTickLabelRotation= 45;
            legend(ax,lgd,'Interpreter','none');
            hold(ax,"off")
        end

        % Button pushed function: ASSIGNButtonDM
        function ASSIGNButtonDMPushed(app, event)
            assignin('base',"DM_data",app.DM_data);
        end

        % Button pushed function: REARRANGEDATAButton_2
        function REARRANGEDATAButton_2Pushed(app, event)
            dataList = str2num(app.SourceDataSetEditField.Value);
            cnt = length(dataList);
            
            app.findDMPeaks;
         
            % arrange x-axis data
            for idx = dataList
                xList = app.FD_data.sampleList{idx};
                comLoc = strfind(xList,':');
                barLoc = strfind(xList,'_');
                preName = xList(comLoc+1:barLoc-1);
                xTemp = xList(barLoc + 1:end);
                xtempList{cnt} = xTemp;
                cnt = cnt - 1;
            end
           
            app.MeasurementEditField_2.Value = preName;
            app.DM_data.tempList = xtempList;
            app.XaxisDataEditField_2.Value = cell2mat(xtempList);
        end

        % Callback function
        function MinPeakProminenceSliderValueChanged(app, event)
            value = app.MinPeakProminenceSlider.Value;
            app.MinPeakProminenceEditField.Value = value;
            findDMPeaks(app);
        end

        % Callback function
        function EditFieldValueChanged(app, event)
            value = app.MinPeakProminenceEditField.Value;
            app.MinPeakProminenceSlider.Value = value;
            findDMPeaks(app);
        end

        % Value changed function: LowerLimitTHzEditField
        function LowerLimitTHzEditFieldValueChanged(app, event)
            findDMPeaks(app);
        end

        % Button pushed function: PLOTButton_3
        function PLOTButton_3Pushed(app, event)
            ax = app.UIAxes10;
            labels = app.DM_data.tempList;
            numLabels = length(labels);
            
            cla(ax)
            
            yData = app.DM_data.freqMat;
            plot(ax,(1:numLabels),yData,'--o','LineWidth',1);
                        
            ax.reset;
            ax.XTick = (1:numLabels);
            ax.XLabel.String = app.XLabelEditField_2.Value;
            ax.Title.String = app.MeasurementEditField_2.Value;
            ax.XTickLabel = labels;
            ax.XTickLabelRotation= 45;
        end

        % Button pushed function: CLEARMEMORYButton
        function CLEARMEMORYButtonPushed(app, event)
%               fig = app.CatsperUIFigure;
                question = "Do you want to clear memory?";
                answer = questdlg(question,'Warning');
                
            if answer == 'Yes'
                app.TD_data = [];
                app.FD_data = [];
                app.DM_data = [];
                app.TD_select = [];
                app.FD_select = [];
                app.FD_select_2 = [];
                app.MeasurementListBox.Items = {};
                app.SelectionListBox.Items = {};
                app.FDListListBox.Items = {};
                app.FDSelectionListBox.Items = {};
                app.FDSelectionListBox_2.Items = {};
                app.filename = [];
                app.fullpathname = [];
                app.PRJ_count = 0;
                app.DEBUGMsgLabel.Text = '';
                app.ProjectsEditField.Value = '';
            end
        end

        % Callback function
        function SwitchValueChanged(app, event)
            value = app.Switch.Value;
            if value == "On"
                B = app.BSlider.Value;
                app.BEditField.Value = B;
                b = app.bSlider.Value;
                app.GAAdjustbEditField.Value = b;
                updateCFPlot(app);
            end
        end

        % Callback function
        function ContantCEditFieldValueChanged(app, event)
            updateCFPlot(app);
        end

        % Value changed function: MinPeakProminenceEditField
        function MinPeakProminenceEditFieldValueChanged(app, event)
            findDMPeaks(app);
        end

        % Value changed function: PeakNumSpinner
        function PeakNumSpinnerValueChanged(app, event)
            findDMPeaks(app);
        end

        % Button pushed function: LoadData_FD
        function LoadData_FDButtonPushed(app, event)
            [filename, filepath] = uigetfile('*.mat');
            
            if isequal(filename,0)||isequal(filepath,0)
                return;
            end
            
            fullfile = strcat(filepath,filename);
            
            load(fullfile);
            FDdataDel(app,:);
            app.FD_data = FD_data;
            app.FDListListBox.Items = ListItems;
            app.FDListListBox.ItemsData = (1:length(ListItems));
            app.FDSelectionListBox_2.Items = ListItems;
            app.FDSelectionListBox_2.ItemsData = (1:length(ListItems));
        end

        % Callback function
        function SampleCase1DropDownValueChanged(app, event)
            idx = app.SampleCase1DropDown.Value;
          
            description = app.FD_data.settings{idx}.description;
            sam_thickness = app.FD_data.thickness{idx};
            ref_thickness = app.FD_data.refThickness{idx};
            etlNum_ref = app.FD_data.settings{idx}.etlNum_ref;
            etlNum_sam= app.FD_data.settings{idx}.etlNum_sam;
            
            % display in EditTextFields
            app.case1DescriptionEditField.Value = description;
            app.case1RefTEditField.Value = ref_thickness;
            app.case1SampleTEditField.Value = sam_thickness;
            app.case1RefetlNumEditField.Value = etlNum_ref;
            app.case1SampleetlNumEditField.Value = etlNum_sam;
        end

        % Callback function
        function SampleCase2DropDownValueChanged(app, event)
            idx = app.SampleCase2DropDown.Value;
          
            description = app.FD_data.settings{idx}.description;
            sam_thickness = app.FD_data.thickness{idx};
            ref_thickness = app.FD_data.refThickness{idx};
            etlNum_ref = app.FD_data.settings{idx}.etlNum_ref;
            etlNum_sam= app.FD_data.settings{idx}.etlNum_sam;
            
            % display in EditTextFields
            app.case2DescriptionEditField.Value = description;
            app.case2RefTEditField.Value = ref_thickness;
            app.case2SampleTEditField.Value = sam_thickness;
            app.case2RefetlNumEditField.Value = etlNum_ref;
            app.case2SampleetlNumEditField.Value = etlNum_sam;
        end

        % Callback function
        function FITCASE1ButtonPushed(app, event)
            idx = app.SampleCase1DropDown.Value;
            app.ASSIGNButtonOP.Enable = 0;
            algorithmSearch(app,idx,1);   
            app.ASSIGNButtonOP.Enable = 1;
        end

        % Callback function
        function FITCASE2ButtonPushed(app, event)
            idx = app.SampleCase2DropDown.Value;
            app.ASSIGNButtonOP.Enable = 0;
            algorithmSearch(app,idx,2);
            app.ASSIGNButtonOP.Enable = 1;
        end

        % Value changed function: JETCOLORMAPButton_DM
        function JETCOLORMAPButton_DMValueChanged(app, event)
            value = app.JETCOLORMAPButton_DM.Value;
            dataList = str2num(app.SourceDataSetEditField.Value);
            idxNum = length(dataList);
            if isequal(value,1)
                app.UIAxes9.ColorOrder = flipud(jet(idxNum));
            else
                app.UIAxes9.ColorOrder = lines(idxNum);
            end
        end

        % Button pushed function: PLOT1_3DButton
        function PLOT1_3DButtonPushed(app, event)
            ax = app.UIAxes9;
            idx = app.data3DDropDown.Value;
            
            if isequal(idx,'noavailabledata')
                fig = app.CatsperUIFigure;
                uialert(fig,'Import data set before using this function.','Warning');
                return;
            end
            
            cla(ax);
            dataList = str2num(app.SourceDataSetEditField.Value);
            hold(ax,"on");
            
            xData = app.XaxisDataDropDown.Value;
            dataSrc = app.DM_data.set;

            plot3(ax,app.(dataSrc).frequency{idx},app.(dataSrc).(xData){idx},app.DM_data.base{idx},"LineWidth",1);
            
            A = app.AforDropDown.Value;
            B = app.BforDropDown.Value;
            C = app.CforDropDown.Value;
            
            zlabel = strrep(app.YaxisDataFormulationEditField.Value,'A',A);
            zlabel = strrep(zlabel,'B',B);
            zlabel = strrep(zlabel,'C',C);
            
            ax.reset;
            ax.XLabel.String = "Frequency";
            ax.ZLabel.String = zlabel;
            ax.YLabel.String = app.XaxisDataDropDown.Value;
            hold(ax,"off");
        end

        % Button pushed function: SAVETDFDDMButton
        function SAVETDFDDMButtonPushed(app, event)
            
            % TD_data save
            question = "Do you want to save all data?";
            answer = questdlg(question,'Data Range','Yes','No, only selected data','cancel');
            
            filter = {'*.mat';'*.*'};
            [filename, filepath] = uiputfile(filter);
            
            if isequal(filename,0)||isequal(filepath,0)
                return;          
            end
            
            
            fullfile = strcat(filepath,filename);
            
            if isequal(answer,'Yes')
                ListItems = app.MeasurementListBox.Items;
                TD_data = app.TD_data;
            else
                if isempty(app.TD_select)
                    warning('There are no selected data.')
                    return;
                end
                
                ListItems = app.SelectionListBox.Items;
                ListIdx = app.TD_select;
                cnt = 1
                
                for Idx = ListIdx
                   TD_data.samples{cnt,1} = app.TD_data.samples{Idx,1};
                   TD_data.samples{cnt,2} = app.TD_data.samples{Idx,2};
                   TD_data.references{cnt,1} = app.TD_data.references{Idx,1};
                   TD_data.references{cnt,2} = app.TD_data.references{Idx,2};
                   TD_data.sampleList{cnt} = app.TD_data.sampleList{Idx};
                   TD_data.settings{cnt} = app.TD_data.settings{Idx};
                   TD_data.thickness{cnt} = app.TD_data.thickness{Idx};
                 
                   cnt = cnt + 1;
                end
                TD_data.totalMeasNum = length(ListIdx);

            end
            
            save(fullfile,'TD_data','TD_ListItems');
            
            % FD_data save
            FD_ListItems = app.FDListListBox.Items;
            FD_ListItems2 = app.FDSelectionListBox_2.Items;
            FD_data = app.FD_data;
            save(fullfile,'FD_data','FD_ListItems','FD_ListItems2');
            
            % DM_data save
            DM_ListItems = app.SourceDataSetEditField.Value;
            DM_data = app.DM_data;
            save(fullfile,'DM_data','DM_ListItems');
                  
        end

        % Button pushed function: SaveData_DM
        function SaveData_DMButtonPushed(app, event)
            filter = {'*.mat';'*.*'};
            [filename, filepath] = uiputfile(filter);
            
            if isequal(filename,0)||isequal(filepath,0)
                return;          
            end
            
            fullfile = strcat(filepath,filename);
            ListItems = app.FDListListBox.Items;
            ListItems2 = app.FDSelectionListBox_2.Items;
            DM_data = app.DM_data;
            save(fullfile,'DM_data');
        end

        % Callback function
        function ANALYSERButtonPushed(app, event)
            
            yList = app.DM_data.freq;
            Values = app.DM_data.values;
            tempList = app.DM_data.tempList;
                       
            app.DialogApp = DM_Analyser(app,yList,Values,tempList);
        end

        % Callback function
        function AlgorithmDropDownValueChanged(app, event)
            value = app.AlgorithmDropDown.Value;
            if isequal(value,'c')
                PLOTALLButtonPushed(app,event);
            end
        end

        % Button pushed function: PLOTmeanandrangeButton
        function PLOTmeanandrangeButtonPushed(app, event)
            ax = app.UIAxes9;
            
            cla(ax);
            dataList = str2num(app.SourceDataSetEditField.Value);
            ax.YLabel.String = app.YaxisDataFormulationEditField.Value;
            hold(ax,"on");
            
            xData = app.XaxisDataDropDown.Value;
            dataSrc = app.DM_data.set;
            baseMin = app.DM_data.base{dataList(1)};
            baseMax = app.DM_data.base{dataList(1)};
            baseMean = zeros(size(dataList,2),1);
            
            for idx = dataList
                baseCrt = app.DM_data.base{idx};
                baseMean = baseMean + baseCrt./size(dataList,2);
                baseMin = min(baseMin,baseCrt);
                baseMax = max(baseMax,baseCrt);
            end
             
            %plot(ax,app.(dataSrc).(xData){idx},baseMin,"LineWidth",1);
            %plot(ax,app.(dataSrc).(xData){idx},baseMax,"LineWidth",1);
            patch(ax,[app.(dataSrc).(xData){dataList(1)} app.(dataSrc).(xData){dataList(1)}(end:-1:1)],[baseMin baseMax(end:-1:1)],'r','FaceAlpha',0.1,'EdgeColor','none');
            plot(ax,app.(dataSrc).(xData){dataList(1)},baseMean,"LineWidth",1);
            
            A = app.AforDropDown.Value;
            B = app.BforDropDown.Value;
            C = app.CforDropDown.Value;
            ylabel = strrep(app.YaxisDataFormulationEditField.Value,'A',A);
            ylabel = strrep(ylabel,'B',B);
            ylabel = strrep(ylabel,'C',C);
            
            ax.reset;
%             ax.ColorOrder = flipud(jet(length(dataList)));
            ax.YLabel.String = ylabel;
            ax.XLabel.String = app.XaxisDataDropDown.Value;
            hold(ax,"off");
        end

        % Button pushed function: ImportTHzButton
        function ImportTHzButtonPushed(app, event)
            [filename, filepath] = uigetfile('*.thz');figure(app.CatsperUIFigure);
            
            PRJ_count = app.PRJ_count; % PRJ_count: number of project files imported

            if isequal(filename,0)||isequal(filepath,0)
                return;
            end

            % if the imported file is already exist in the list,
            % just return
            for cnt = 1:PRJ_count
                if isequal(app.filename{cnt},filename)
                    filename
                    return;
                end
            end

            PRJ_count = PRJ_count + 1;

            fileinfo = strcat(filepath,filename);
            app.filename{PRJ_count} = filename;
            app.fullpathname{PRJ_count} = fileinfo;
   
            allFileList = strjoin(app.filename,',');
            allFileList = strrep(allFileList,'.thz','');          
            app.ProjectsEditField.Value = allFileList;
            
            % initialization
            app.TD_select = [];
            app.FD_select = [];
            app.FD_select_2 = [];
            app.MeasurementListBox.Items = {};
            app.SelectionListBox.Items = {};
            app.FDListListBox.Items = {};
            app.FDSelectionListBox.Items = {};
            cla(app.UIAxes1)
            cla(app.UIAxes2)
            cla(app.UIAxes3)
            cla(app.UIAxes4)

            app.PRJ_count = PRJ_count;
          
        end

        % Button pushed function: DEPLOYButton
        function DEPLOYButtonPushed(app, event)
            idxCap = 1;
            TDdataDel(app);
            allListItems = {};

            for PRJcnt = 1:app.PRJ_count
                % import .thz file to the workspace
                fullpath = app.fullpathname{PRJcnt};

                if isempty(fullpath)
                     return;
                end

                thzInfo = h5info(fullpath);
                measNum = size(thzInfo.Datasets,1);
                ListItems = cell(measNum,1);
                [ListItems{:}] = deal(thzInfo.Datasets.Name);
                allListItems = [allListItems;ListItems];
    
                TD_data.totalMeasNum = measNum;
    
                for idx = 1:measNum
                    dn = strcat('/',ListItems{idx});
                    measData = h5read(fullpath,dn);
                    tDelay = h5readatt(fullpath,dn,"time delay");
                    thickness = h5readatt(fullpath,dn,"thickness");
                    n_eff = h5readatt(fullpath,dn,"n_eff");
                    etl_t = 0;
    
                    if isequal(size(measData,1),4)
                        TD_data.references{idxCap+idx-1,1} = measData(1,:);
                        TD_data.references{idxCap+idx-1,2} = measData(2,:);
                        TD_data.samples{idxCap+idx-1,1}= measData(3,:);
                        TD_data.samples{idxCap+idx-1,2}= measData(4,:);

                        if isequal(tDelay,0)
                            tDelay = getTimeDelay(app,measData(1,:),measData(2,:),measData(3,:),measData(4,:));
                        end

                        if ~isequal(thickness,0)
                            n_eff = tDelay*10^-12*3e8/(thickness*10^-3) + 1;
                            etl_t = tDelay + (2*thickness*10^-3*n_eff/3e8)*10^12;
                        end
                    else
                        TD_data.references{idxCap+idx-1,1} = [];
                        TD_data.references{idxCap+idx-1,2} = [];
                        TD_data.samples{idxCap+idx-1,1}= measData(1,:);
                        TD_data.samples{idxCap+idx-1,2}= measData(2,:);
                    end
    
                    TD_data.sampleList{idxCap+idx-1}=ListItems(idx);
                    TD_data.settings{idxCap+idx-1}.sampleName = dn;
                    TD_data.settings{idxCap+idx-1}.scanLength = size(measData,2);
                    TD_data.settings{idxCap+idx-1}.xSpacing = mean(diff(measData(3,:)));
                    TD_data.settings{idxCap+idx-1}.description = h5readatt(fullpath,dn,"description");
                    TD_data.settings{idxCap+idx-1}.scanStartDateTime = h5readatt(fullpath,dn,"date and time");
                    TD_data.settings{idxCap+idx-1}.timeDelay = tDelay;
                    TD_data.settings{idxCap+idx-1}.refractiveIndex = n_eff;
                    TD_data.settings{idxCap+idx-1}.internalReflection = etl_t;
                    TD_data.thickness{idxCap+idx-1} = thickness;
                    TD_data.temperature{idxCap+idx-1} = h5readatt(fullpath,dn,"temperature");
                    TD_data.concentration{idxCap+idx-1} = h5readatt(fullpath,dn,"concentration");
    
                    insModel = extractBefore(h5readatt(fullpath,dn,"instrument"),'/');
    
                    if isequal(insModel,"<missing>")
                        TD_data.settings{idxCap+idx-1}.instrument = '';
                    else
                        TD_data.settings{idxCap+idx-1}.instrument = insModel;
                    end
    
                end
                idxCap = idxCap + measNum;
            end

            app.TD_data = TD_data;
            app.MeasurementListBox.Items = allListItems;
            app.MeasurementListBox.ItemsData = (1:length(allListItems));
            app.TRANSFORMButton.Enable = true;
            
            app.FD_data.sampleList = {};
            app.FD_data.settings = {};
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Get the file path for locating images
            pathToMLAPP = fileparts(mfilename('fullpath'));

            % Create CatsperUIFigure and hide until all components are created
            app.CatsperUIFigure = uifigure('Visible', 'off');
            app.CatsperUIFigure.Position = [100 100 1457 971];
            app.CatsperUIFigure.Name = 'Catsper';
            app.CatsperUIFigure.Icon = fullfile(pathToMLAPP, 'CaT_logo.png');

            % Create TabGroup
            app.TabGroup = uitabgroup(app.CatsperUIFigure);
            app.TabGroup.Position = [28 41 1406 855];

            % Create TimeDomainTDTab
            app.TimeDomainTDTab = uitab(app.TabGroup);
            app.TimeDomainTDTab.Title = 'Time Domain (TD)';

            % Create UIAxes2
            app.UIAxes2 = uiaxes(app.TimeDomainTDTab);
            title(app.UIAxes2, 'PLOT 2')
            xlabel(app.UIAxes2, 'Time (ps)')
            ylabel(app.UIAxes2, 'E_{field intensity} (a.u.)')
            app.UIAxes2.PlotBoxAspectRatio = [2.08059701492537 1 1];
            app.UIAxes2.FontWeight = 'bold';
            app.UIAxes2.XLim = [-5 15];
            app.UIAxes2.XTickLabelRotation = 0;
            app.UIAxes2.YTickLabelRotation = 0;
            app.UIAxes2.ZTickLabelRotation = 0;
            app.UIAxes2.LineWidth = 1;
            app.UIAxes2.Box = 'on';
            app.UIAxes2.Position = [634 30 750 390];

            % Create UIAxes1
            app.UIAxes1 = uiaxes(app.TimeDomainTDTab);
            title(app.UIAxes1, 'PLOT 1')
            xlabel(app.UIAxes1, 'Time (ps)')
            ylabel(app.UIAxes1, 'E_{field intensity} (a.u.)')
            app.UIAxes1.PlotBoxAspectRatio = [2.08059701492537 1 1];
            app.UIAxes1.FontWeight = 'bold';
            app.UIAxes1.XLim = [-5 15];
            app.UIAxes1.XTickLabelRotation = 0;
            app.UIAxes1.YTickLabelRotation = 0;
            app.UIAxes1.ZTickLabelRotation = 0;
            app.UIAxes1.LineWidth = 1;
            app.UIAxes1.Box = 'on';
            app.UIAxes1.Position = [634 427 750 390];

            % Create MeasurementListBoxLabel
            app.MeasurementListBoxLabel = uilabel(app.TimeDomainTDTab);
            app.MeasurementListBoxLabel.HorizontalAlignment = 'right';
            app.MeasurementListBoxLabel.Position = [22 800 79 22];
            app.MeasurementListBoxLabel.Text = 'Measurement';

            % Create MeasurementListBox
            app.MeasurementListBox = uilistbox(app.TimeDomainTDTab);
            app.MeasurementListBox.Items = {};
            app.MeasurementListBox.ValueChangedFcn = createCallbackFcn(app, @MeasurementListBoxValueChanged, true);
            app.MeasurementListBox.Position = [22 381 215 418];
            app.MeasurementListBox.Value = {};

            % Create ADDButton
            app.ADDButton = uibutton(app.TimeDomainTDTab, 'push');
            app.ADDButton.ButtonPushedFcn = createCallbackFcn(app, @ADDButtonPushed, true);
            app.ADDButton.Position = [248 673 45 45];
            app.ADDButton.Text = 'ADD';

            % Create DELButton
            app.DELButton = uibutton(app.TimeDomainTDTab, 'push');
            app.DELButton.ButtonPushedFcn = createCallbackFcn(app, @DELButtonPushed, true);
            app.DELButton.Position = [248 609 45 45];
            app.DELButton.Text = 'DEL';

            % Create SelectionListBoxLabel
            app.SelectionListBoxLabel = uilabel(app.TimeDomainTDTab);
            app.SelectionListBoxLabel.Position = [308 800 55 22];
            app.SelectionListBoxLabel.Text = 'Selection';

            % Create SelectionListBox
            app.SelectionListBox = uilistbox(app.TimeDomainTDTab);
            app.SelectionListBox.Items = {};
            app.SelectionListBox.Position = [306 426 189 373];
            app.SelectionListBox.Value = {};

            % Create PLOT1TDButton
            app.PLOT1TDButton = uibutton(app.TimeDomainTDTab, 'push');
            app.PLOT1TDButton.ButtonPushedFcn = createCallbackFcn(app, @PLOT1TDButtonPushed, true);
            app.PLOT1TDButton.Position = [508 629 100 45];
            app.PLOT1TDButton.Text = 'PLOT1';

            % Create FFTSettingsPanel
            app.FFTSettingsPanel = uipanel(app.TimeDomainTDTab);
            app.FFTSettingsPanel.Title = 'FFT Settings';
            app.FFTSettingsPanel.FontWeight = 'bold';
            app.FFTSettingsPanel.Position = [303 80 305 319];

            % Create MinFreqEditFieldLabel
            app.MinFreqEditFieldLabel = uilabel(app.FFTSettingsPanel);
            app.MinFreqEditFieldLabel.HorizontalAlignment = 'right';
            app.MinFreqEditFieldLabel.Position = [31 242 59 23];
            app.MinFreqEditFieldLabel.Text = 'Min. Freq.';

            % Create MinFreqEditField
            app.MinFreqEditField = uieditfield(app.FFTSettingsPanel, 'numeric');
            app.MinFreqEditField.Limits = [0 5];
            app.MinFreqEditField.ValueDisplayFormat = '%.1f';
            app.MinFreqEditField.Position = [92 243 45 22];
            app.MinFreqEditField.Value = 0.2;

            % Create MaxFreqEditFieldLabel
            app.MaxFreqEditFieldLabel = uilabel(app.FFTSettingsPanel);
            app.MaxFreqEditFieldLabel.HorizontalAlignment = 'right';
            app.MaxFreqEditFieldLabel.Position = [141 242 63 23];
            app.MaxFreqEditFieldLabel.Text = 'Max. Freq.';

            % Create MaxFreqEditField
            app.MaxFreqEditField = uieditfield(app.FFTSettingsPanel, 'numeric');
            app.MaxFreqEditField.Limits = [0 10];
            app.MaxFreqEditField.ValueDisplayFormat = '%.1f';
            app.MaxFreqEditField.Position = [205 243 45 22];
            app.MaxFreqEditField.Value = 2.8;

            % Create THzLabel_4
            app.THzLabel_4 = uilabel(app.FFTSettingsPanel);
            app.THzLabel_4.Position = [254 242 27 22];
            app.THzLabel_4.Text = 'THz';

            % Create MaxTimeLabel
            app.MaxTimeLabel = uilabel(app.FFTSettingsPanel);
            app.MaxTimeLabel.HorizontalAlignment = 'right';
            app.MaxTimeLabel.Position = [149 108 62 23];
            app.MaxTimeLabel.Text = 'Max.Time';

            % Create MaxTimeEditField
            app.MaxTimeEditField = uieditfield(app.FFTSettingsPanel, 'numeric');
            app.MaxTimeEditField.Limits = [0 100];
            app.MaxTimeEditField.ValueDisplayFormat = '%.2f';
            app.MaxTimeEditField.Tooltip = {'set the maximum value of the sample waveform(s)'};
            app.MaxTimeEditField.Position = [215 109 45 22];
            app.MaxTimeEditField.Value = 20;

            % Create at1stinternalreflectionsLabel
            app.at1stinternalreflectionsLabel = uilabel(app.FFTSettingsPanel);
            app.at1stinternalreflectionsLabel.Position = [128 137 136 22];
            app.at1stinternalreflectionsLabel.Text = 'at 1st internal reflections';

            % Create TRANSFORMButton
            app.TRANSFORMButton = uibutton(app.FFTSettingsPanel, 'push');
            app.TRANSFORMButton.ButtonPushedFcn = createCallbackFcn(app, @TRANSFORMButtonPushed, true);
            app.TRANSFORMButton.FontWeight = 'bold';
            app.TRANSFORMButton.Enable = 'off';
            app.TRANSFORMButton.Position = [19 13 274 37];
            app.TRANSFORMButton.Text = 'TRANSFORM';

            % Create ApodizationFunctionDropDownLabel
            app.ApodizationFunctionDropDownLabel = uilabel(app.FFTSettingsPanel);
            app.ApodizationFunctionDropDownLabel.Position = [20 81 119 23];
            app.ApodizationFunctionDropDownLabel.Text = 'Apodization Function';

            % Create ApodizationFunctionDropDown
            app.ApodizationFunctionDropDown = uidropdown(app.FFTSettingsPanel);
            app.ApodizationFunctionDropDown.Items = {'Boxcar', 'Hamming', 'Bartlett', 'Blackman', 'Hann', 'Taylor', 'Triang'};
            app.ApodizationFunctionDropDown.ItemsData = {'Boxcar', 'hamming', 'bartlett', 'blackman', 'rectwin', 'hann', 'taylorwin', 'triang'};
            app.ApodizationFunctionDropDown.Position = [141 82 144 22];
            app.ApodizationFunctionDropDown.Value = 'Boxcar';

            % Create ZeroFillingpowerofSpinnerLabel
            app.ZeroFillingpowerofSpinnerLabel = uilabel(app.FFTSettingsPanel);
            app.ZeroFillingpowerofSpinnerLabel.Position = [62 190 129 23];
            app.ZeroFillingpowerofSpinnerLabel.Text = 'Zero Filling, + power of';

            % Create ZeroFillingpowerofSpinner
            app.ZeroFillingpowerofSpinner = uispinner(app.FFTSettingsPanel);
            app.ZeroFillingpowerofSpinner.Limits = [1 4];
            app.ZeroFillingpowerofSpinner.Position = [200 191 65 22];
            app.ZeroFillingpowerofSpinner.Value = 2;

            % Create orLabel
            app.orLabel = uilabel(app.FFTSettingsPanel);
            app.orLabel.Position = [18 109 25 22];
            app.orLabel.Text = 'or, ';

            % Create AUTOWINDOWButton
            app.AUTOWINDOWButton = uibutton(app.FFTSettingsPanel, 'state');
            app.AUTOWINDOWButton.ValueChangedFcn = createCallbackFcn(app, @AUTOWINDOWButtonValueChanged, true);
            app.AUTOWINDOWButton.Tooltip = {'set the time_max 1st multiple reflection time'};
            app.AUTOWINDOWButton.Text = 'AUTO WINDOW';
            app.AUTOWINDOWButton.BackgroundColor = [1 1 1];
            app.AUTOWINDOWButton.Position = [20 136 103 23];

            % Create FrequencyrangeLabel
            app.FrequencyrangeLabel = uilabel(app.FFTSettingsPanel);
            app.FrequencyrangeLabel.FontWeight = 'bold';
            app.FrequencyrangeLabel.Position = [18 268 102 22];
            app.FrequencyrangeLabel.Text = 'Frequency range';

            % Create FFTUpsamplingLabel
            app.FFTUpsamplingLabel = uilabel(app.FFTSettingsPanel);
            app.FFTUpsamplingLabel.FontWeight = 'bold';
            app.FFTUpsamplingLabel.Position = [18 212 99 22];
            app.FFTUpsamplingLabel.Text = 'FFT Upsampling';

            % Create WindowFunctionLabel
            app.WindowFunctionLabel = uilabel(app.FFTSettingsPanel);
            app.WindowFunctionLabel.FontWeight = 'bold';
            app.WindowFunctionLabel.Position = [17 160 105 22];
            app.WindowFunctionLabel.Text = 'Window Function';

            % Create psLabel_4
            app.psLabel_4 = uilabel(app.FFTSettingsPanel);
            app.psLabel_4.Position = [266 108 25 22];
            app.psLabel_4.Text = 'ps';

            % Create MinTimeEditFieldLabel
            app.MinTimeEditFieldLabel = uilabel(app.FFTSettingsPanel);
            app.MinTimeEditFieldLabel.HorizontalAlignment = 'right';
            app.MinTimeEditFieldLabel.Position = [37 109 54 22];
            app.MinTimeEditFieldLabel.Text = 'Min.Time';

            % Create MinTimeEditField
            app.MinTimeEditField = uieditfield(app.FFTSettingsPanel, 'numeric');
            app.MinTimeEditField.Limits = [-30 50];
            app.MinTimeEditField.ValueDisplayFormat = '%.2f';
            app.MinTimeEditField.Tooltip = {'Set the minimum value of the sample waveform(s)'};
            app.MinTimeEditField.Position = [95 109 37 22];
            app.MinTimeEditField.Value = -10;

            % Create Label
            app.Label = uilabel(app.FFTSettingsPanel);
            app.Label.Position = [165 57 51 22];
            app.Label.Text = '0';

            % Create SpectralResolutionTHzLabel
            app.SpectralResolutionTHzLabel = uilabel(app.FFTSettingsPanel);
            app.SpectralResolutionTHzLabel.Position = [20 57 143 22];
            app.SpectralResolutionTHzLabel.Text = 'Spectral Resolution(THz):';

            % Create PLOT2TDButton
            app.PLOT2TDButton = uibutton(app.TimeDomainTDTab, 'push');
            app.PLOT2TDButton.ButtonPushedFcn = createCallbackFcn(app, @PLOT2TDButtonPushed, true);
            app.PLOT2TDButton.Position = [508 576 100 45];
            app.PLOT2TDButton.Text = 'PLOT2';

            % Create ALLButton
            app.ALLButton = uibutton(app.TimeDomainTDTab, 'push');
            app.ALLButton.ButtonPushedFcn = createCallbackFcn(app, @ALLButtonPushed, true);
            app.ALLButton.Position = [248 737 45 45];
            app.ALLButton.Text = 'ALL';

            % Create ButtonGroupTD
            app.ButtonGroupTD = uibuttongroup(app.TimeDomainTDTab);
            app.ButtonGroupTD.Position = [508 720 100 78];

            % Create ReferenceButtonTD
            app.ReferenceButtonTD = uiradiobutton(app.ButtonGroupTD);
            app.ReferenceButtonTD.Text = 'Reference';
            app.ReferenceButtonTD.Position = [11 51 77 22];

            % Create SampleButtonTD
            app.SampleButtonTD = uiradiobutton(app.ButtonGroupTD);
            app.SampleButtonTD.Text = 'Sample';
            app.SampleButtonTD.Position = [11 29 63 22];

            % Create BothButtonTD
            app.BothButtonTD = uiradiobutton(app.ButtonGroupTD);
            app.BothButtonTD.Text = 'Both';
            app.BothButtonTD.Position = [11 7 65 22];
            app.BothButtonTD.Value = true;

            % Create LEGENDButton_2
            app.LEGENDButton_2 = uibutton(app.TimeDomainTDTab, 'state');
            app.LEGENDButton_2.ValueChangedFcn = createCallbackFcn(app, @LEGENDButton_2ValueChanged, true);
            app.LEGENDButton_2.Text = 'LEGEND';
            app.LEGENDButton_2.Position = [1142 11 99 22];

            % Create JETCOLORMAPButton
            app.JETCOLORMAPButton = uibutton(app.TimeDomainTDTab, 'state');
            app.JETCOLORMAPButton.ValueChangedFcn = createCallbackFcn(app, @JETCOLORMAPButtonValueChanged, true);
            app.JETCOLORMAPButton.Text = 'JET COLORMAP';
            app.JETCOLORMAPButton.Position = [1258 11 107 22];

            % Create GRIDOFFButton
            app.GRIDOFFButton = uibutton(app.TimeDomainTDTab, 'state');
            app.GRIDOFFButton.Text = 'GRID OFF';
            app.GRIDOFFButton.Position = [508 682 100 30];

            % Create SampleDetailsPanel
            app.SampleDetailsPanel = uipanel(app.TimeDomainTDTab);
            app.SampleDetailsPanel.Title = 'Sample Details';
            app.SampleDetailsPanel.FontWeight = 'bold';
            app.SampleDetailsPanel.Position = [17 80 268 255];

            % Create ThicknessmmEditFieldLabel
            app.ThicknessmmEditFieldLabel = uilabel(app.SampleDetailsPanel);
            app.ThicknessmmEditFieldLabel.HorizontalAlignment = 'right';
            app.ThicknessmmEditFieldLabel.Position = [75 102 91 22];
            app.ThicknessmmEditFieldLabel.Text = 'Thickness (mm)';

            % Create ThicknessmmEditField
            app.ThicknessmmEditField = uieditfield(app.SampleDetailsPanel, 'numeric');
            app.ThicknessmmEditField.Limits = [0 Inf];
            app.ThicknessmmEditField.ValueDisplayFormat = '%.3f';
            app.ThicknessmmEditField.ValueChangedFcn = createCallbackFcn(app, @ThicknessmmEditFieldValueChanged, true);
            app.ThicknessmmEditField.Position = [181 102 73 22];

            % Create TimedelaypsEditFieldLabel
            app.TimedelaypsEditFieldLabel = uilabel(app.SampleDetailsPanel);
            app.TimedelaypsEditFieldLabel.HorizontalAlignment = 'right';
            app.TimedelaypsEditFieldLabel.Position = [75 72 88 22];
            app.TimedelaypsEditFieldLabel.Text = 'Time delay (ps)';

            % Create TimedelaypsEditField
            app.TimedelaypsEditField = uieditfield(app.SampleDetailsPanel, 'numeric');
            app.TimedelaypsEditField.Editable = 'off';
            app.TimedelaypsEditField.Position = [181 72 73 22];

            % Create stinternalreflectionpsEditFieldLabel
            app.stinternalreflectionpsEditFieldLabel = uilabel(app.SampleDetailsPanel);
            app.stinternalreflectionpsEditFieldLabel.HorizontalAlignment = 'right';
            app.stinternalreflectionpsEditFieldLabel.Position = [31 13 140 22];
            app.stinternalreflectionpsEditFieldLabel.Text = '1st internal reflection (ps)';

            % Create stinternalreflectionpsEditField
            app.stinternalreflectionpsEditField = uieditfield(app.SampleDetailsPanel, 'numeric');
            app.stinternalreflectionpsEditField.ValueDisplayFormat = '%.3f';
            app.stinternalreflectionpsEditField.Editable = 'off';
            app.stinternalreflectionpsEditField.Position = [181 13 73 22];

            % Create RefractiveIndexEditFieldLabel
            app.RefractiveIndexEditFieldLabel = uilabel(app.SampleDetailsPanel);
            app.RefractiveIndexEditFieldLabel.HorizontalAlignment = 'right';
            app.RefractiveIndexEditFieldLabel.Position = [78 42 92 22];
            app.RefractiveIndexEditFieldLabel.Text = 'Refractive Index';

            % Create RefractiveIndexEditField
            app.RefractiveIndexEditField = uieditfield(app.SampleDetailsPanel, 'numeric');
            app.RefractiveIndexEditField.Editable = 'off';
            app.RefractiveIndexEditField.Position = [181 42 73 22];

            % Create DescriptionEditFieldLabel
            app.DescriptionEditFieldLabel = uilabel(app.SampleDetailsPanel);
            app.DescriptionEditFieldLabel.HorizontalAlignment = 'right';
            app.DescriptionEditFieldLabel.Position = [4 201 66 22];
            app.DescriptionEditFieldLabel.Text = 'Description';

            % Create DescriptionEditField
            app.DescriptionEditField = uieditfield(app.SampleDetailsPanel, 'text');
            app.DescriptionEditField.ValueChangedFcn = createCallbackFcn(app, @DescriptionEditFieldValueChanged, true);
            app.DescriptionEditField.Position = [76 201 180 22];

            % Create ScanTimeEditFieldLabel
            app.ScanTimeEditFieldLabel = uilabel(app.SampleDetailsPanel);
            app.ScanTimeEditFieldLabel.Position = [11 169 62 22];
            app.ScanTimeEditFieldLabel.Text = 'Scan Time';

            % Create ScanTimeEditField
            app.ScanTimeEditField = uieditfield(app.SampleDetailsPanel, 'text');
            app.ScanTimeEditField.Editable = 'off';
            app.ScanTimeEditField.Position = [76 169 180 22];

            % Create InstrumentEditFieldLabel
            app.InstrumentEditFieldLabel = uilabel(app.SampleDetailsPanel);
            app.InstrumentEditFieldLabel.HorizontalAlignment = 'right';
            app.InstrumentEditFieldLabel.Position = [6 137 62 22];
            app.InstrumentEditFieldLabel.Text = 'Instrument';

            % Create InstrumentEditField
            app.InstrumentEditField = uieditfield(app.SampleDetailsPanel, 'text');
            app.InstrumentEditField.Position = [76 137 180 22];

            % Create LoadData_TD
            app.LoadData_TD = uibutton(app.TimeDomainTDTab, 'push');
            app.LoadData_TD.ButtonPushedFcn = createCallbackFcn(app, @LoadData_TDButtonPushed, true);
            app.LoadData_TD.BackgroundColor = [0.9412 0.9412 0.9412];
            app.LoadData_TD.FontWeight = 'bold';
            app.LoadData_TD.Tooltip = {'Assign data to variable in the base workspace'};
            app.LoadData_TD.Position = [27 14 140 30];
            app.LoadData_TD.Text = 'LOAD TD DATA';

            % Create SaveData_TD
            app.SaveData_TD = uibutton(app.TimeDomainTDTab, 'push');
            app.SaveData_TD.ButtonPushedFcn = createCallbackFcn(app, @SaveData_TDPushed, true);
            app.SaveData_TD.BackgroundColor = [0.9412 0.9412 0.9412];
            app.SaveData_TD.FontWeight = 'bold';
            app.SaveData_TD.Tooltip = {'Assign data to variable in the base workspace'};
            app.SaveData_TD.Position = [175 14 140 30];
            app.SaveData_TD.Text = 'SAVE TD DATA';

            % Create ASSIGNButtonTD
            app.ASSIGNButtonTD = uibutton(app.TimeDomainTDTab, 'push');
            app.ASSIGNButtonTD.ButtonPushedFcn = createCallbackFcn(app, @ASSIGNButtonTDPushed, true);
            app.ASSIGNButtonTD.BackgroundColor = [0.9412 0.9412 0.9412];
            app.ASSIGNButtonTD.FontWeight = 'bold';
            app.ASSIGNButtonTD.Tooltip = {'Assign data to variable in the base workspace'};
            app.ASSIGNButtonTD.Position = [333 14 220 30];
            app.ASSIGNButtonTD.Text = 'ASSIGN TD DATA IN WORKSPACE';

            % Create CHECKDYNAMICRANGEButton
            app.CHECKDYNAMICRANGEButton = uibutton(app.TimeDomainTDTab, 'push');
            app.CHECKDYNAMICRANGEButton.ButtonPushedFcn = createCallbackFcn(app, @CHECKDYNAMICRANGEButtonPushed, true);
            app.CHECKDYNAMICRANGEButton.Position = [509 431 99 68];
            app.CHECKDYNAMICRANGEButton.Text = {'CHECK'; 'DYNAMIC'; 'RANGE'};

            % Create FrequencyDomainFDTab
            app.FrequencyDomainFDTab = uitab(app.TabGroup);
            app.FrequencyDomainFDTab.Title = 'Frequency Domain (FD)';

            % Create UIAxes3
            app.UIAxes3 = uiaxes(app.FrequencyDomainFDTab);
            title(app.UIAxes3, 'PLOT 1')
            xlabel(app.UIAxes3, 'Frequency (THz)')
            ylabel(app.UIAxes3, 'E_{field intensity} (a.u.)')
            app.UIAxes3.PlotBoxAspectRatio = [2.04477611940298 1 1];
            app.UIAxes3.FontWeight = 'bold';
            app.UIAxes3.XTickLabelRotation = 0;
            app.UIAxes3.YTickLabelRotation = 0;
            app.UIAxes3.YScale = 'log';
            app.UIAxes3.YMinorTick = 'on';
            app.UIAxes3.ZTickLabelRotation = 0;
            app.UIAxes3.LineWidth = 1;
            app.UIAxes3.Box = 'on';
            app.UIAxes3.Position = [639 433 750 390];

            % Create UIAxes4
            app.UIAxes4 = uiaxes(app.FrequencyDomainFDTab);
            title(app.UIAxes4, 'PLOT 2')
            xlabel(app.UIAxes4, 'Frequency (THz)')
            ylabel(app.UIAxes4, 'E_{field intensity} (a.u.)')
            app.UIAxes4.PlotBoxAspectRatio = [2.04477611940298 1 1];
            app.UIAxes4.FontWeight = 'bold';
            app.UIAxes4.XTickLabelRotation = 0;
            app.UIAxes4.YTickLabelRotation = 0;
            app.UIAxes4.YScale = 'log';
            app.UIAxes4.YMinorTick = 'on';
            app.UIAxes4.ZTickLabelRotation = 0;
            app.UIAxes4.LineWidth = 1;
            app.UIAxes4.Box = 'on';
            app.UIAxes4.Position = [639 38 750 390];

            % Create PLOT1FDButton
            app.PLOT1FDButton = uibutton(app.FrequencyDomainFDTab, 'push');
            app.PLOT1FDButton.ButtonPushedFcn = createCallbackFcn(app, @PLOT1FDButtonPushed, true);
            app.PLOT1FDButton.Position = [515 521 100 45];
            app.PLOT1FDButton.Text = 'PLOT1';

            % Create PLOT2FDButton
            app.PLOT2FDButton = uibutton(app.FrequencyDomainFDTab, 'push');
            app.PLOT2FDButton.ButtonPushedFcn = createCallbackFcn(app, @PLOT2FDButtonPushed, true);
            app.PLOT2FDButton.Position = [515 470 100 45];
            app.PLOT2FDButton.Text = 'PLOT2';

            % Create FDListListBoxLabel
            app.FDListListBoxLabel = uilabel(app.FrequencyDomainFDTab);
            app.FDListListBoxLabel.Position = [17 799 79 22];
            app.FDListListBoxLabel.Text = 'FD List';

            % Create FDListListBox
            app.FDListListBox = uilistbox(app.FrequencyDomainFDTab);
            app.FDListListBox.Items = {};
            app.FDListListBox.Position = [14 462 306 336];
            app.FDListListBox.Value = {};

            % Create ALLFDButton
            app.ALLFDButton = uibutton(app.FrequencyDomainFDTab, 'push');
            app.ALLFDButton.ButtonPushedFcn = createCallbackFcn(app, @ALLFDButtonPushed, true);
            app.ALLFDButton.Position = [331 715 45 45];
            app.ALLFDButton.Text = 'ALL';

            % Create ADDFDButton
            app.ADDFDButton = uibutton(app.FrequencyDomainFDTab, 'push');
            app.ADDFDButton.ButtonPushedFcn = createCallbackFcn(app, @ADDFDButtonPushed, true);
            app.ADDFDButton.Position = [331 655 45 45];
            app.ADDFDButton.Text = 'ADD';

            % Create DELFDButton
            app.DELFDButton = uibutton(app.FrequencyDomainFDTab, 'push');
            app.DELFDButton.ButtonPushedFcn = createCallbackFcn(app, @DELFDButtonPushed, true);
            app.DELFDButton.Position = [331 595 45 45];
            app.DELFDButton.Text = 'DEL';

            % Create FDSelectionListBoxLabel
            app.FDSelectionListBoxLabel = uilabel(app.FrequencyDomainFDTab);
            app.FDSelectionListBoxLabel.Position = [386 797 79 22];
            app.FDSelectionListBoxLabel.Text = 'FD Selection';

            % Create FDSelectionListBox
            app.FDSelectionListBox = uilistbox(app.FrequencyDomainFDTab);
            app.FDSelectionListBox.Items = {};
            app.FDSelectionListBox.Position = [386 462 116 336];
            app.FDSelectionListBox.Value = {};

            % Create ButtonGroupFD
            app.ButtonGroupFD = uibuttongroup(app.FrequencyDomainFDTab);
            app.ButtonGroupFD.Position = [515 721 100 78];

            % Create ReferenceButtonFD
            app.ReferenceButtonFD = uiradiobutton(app.ButtonGroupFD);
            app.ReferenceButtonFD.Text = 'Reference';
            app.ReferenceButtonFD.Position = [11 51 77 22];

            % Create SampleButtonFD
            app.SampleButtonFD = uiradiobutton(app.ButtonGroupFD);
            app.SampleButtonFD.Text = 'Sample';
            app.SampleButtonFD.Position = [11 29 63 22];
            app.SampleButtonFD.Value = true;

            % Create BothButtonFD
            app.BothButtonFD = uiradiobutton(app.ButtonGroupFD);
            app.BothButtonFD.Text = 'Both';
            app.BothButtonFD.Position = [11 7 65 22];

            % Create REMOVEButton
            app.REMOVEButton = uibutton(app.FrequencyDomainFDTab, 'push');
            app.REMOVEButton.ButtonPushedFcn = createCallbackFcn(app, @REMOVEButtonPushed, true);
            app.REMOVEButton.Position = [27 422 135 30];
            app.REMOVEButton.Text = 'REMOVE';

            % Create REMOVEALLButton
            app.REMOVEALLButton = uibutton(app.FrequencyDomainFDTab, 'push');
            app.REMOVEALLButton.ButtonPushedFcn = createCallbackFcn(app, @REMOVEALLButtonPushed, true);
            app.REMOVEALLButton.Position = [174 422 135 30];
            app.REMOVEALLButton.Text = 'REMOVE ALL';

            % Create ASSIGNButtonFD
            app.ASSIGNButtonFD = uibutton(app.FrequencyDomainFDTab, 'push');
            app.ASSIGNButtonFD.ButtonPushedFcn = createCallbackFcn(app, @ASSIGNButtonFDPushed, true);
            app.ASSIGNButtonFD.FontWeight = 'bold';
            app.ASSIGNButtonFD.Tooltip = {'Assign data to variable in the base workspace'};
            app.ASSIGNButtonFD.Position = [333 14 220 30];
            app.ASSIGNButtonFD.Text = 'ASSIGN FD_DATA IN WORKSPACE';

            % Create FDDataAnalysisPanel
            app.FDDataAnalysisPanel = uipanel(app.FrequencyDomainFDTab);
            app.FDDataAnalysisPanel.Title = 'FD Data Analysis';
            app.FDDataAnalysisPanel.FontWeight = 'bold';
            app.FDDataAnalysisPanel.Position = [17 91 619 319];

            % Create PLOT1FDButton_2
            app.PLOT1FDButton_2 = uibutton(app.FDDataAnalysisPanel, 'push');
            app.PLOT1FDButton_2.ButtonPushedFcn = createCallbackFcn(app, @PLOT1FDButton_2Pushed, true);
            app.PLOT1FDButton_2.Position = [504 94 100 40];
            app.PLOT1FDButton_2.Text = 'PLOT1';

            % Create PLOT2FDButton_2
            app.PLOT2FDButton_2 = uibutton(app.FDDataAnalysisPanel, 'push');
            app.PLOT2FDButton_2.ButtonPushedFcn = createCallbackFcn(app, @PLOT2FDButton_2Pushed, true);
            app.PLOT2FDButton_2.Position = [504 49 100 40];
            app.PLOT2FDButton_2.Text = 'PLOT2';

            % Create MagPhaseButtonGroup_2
            app.MagPhaseButtonGroup_2 = uibuttongroup(app.FDDataAnalysisPanel);
            app.MagPhaseButtonGroup_2.Position = [504 168 100 50];

            % Create AmplitudeButton_2
            app.AmplitudeButton_2 = uiradiobutton(app.MagPhaseButtonGroup_2);
            app.AmplitudeButton_2.Text = 'Amplitude';
            app.AmplitudeButton_2.Position = [11 24 75 22];
            app.AmplitudeButton_2.Value = true;

            % Create PhaseButton_2
            app.PhaseButton_2 = uiradiobutton(app.MagPhaseButtonGroup_2);
            app.PhaseButton_2.Text = 'Phase';
            app.PhaseButton_2.Position = [11 2 56 22];

            % Create ALLFDButton_2
            app.ALLFDButton_2 = uibutton(app.FDDataAnalysisPanel, 'push');
            app.ALLFDButton_2.ButtonPushedFcn = createCallbackFcn(app, @ALLFDButton_2Pushed, true);
            app.ALLFDButton_2.Position = [8 204 45 45];
            app.ALLFDButton_2.Text = 'ALL';

            % Create ADDFDButton_2
            app.ADDFDButton_2 = uibutton(app.FDDataAnalysisPanel, 'push');
            app.ADDFDButton_2.ButtonPushedFcn = createCallbackFcn(app, @ADDFDButton_2Pushed, true);
            app.ADDFDButton_2.Position = [8 146 45 45];
            app.ADDFDButton_2.Text = 'ADD';

            % Create DELFDButton_2
            app.DELFDButton_2 = uibutton(app.FDDataAnalysisPanel, 'push');
            app.DELFDButton_2.ButtonPushedFcn = createCallbackFcn(app, @DELFDButton_2Pushed, true);
            app.DELFDButton_2.Position = [8 89 45 45];
            app.DELFDButton_2.Text = 'DEL';

            % Create DescriptionEditField_2Label
            app.DescriptionEditField_2Label = uilabel(app.FDDataAnalysisPanel);
            app.DescriptionEditField_2Label.Position = [187 262 66 22];
            app.DescriptionEditField_2Label.Text = 'Description';

            % Create DescriptionEditField_FD
            app.DescriptionEditField_FD = uieditfield(app.FDDataAnalysisPanel, 'text');
            app.DescriptionEditField_FD.Position = [184 240 178 22];

            % Create ThicknessmmPanel
            app.ThicknessmmPanel = uipanel(app.FDDataAnalysisPanel);
            app.ThicknessmmPanel.Title = 'Thickness(mm)';
            app.ThicknessmmPanel.Position = [184 176 181 56];

            % Create RefEditFieldLabel
            app.RefEditFieldLabel = uilabel(app.ThicknessmmPanel);
            app.RefEditFieldLabel.HorizontalAlignment = 'right';
            app.RefEditFieldLabel.Position = [4 7 28 22];
            app.RefEditFieldLabel.Text = 'Ref.';

            % Create RefEditField
            app.RefEditField = uieditfield(app.ThicknessmmPanel, 'numeric');
            app.RefEditField.Position = [36 7 42 22];

            % Create SampleEditFieldLabel
            app.SampleEditFieldLabel = uilabel(app.ThicknessmmPanel);
            app.SampleEditFieldLabel.HorizontalAlignment = 'right';
            app.SampleEditFieldLabel.Position = [81 7 46 22];
            app.SampleEditFieldLabel.Text = 'Sample';

            % Create SampleEditField
            app.SampleEditField = uieditfield(app.ThicknessmmPanel, 'numeric');
            app.SampleEditField.Position = [131 7 42 22];

            % Create NumberofMultipleReflectionsPanel
            app.NumberofMultipleReflectionsPanel = uipanel(app.FDDataAnalysisPanel);
            app.NumberofMultipleReflectionsPanel.Title = 'Number of Multiple Reflections';
            app.NumberofMultipleReflectionsPanel.Position = [185 109 180 56];

            % Create RefEditField_2Label
            app.RefEditField_2Label = uilabel(app.NumberofMultipleReflectionsPanel);
            app.RefEditField_2Label.HorizontalAlignment = 'right';
            app.RefEditField_2Label.Position = [4 7 28 22];
            app.RefEditField_2Label.Text = 'Ref.';

            % Create RefNMREditField
            app.RefNMREditField = uieditfield(app.NumberofMultipleReflectionsPanel, 'numeric');
            app.RefNMREditField.Position = [36 7 42 22];

            % Create SampleEditField_2Label
            app.SampleEditField_2Label = uilabel(app.NumberofMultipleReflectionsPanel);
            app.SampleEditField_2Label.HorizontalAlignment = 'right';
            app.SampleEditField_2Label.Position = [81 7 46 22];
            app.SampleEditField_2Label.Text = 'Sample';

            % Create SampleNMREditField
            app.SampleNMREditField = uieditfield(app.NumberofMultipleReflectionsPanel, 'numeric');
            app.SampleNMREditField.Position = [131 7 42 22];

            % Create CALCULATEOPTICALPARAMATERSButton
            app.CALCULATEOPTICALPARAMATERSButton = uibutton(app.FDDataAnalysisPanel, 'push');
            app.CALCULATEOPTICALPARAMATERSButton.ButtonPushedFcn = createCallbackFcn(app, @CALCULATEOPTICALPARAMATERSButtonPushed, true);
            app.CALCULATEOPTICALPARAMATERSButton.FontWeight = 'bold';
            app.CALCULATEOPTICALPARAMATERSButton.Position = [184 15 181 50];
            app.CALCULATEOPTICALPARAMATERSButton.Text = {'CALCULATE'; 'OPTICAL PARAMATERS'};

            % Create FDSelectionListBox_2Label
            app.FDSelectionListBox_2Label = uilabel(app.FDDataAnalysisPanel);
            app.FDSelectionListBox_2Label.Position = [56 265 79 22];
            app.FDSelectionListBox_2Label.Text = 'FD Selection';

            % Create FDSelectionListBox_2
            app.FDSelectionListBox_2 = uilistbox(app.FDDataAnalysisPanel);
            app.FDSelectionListBox_2.Items = {};
            app.FDSelectionListBox_2.ValueChangedFcn = createCallbackFcn(app, @FDSelectionListBox_2ValueChanged, true);
            app.FDSelectionListBox_2.Position = [56 13 120 253];
            app.FDSelectionListBox_2.Value = {};

            % Create PlotDataButtonGroup
            app.PlotDataButtonGroup = uibuttongroup(app.FDDataAnalysisPanel);
            app.PlotDataButtonGroup.SelectionChangedFcn = createCallbackFcn(app, @PlotDataButtonGroupSelectionChanged, true);
            app.PlotDataButtonGroup.Title = 'Plot Data';
            app.PlotDataButtonGroup.Position = [372 14 123 261];

            % Create TRANSMITTANCEButton
            app.TRANSMITTANCEButton = uitogglebutton(app.PlotDataButtonGroup);
            app.TRANSMITTANCEButton.Text = 'TRANSMITTANCE';
            app.TRANSMITTANCEButton.Position = [7 192 110 40];
            app.TRANSMITTANCEButton.Value = true;

            % Create ABSORPTIONButton
            app.ABSORPTIONButton = uitogglebutton(app.PlotDataButtonGroup);
            app.ABSORPTIONButton.Enable = 'off';
            app.ABSORPTIONButton.Text = 'ABSORPTION';
            app.ABSORPTIONButton.Position = [7 131 110 40];

            % Create REFRACTIVEINDEXButton
            app.REFRACTIVEINDEXButton = uitogglebutton(app.PlotDataButtonGroup);
            app.REFRACTIVEINDEXButton.Enable = 'off';
            app.REFRACTIVEINDEXButton.Text = {'REFRACTIVE'; 'INDEX'};
            app.REFRACTIVEINDEXButton.Position = [7 71 110 40];

            % Create DIELECTRICCONSTANTButton
            app.DIELECTRICCONSTANTButton = uitogglebutton(app.PlotDataButtonGroup);
            app.DIELECTRICCONSTANTButton.Enable = 'off';
            app.DIELECTRICCONSTANTButton.Text = {'DIELECTRIC'; 'CONSTANT'};
            app.DIELECTRICCONSTANTButton.Position = [7 11 110 40];

            % Create YscaleButtonGroup_2
            app.YscaleButtonGroup_2 = uibuttongroup(app.FDDataAnalysisPanel);
            app.YscaleButtonGroup_2.Position = [504 225 100 50];

            % Create logButton_2
            app.logButton_2 = uiradiobutton(app.YscaleButtonGroup_2);
            app.logButton_2.Text = 'log';
            app.logButton_2.Position = [11 24 38 22];
            app.logButton_2.Value = true;

            % Create linearButton_2
            app.linearButton_2 = uiradiobutton(app.YscaleButtonGroup_2);
            app.linearButton_2.Text = 'linear';
            app.linearButton_2.Position = [11 2 51 22];

            % Create PLOTNEWFDButton
            app.PLOTNEWFDButton = uibutton(app.FDDataAnalysisPanel, 'push');
            app.PLOTNEWFDButton.ButtonPushedFcn = createCallbackFcn(app, @PLOTNEWFDButtonPushed, true);
            app.PLOTNEWFDButton.Position = [504 14 100 30];
            app.PLOTNEWFDButton.Text = 'PLOT NEW';

            % Create RealImagButtonGroup
            app.RealImagButtonGroup = uibuttongroup(app.FDDataAnalysisPanel);
            app.RealImagButtonGroup.Visible = 'off';
            app.RealImagButtonGroup.Position = [504 169 100 50];

            % Create RealButton
            app.RealButton = uiradiobutton(app.RealImagButtonGroup);
            app.RealButton.Text = 'Real';
            app.RealButton.Position = [11 24 58 22];
            app.RealButton.Value = true;

            % Create ImaginaryButton
            app.ImaginaryButton = uiradiobutton(app.RealImagButtonGroup);
            app.ImaginaryButton.Text = 'Imaginary';
            app.ImaginaryButton.Position = [11 2 75 22];

            % Create GRIDOFFButton_3
            app.GRIDOFFButton_3 = uibutton(app.FDDataAnalysisPanel, 'state');
            app.GRIDOFFButton_3.Text = 'GRID OFF';
            app.GRIDOFFButton_3.Position = [504 139 100 25];

            % Create YscaleButtonGroup
            app.YscaleButtonGroup = uibuttongroup(app.FrequencyDomainFDTab);
            app.YscaleButtonGroup.Position = [515 663 100 51];

            % Create logButton
            app.logButton = uiradiobutton(app.YscaleButtonGroup);
            app.logButton.Text = 'log';
            app.logButton.Position = [11 24 38 22];
            app.logButton.Value = true;

            % Create linearButton
            app.linearButton = uiradiobutton(app.YscaleButtonGroup);
            app.linearButton.Text = 'linear';
            app.linearButton.Position = [11 2 51 22];

            % Create MagPhaseButtonGroup
            app.MagPhaseButtonGroup = uibuttongroup(app.FrequencyDomainFDTab);
            app.MagPhaseButtonGroup.Position = [515 606 100 51];

            % Create AmplitudeButton
            app.AmplitudeButton = uiradiobutton(app.MagPhaseButtonGroup);
            app.AmplitudeButton.Text = 'Amplitude';
            app.AmplitudeButton.Position = [11 24 75 22];
            app.AmplitudeButton.Value = true;

            % Create PhaseButton
            app.PhaseButton = uiradiobutton(app.MagPhaseButtonGroup);
            app.PhaseButton.Text = 'Phase';
            app.PhaseButton.Position = [11 2 56 22];

            % Create SaveData_FD
            app.SaveData_FD = uibutton(app.FrequencyDomainFDTab, 'push');
            app.SaveData_FD.ButtonPushedFcn = createCallbackFcn(app, @SaveData_FDButtonPushed, true);
            app.SaveData_FD.FontWeight = 'bold';
            app.SaveData_FD.Tooltip = {'Assign data to variable in the base workspace'};
            app.SaveData_FD.Position = [175 14 140 30];
            app.SaveData_FD.Text = 'SAVE FD_DATA';

            % Create LoadData_FD
            app.LoadData_FD = uibutton(app.FrequencyDomainFDTab, 'push');
            app.LoadData_FD.ButtonPushedFcn = createCallbackFcn(app, @LoadData_FDButtonPushed, true);
            app.LoadData_FD.FontWeight = 'bold';
            app.LoadData_FD.Tooltip = {'Assign data to variable in the base workspace'};
            app.LoadData_FD.Position = [27 14 140 30];
            app.LoadData_FD.Text = 'LOAD FD_DATA';

            % Create LEGENDButton
            app.LEGENDButton = uibutton(app.FrequencyDomainFDTab, 'state');
            app.LEGENDButton.ValueChangedFcn = createCallbackFcn(app, @LEGENDButtonValueChanged, true);
            app.LEGENDButton.Text = 'LEGEND';
            app.LEGENDButton.Position = [1145 11 99 22];

            % Create JETCOLORMAPButton_2
            app.JETCOLORMAPButton_2 = uibutton(app.FrequencyDomainFDTab, 'state');
            app.JETCOLORMAPButton_2.ValueChangedFcn = createCallbackFcn(app, @JETCOLORMAPButton_2ValueChanged, true);
            app.JETCOLORMAPButton_2.Text = 'JET COLORMAP';
            app.JETCOLORMAPButton_2.Position = [1261 11 107 22];

            % Create FDDatatoLabel
            app.FDDatatoLabel = uilabel(app.FrequencyDomainFDTab);
            app.FDDatatoLabel.FontWeight = 'bold';
            app.FDDatatoLabel.Position = [27 57 69 22];
            app.FDDatatoLabel.Text = 'FD Data to ';

            % Create dataManipulationButton
            app.dataManipulationButton = uibutton(app.FrequencyDomainFDTab, 'push');
            app.dataManipulationButton.ButtonPushedFcn = createCallbackFcn(app, @dataManipulationButtonPushed, true);
            app.dataManipulationButton.FontWeight = 'bold';
            app.dataManipulationButton.Enable = 'off';
            app.dataManipulationButton.Tooltip = {'Assign data to variable in the base workspace'};
            app.dataManipulationButton.Position = [97 55 288 26];
            app.dataManipulationButton.Text = 'DATA MANIPULATION';

            % Create GRIDOFFButton_2
            app.GRIDOFFButton_2 = uibutton(app.FrequencyDomainFDTab, 'state');
            app.GRIDOFFButton_2.Text = 'GRID OFF';
            app.GRIDOFFButton_2.Position = [515 573 100 25];

            % Create DataManipulationDMTab
            app.DataManipulationDMTab = uitab(app.TabGroup);
            app.DataManipulationDMTab.Title = 'Data Manipulation (DM)';

            % Create UIAxes10
            app.UIAxes10 = uiaxes(app.DataManipulationDMTab);
            title(app.UIAxes10, 'PLOT 2')
            app.UIAxes10.PlotBoxAspectRatio = [2.16 1 1];
            app.UIAxes10.FontWeight = 'bold';
            app.UIAxes10.XTickLabelRotation = 0;
            app.UIAxes10.YTickLabelRotation = 0;
            app.UIAxes10.ZTickLabelRotation = 0;
            app.UIAxes10.LineWidth = 1;
            app.UIAxes10.Box = 'on';
            app.UIAxes10.Position = [635 2 750 380];

            % Create STEP1Panel
            app.STEP1Panel = uipanel(app.DataManipulationDMTab);
            app.STEP1Panel.Title = 'STEP 1';
            app.STEP1Panel.Position = [13 394 1376 426];

            % Create UIAxes9
            app.UIAxes9 = uiaxes(app.STEP1Panel);
            title(app.UIAxes9, 'PLOT 1')
            xlabel(app.UIAxes9, 'Frequency (THz)')
            app.UIAxes9.PlotBoxAspectRatio = [2.16 1 1];
            app.UIAxes9.FontWeight = 'bold';
            app.UIAxes9.XLim = [0 4];
            app.UIAxes9.XTickLabelRotation = 0;
            app.UIAxes9.YTickLabelRotation = 0;
            app.UIAxes9.ZTickLabelRotation = 0;
            app.UIAxes9.LineWidth = 1;
            app.UIAxes9.Box = 'on';
            app.UIAxes9.Position = [621 15 750 380];

            % Create SourceDataSetEditFieldLabel
            app.SourceDataSetEditFieldLabel = uilabel(app.STEP1Panel);
            app.SourceDataSetEditFieldLabel.HorizontalAlignment = 'right';
            app.SourceDataSetEditFieldLabel.Position = [18 330 94 22];
            app.SourceDataSetEditFieldLabel.Text = 'Source Data Set';

            % Create SourceDataSetEditField
            app.SourceDataSetEditField = uieditfield(app.STEP1Panel, 'text');
            app.SourceDataSetEditField.Position = [129 330 274 22];
            app.SourceDataSetEditField.Value = 'ex) 1 2 3 4 5';

            % Create AforDropDownLabel
            app.AforDropDownLabel = uilabel(app.STEP1Panel);
            app.AforDropDownLabel.HorizontalAlignment = 'right';
            app.AforDropDownLabel.Position = [117 292 30 22];
            app.AforDropDownLabel.Text = 'A for';

            % Create AforDropDown
            app.AforDropDown = uidropdown(app.STEP1Panel);
            app.AforDropDown.Items = {'frequency', 'ref_amplitude', 'ref_phase', 'sam_amplitude', 'sam_phase', 'transmit_amplitude', 'transmit_phase', 'refractiveIndex', 'absorption', 'extinction', 'eReal', 'eImag'};
            app.AforDropDown.Position = [151 292 113 22];
            app.AforDropDown.Value = 'frequency';

            % Create DefinevariablesLabel
            app.DefinevariablesLabel = uilabel(app.STEP1Panel);
            app.DefinevariablesLabel.Position = [24 291 95 22];
            app.DefinevariablesLabel.Text = 'Define variables ';

            % Create XaxisDataDropDownLabel
            app.XaxisDataDropDownLabel = uilabel(app.STEP1Panel);
            app.XaxisDataDropDownLabel.HorizontalAlignment = 'right';
            app.XaxisDataDropDownLabel.Position = [25 256 67 22];
            app.XaxisDataDropDownLabel.Text = 'X-axis Data';

            % Create XaxisDataDropDown
            app.XaxisDataDropDown = uidropdown(app.STEP1Panel);
            app.XaxisDataDropDown.Items = {'frequency', 'ref_amplitude', 'ref_phase', 'sam_amplitude', 'sam_phase', 'transmit_amplitude', 'transmit_phase', 'refractiveIndex', 'absorption', 'extinction', 'eReal', 'eImag'};
            app.XaxisDataDropDown.Position = [151 256 115 22];
            app.XaxisDataDropDown.Value = 'frequency';

            % Create YaxisDataFormulationEditFieldLabel
            app.YaxisDataFormulationEditFieldLabel = uilabel(app.STEP1Panel);
            app.YaxisDataFormulationEditFieldLabel.HorizontalAlignment = 'right';
            app.YaxisDataFormulationEditFieldLabel.Position = [24 221 133 22];
            app.YaxisDataFormulationEditFieldLabel.Text = 'Y-axis Data Formulation';

            % Create YaxisDataFormulationEditField
            app.YaxisDataFormulationEditField = uieditfield(app.STEP1Panel, 'text');
            app.YaxisDataFormulationEditField.Position = [181 221 382 22];
            app.YaxisDataFormulationEditField.Value = 'A';

            % Create PLOTindividualdatasetsButton
            app.PLOTindividualdatasetsButton = uibutton(app.STEP1Panel, 'push');
            app.PLOTindividualdatasetsButton.ButtonPushedFcn = createCallbackFcn(app, @PLOTindividualdatasetsButtonPushed, true);
            app.PLOTindividualdatasetsButton.Enable = 'off';
            app.PLOTindividualdatasetsButton.Position = [341 70 231 30];
            app.PLOTindividualdatasetsButton.Text = 'PLOT (individual data sets)';

            % Create BforDropDownLabel
            app.BforDropDownLabel = uilabel(app.STEP1Panel);
            app.BforDropDownLabel.HorizontalAlignment = 'right';
            app.BforDropDownLabel.Position = [268 292 31 22];
            app.BforDropDownLabel.Text = 'B for';

            % Create BforDropDown
            app.BforDropDown = uidropdown(app.STEP1Panel);
            app.BforDropDown.Items = {'frequency', 'ref_amplitude', 'ref_phase', 'sam_amplitude', 'sam_phase', 'transmit_amplitude', 'transmit_phase', 'refractiveIndex', 'absorption', 'extinction', 'eReal', 'eImag'};
            app.BforDropDown.Position = [303 292 113 22];
            app.BforDropDown.Value = 'frequency';

            % Create CforDropDownLabel
            app.CforDropDownLabel = uilabel(app.STEP1Panel);
            app.CforDropDownLabel.HorizontalAlignment = 'right';
            app.CforDropDownLabel.Position = [417 292 32 22];
            app.CforDropDownLabel.Text = 'C for';

            % Create CforDropDown
            app.CforDropDown = uidropdown(app.STEP1Panel);
            app.CforDropDown.Items = {'frequency', 'ref_amplitude', 'ref_phase', 'sam_amplitude', 'sam_phase', 'transmit_amplitude', 'transmit_phase', 'refractiveIndex', 'absorption', 'extinction', 'eReal', 'eImag'};
            app.CforDropDown.Position = [454 292 113 22];
            app.CforDropDown.Value = 'frequency';

            % Create CALCULATEButton_2
            app.CALCULATEButton_2 = uibutton(app.STEP1Panel, 'push');
            app.CALCULATEButton_2.ButtonPushedFcn = createCallbackFcn(app, @CALCULATEButton_2Pushed, true);
            app.CALCULATEButton_2.BackgroundColor = [1 1 1];
            app.CALCULATEButton_2.Position = [341 109 231 30];
            app.CALCULATEButton_2.Text = 'CALCULATE';

            % Create IMPORTALLDATAButton
            app.IMPORTALLDATAButton = uibutton(app.STEP1Panel, 'push');
            app.IMPORTALLDATAButton.ButtonPushedFcn = createCallbackFcn(app, @IMPORTALLDATAButtonPushed, true);
            app.IMPORTALLDATAButton.Position = [420 329 152 22];
            app.IMPORTALLDATAButton.Text = 'IMPORT ALL DATA';

            % Create AvailableDataSetEditFieldLabel
            app.AvailableDataSetEditFieldLabel = uilabel(app.STEP1Panel);
            app.AvailableDataSetEditFieldLabel.HorizontalAlignment = 'right';
            app.AvailableDataSetEditFieldLabel.Position = [19 363 104 22];
            app.AvailableDataSetEditFieldLabel.Text = 'Available Data Set';

            % Create AvailableDataSetEditField
            app.AvailableDataSetEditField = uieditfield(app.STEP1Panel, 'text');
            app.AvailableDataSetEditField.Editable = 'off';
            app.AvailableDataSetEditField.Position = [129 363 449 22];

            % Create NumberofDataEditFieldLabel
            app.NumberofDataEditFieldLabel = uilabel(app.STEP1Panel);
            app.NumberofDataEditFieldLabel.HorizontalAlignment = 'right';
            app.NumberofDataEditFieldLabel.Position = [26 167 91 22];
            app.NumberofDataEditFieldLabel.Text = 'Number of Data';

            % Create NumberofDataEditField
            app.NumberofDataEditField = uieditfield(app.STEP1Panel, 'numeric');
            app.NumberofDataEditField.Editable = 'off';
            app.NumberofDataEditField.Position = [131 167 71 22];

            % Create exABABCetcLabel
            app.exABABCetcLabel = uilabel(app.STEP1Panel);
            app.exABABCetcLabel.Position = [182 198 129 22];
            app.exABABCetcLabel.Text = 'ex) A./B , (A+B).*C, etc';

            % Create DPlotFrequencyxaxisPanel
            app.DPlotFrequencyxaxisPanel = uipanel(app.STEP1Panel);
            app.DPlotFrequencyxaxisPanel.Title = '3D Plot (Frequency x-axis)';
            app.DPlotFrequencyxaxisPanel.Position = [22 37 300 71];

            % Create PLOT1_3DButton
            app.PLOT1_3DButton = uibutton(app.DPlotFrequencyxaxisPanel, 'push');
            app.PLOT1_3DButton.ButtonPushedFcn = createCallbackFcn(app, @PLOT1_3DButtonPushed, true);
            app.PLOT1_3DButton.Position = [174 23 110 22];
            app.PLOT1_3DButton.Text = '3D PLOT 1';

            % Create dataDropDownLabel
            app.dataDropDownLabel = uilabel(app.DPlotFrequencyxaxisPanel);
            app.dataDropDownLabel.HorizontalAlignment = 'right';
            app.dataDropDownLabel.Position = [11 23 29 22];
            app.dataDropDownLabel.Text = 'data';

            % Create data3DDropDown
            app.data3DDropDown = uidropdown(app.DPlotFrequencyxaxisPanel);
            app.data3DDropDown.Items = {'no available data'};
            app.data3DDropDown.Position = [55 23 101 22];
            app.data3DDropDown.Value = 'no available data';

            % Create DplotdoesnotsupportthebelowextractingfunctionLabel
            app.DplotdoesnotsupportthebelowextractingfunctionLabel = uilabel(app.DPlotFrequencyxaxisPanel);
            app.DplotdoesnotsupportthebelowextractingfunctionLabel.FontSize = 10;
            app.DplotdoesnotsupportthebelowextractingfunctionLabel.Position = [41 3 249 22];
            app.DplotdoesnotsupportthebelowextractingfunctionLabel.Text = '*3D plot doesnot support the below extracting function.';

            % Create PLOTmeanandrangeButton
            app.PLOTmeanandrangeButton = uibutton(app.STEP1Panel, 'push');
            app.PLOTmeanandrangeButton.ButtonPushedFcn = createCallbackFcn(app, @PLOTmeanandrangeButtonPushed, true);
            app.PLOTmeanandrangeButton.Enable = 'off';
            app.PLOTmeanandrangeButton.Position = [341 32 231 30];
            app.PLOTmeanandrangeButton.Text = 'PLOT (mean and range)';

            % Create ASSIGNButtonDM
            app.ASSIGNButtonDM = uibutton(app.DataManipulationDMTab, 'push');
            app.ASSIGNButtonDM.ButtonPushedFcn = createCallbackFcn(app, @ASSIGNButtonDMPushed, true);
            app.ASSIGNButtonDM.FontWeight = 'bold';
            app.ASSIGNButtonDM.Tooltip = {'Assign data to variable in the base workspace'};
            app.ASSIGNButtonDM.Position = [183 14 220 30];
            app.ASSIGNButtonDM.Text = 'ASSIGN DM_DATA IN WORKSPACE';

            % Create SaveData_DM
            app.SaveData_DM = uibutton(app.DataManipulationDMTab, 'push');
            app.SaveData_DM.ButtonPushedFcn = createCallbackFcn(app, @SaveData_DMButtonPushed, true);
            app.SaveData_DM.FontWeight = 'bold';
            app.SaveData_DM.Tooltip = {'Assign data to variable in the base workspace'};
            app.SaveData_DM.Position = [27 14 140 30];
            app.SaveData_DM.Text = 'SAVE DM_DATA';

            % Create DMTabGroup
            app.DMTabGroup = uitabgroup(app.DataManipulationDMTab);
            app.DMTabGroup.Position = [25 65 600 310];

            % Create FrequencyBaseTab
            app.FrequencyBaseTab = uitab(app.DMTabGroup);
            app.FrequencyBaseTab.Title = 'Frequency Base';

            % Create DISPLAYXLINESButton
            app.DISPLAYXLINESButton = uibutton(app.FrequencyBaseTab, 'push');
            app.DISPLAYXLINESButton.ButtonPushedFcn = createCallbackFcn(app, @DISPLAYXLINESButtonPushed, true);
            app.DISPLAYXLINESButton.Position = [462 234 115 22];
            app.DISPLAYXLINESButton.Text = 'DISPLAY X LINES';

            % Create REARRANGEDATAButton
            app.REARRANGEDATAButton = uibutton(app.FrequencyBaseTab, 'push');
            app.REARRANGEDATAButton.ButtonPushedFcn = createCallbackFcn(app, @REARRANGEDATAButtonPushed, true);
            app.REARRANGEDATAButton.BackgroundColor = [1 1 1];
            app.REARRANGEDATAButton.Position = [104 202 473 21];
            app.REARRANGEDATAButton.Text = 'REARRANGE DATA';

            % Create PLOTButton_2
            app.PLOTButton_2 = uibutton(app.FrequencyBaseTab, 'push');
            app.PLOTButton_2.ButtonPushedFcn = createCallbackFcn(app, @PLOTButton_2Pushed, true);
            app.PLOTButton_2.Enable = 'off';
            app.PLOTButton_2.Position = [329 12 231 30];
            app.PLOTButton_2.Text = 'PLOT';

            % Create XaxisDataEditFieldLabel
            app.XaxisDataEditFieldLabel = uilabel(app.FrequencyBaseTab);
            app.XaxisDataEditFieldLabel.HorizontalAlignment = 'right';
            app.XaxisDataEditFieldLabel.Position = [26 134 67 22];
            app.XaxisDataEditFieldLabel.Text = 'X-axis Data';

            % Create XaxisDataEditField
            app.XaxisDataEditField = uieditfield(app.FrequencyBaseTab, 'text');
            app.XaxisDataEditField.Position = [104 134 464 22];

            % Create GetDatafromFrequencyTHzEditFieldLabel
            app.GetDatafromFrequencyTHzEditFieldLabel = uilabel(app.FrequencyBaseTab);
            app.GetDatafromFrequencyTHzEditFieldLabel.HorizontalAlignment = 'right';
            app.GetDatafromFrequencyTHzEditFieldLabel.Position = [17 234 171 22];
            app.GetDatafromFrequencyTHzEditFieldLabel.Text = 'Get Data from Frequency(THz)';

            % Create GetDatafromFrequencyTHzEditField
            app.GetDatafromFrequencyTHzEditField = uieditfield(app.FrequencyBaseTab, 'text');
            app.GetDatafromFrequencyTHzEditField.Position = [202 234 252 22];
            app.GetDatafromFrequencyTHzEditField.Value = '1';

            % Create YaxisDataEditField_2Label
            app.YaxisDataEditField_2Label = uilabel(app.FrequencyBaseTab);
            app.YaxisDataEditField_2Label.HorizontalAlignment = 'right';
            app.YaxisDataEditField_2Label.Position = [28 98 67 22];
            app.YaxisDataEditField_2Label.Text = 'Y-axis Data';

            % Create YaxisDataEditField_2
            app.YaxisDataEditField_2 = uieditfield(app.FrequencyBaseTab, 'text');
            app.YaxisDataEditField_2.Position = [104 98 466 22];

            % Create XLabelEditFieldLabel
            app.XLabelEditFieldLabel = uilabel(app.FrequencyBaseTab);
            app.XLabelEditFieldLabel.HorizontalAlignment = 'right';
            app.XLabelEditFieldLabel.Position = [50 63 43 22];
            app.XLabelEditFieldLabel.Text = 'XLabel';

            % Create XLabelEditField
            app.XLabelEditField = uieditfield(app.FrequencyBaseTab, 'text');
            app.XLabelEditField.Position = [103 63 204 22];
            app.XLabelEditField.Value = 'Temperature (K)';

            % Create YLabelEditFieldLabel
            app.YLabelEditFieldLabel = uilabel(app.FrequencyBaseTab);
            app.YLabelEditFieldLabel.HorizontalAlignment = 'right';
            app.YLabelEditFieldLabel.Position = [314 63 43 22];
            app.YLabelEditFieldLabel.Text = 'YLabel';

            % Create YLabelEditField
            app.YLabelEditField = uieditfield(app.FrequencyBaseTab, 'text');
            app.YLabelEditField.Position = [365 63 204 22];

            % Create MeasurementEditFieldLabel
            app.MeasurementEditFieldLabel = uilabel(app.FrequencyBaseTab);
            app.MeasurementEditFieldLabel.HorizontalAlignment = 'right';
            app.MeasurementEditFieldLabel.Position = [19 168 79 23];
            app.MeasurementEditFieldLabel.Text = 'Measurement';

            % Create MeasurementEditField
            app.MeasurementEditField = uieditfield(app.FrequencyBaseTab, 'text');
            app.MeasurementEditField.Position = [104 168 256 22];

            % Create PeakBaseTab
            app.PeakBaseTab = uitab(app.DMTabGroup);
            app.PeakBaseTab.Title = 'Peak Base';

            % Create REARRANGEDATAButton_2
            app.REARRANGEDATAButton_2 = uibutton(app.PeakBaseTab, 'push');
            app.REARRANGEDATAButton_2.ButtonPushedFcn = createCallbackFcn(app, @REARRANGEDATAButton_2Pushed, true);
            app.REARRANGEDATAButton_2.BackgroundColor = [1 1 1];
            app.REARRANGEDATAButton_2.Position = [103 195 471 22];
            app.REARRANGEDATAButton_2.Text = 'REARRANGE DATA';

            % Create PLOTButton_3
            app.PLOTButton_3 = uibutton(app.PeakBaseTab, 'push');
            app.PLOTButton_3.ButtonPushedFcn = createCallbackFcn(app, @PLOTButton_3Pushed, true);
            app.PLOTButton_3.Position = [329 12 231 30];
            app.PLOTButton_3.Text = 'PLOT';

            % Create PeakNumSpinnerLabel
            app.PeakNumSpinnerLabel = uilabel(app.PeakBaseTab);
            app.PeakNumSpinnerLabel.HorizontalAlignment = 'right';
            app.PeakNumSpinnerLabel.Position = [444 229 65 22];
            app.PeakNumSpinnerLabel.Text = 'Peak Num.';

            % Create PeakNumSpinner
            app.PeakNumSpinner = uispinner(app.PeakBaseTab);
            app.PeakNumSpinner.Limits = [1 3];
            app.PeakNumSpinner.ValueChangedFcn = createCallbackFcn(app, @PeakNumSpinnerValueChanged, true);
            app.PeakNumSpinner.Position = [514 230 64 22];
            app.PeakNumSpinner.Value = 1;

            % Create LowerLimitTHzEditFieldLabel
            app.LowerLimitTHzEditFieldLabel = uilabel(app.PeakBaseTab);
            app.LowerLimitTHzEditFieldLabel.HorizontalAlignment = 'right';
            app.LowerLimitTHzEditFieldLabel.Position = [267 229 100 22];
            app.LowerLimitTHzEditFieldLabel.Text = 'Lower Limit (THz)';

            % Create LowerLimitTHzEditField
            app.LowerLimitTHzEditField = uieditfield(app.PeakBaseTab, 'numeric');
            app.LowerLimitTHzEditField.Limits = [0 4];
            app.LowerLimitTHzEditField.ValueChangedFcn = createCallbackFcn(app, @LowerLimitTHzEditFieldValueChanged, true);
            app.LowerLimitTHzEditField.Position = [373 229 54 22];
            app.LowerLimitTHzEditField.Value = 1;

            % Create XaxisDataEditField_2Label
            app.XaxisDataEditField_2Label = uilabel(app.PeakBaseTab);
            app.XaxisDataEditField_2Label.HorizontalAlignment = 'right';
            app.XaxisDataEditField_2Label.Position = [25 128 67 22];
            app.XaxisDataEditField_2Label.Text = 'X-axis Data';

            % Create XaxisDataEditField_2
            app.XaxisDataEditField_2 = uieditfield(app.PeakBaseTab, 'text');
            app.XaxisDataEditField_2.Position = [103 128 464 22];

            % Create YaxisDataEditField_3Label
            app.YaxisDataEditField_3Label = uilabel(app.PeakBaseTab);
            app.YaxisDataEditField_3Label.HorizontalAlignment = 'right';
            app.YaxisDataEditField_3Label.Position = [27 92 67 22];
            app.YaxisDataEditField_3Label.Text = 'Y-axis Data';

            % Create YaxisDataEditField_3
            app.YaxisDataEditField_3 = uieditfield(app.PeakBaseTab, 'text');
            app.YaxisDataEditField_3.Position = [103 92 466 22];

            % Create XLabelEditField_2Label
            app.XLabelEditField_2Label = uilabel(app.PeakBaseTab);
            app.XLabelEditField_2Label.HorizontalAlignment = 'right';
            app.XLabelEditField_2Label.Position = [49 57 43 22];
            app.XLabelEditField_2Label.Text = 'XLabel';

            % Create XLabelEditField_2
            app.XLabelEditField_2 = uieditfield(app.PeakBaseTab, 'text');
            app.XLabelEditField_2.Position = [102 57 204 22];
            app.XLabelEditField_2.Value = 'Temperature (K)';

            % Create YLabelEditField_2Label
            app.YLabelEditField_2Label = uilabel(app.PeakBaseTab);
            app.YLabelEditField_2Label.HorizontalAlignment = 'right';
            app.YLabelEditField_2Label.Position = [313 57 43 22];
            app.YLabelEditField_2Label.Text = 'YLabel';

            % Create YLabelEditField_2
            app.YLabelEditField_2 = uieditfield(app.PeakBaseTab, 'text');
            app.YLabelEditField_2.Position = [364 57 204 22];

            % Create MeasurementEditField_2Label
            app.MeasurementEditField_2Label = uilabel(app.PeakBaseTab);
            app.MeasurementEditField_2Label.HorizontalAlignment = 'right';
            app.MeasurementEditField_2Label.Position = [18 162 79 23];
            app.MeasurementEditField_2Label.Text = 'Measurement';

            % Create MeasurementEditField_2
            app.MeasurementEditField_2 = uieditfield(app.PeakBaseTab, 'text');
            app.MeasurementEditField_2.Position = [103 162 256 22];

            % Create MinPeakProminenceEditFieldLabel
            app.MinPeakProminenceEditFieldLabel = uilabel(app.PeakBaseTab);
            app.MinPeakProminenceEditFieldLabel.HorizontalAlignment = 'right';
            app.MinPeakProminenceEditFieldLabel.Position = [45 229 126 22];
            app.MinPeakProminenceEditFieldLabel.Text = 'Min. Peak Prominence';

            % Create MinPeakProminenceEditField
            app.MinPeakProminenceEditField = uieditfield(app.PeakBaseTab, 'numeric');
            app.MinPeakProminenceEditField.Limits = [0 Inf];
            app.MinPeakProminenceEditField.ValueChangedFcn = createCallbackFcn(app, @MinPeakProminenceEditFieldValueChanged, true);
            app.MinPeakProminenceEditField.Position = [178 229 74 22];

            % Create JETCOLORMAPButton_DM
            app.JETCOLORMAPButton_DM = uibutton(app.DataManipulationDMTab, 'state');
            app.JETCOLORMAPButton_DM.ValueChangedFcn = createCallbackFcn(app, @JETCOLORMAPButton_DMValueChanged, true);
            app.JETCOLORMAPButton_DM.Text = 'JET COLORMAP';
            app.JETCOLORMAPButton_DM.Position = [513 14 107 22];

            % Create SystemStatusLabel
            app.SystemStatusLabel = uilabel(app.CatsperUIFigure);
            app.SystemStatusLabel.Position = [41 15 84 22];
            app.SystemStatusLabel.Text = 'System Status';

            % Create DEBUGMsgLabel
            app.DEBUGMsgLabel = uilabel(app.CatsperUIFigure);
            app.DEBUGMsgLabel.FontWeight = 'bold';
            app.DEBUGMsgLabel.Position = [135 15 303 22];
            app.DEBUGMsgLabel.Text = '';

            % Create CLEARMEMORYButton
            app.CLEARMEMORYButton = uibutton(app.CatsperUIFigure, 'push');
            app.CLEARMEMORYButton.ButtonPushedFcn = createCallbackFcn(app, @CLEARMEMORYButtonPushed, true);
            app.CLEARMEMORYButton.FontWeight = 'bold';
            app.CLEARMEMORYButton.Position = [1194 909 112 29];
            app.CLEARMEMORYButton.Text = 'CLEAR MEMORY';

            % Create SAVETDFDDMButton
            app.SAVETDFDDMButton = uibutton(app.CatsperUIFigure, 'push');
            app.SAVETDFDDMButton.ButtonPushedFcn = createCallbackFcn(app, @SAVETDFDDMButtonPushed, true);
            app.SAVETDFDDMButton.FontWeight = 'bold';
            app.SAVETDFDDMButton.Position = [1312 909 109 29];
            app.SAVETDFDDMButton.Text = 'SAVE TD/FD/DM';

            % Create CaTSperLabel
            app.CaTSperLabel = uilabel(app.CatsperUIFigure);
            app.CaTSperLabel.FontSize = 37;
            app.CaTSperLabel.FontWeight = 'bold';
            app.CaTSperLabel.FontAngle = 'italic';
            app.CaTSperLabel.Position = [89 909 158 48];
            app.CaTSperLabel.Text = 'CaTSper';

            % Create CambridgeTerahertzSpectrumAnalyserLabel
            app.CambridgeTerahertzSpectrumAnalyserLabel = uilabel(app.CatsperUIFigure);
            app.CambridgeTerahertzSpectrumAnalyserLabel.FontWeight = 'bold';
            app.CambridgeTerahertzSpectrumAnalyserLabel.Position = [247 909 241 22];
            app.CambridgeTerahertzSpectrumAnalyserLabel.Text = 'Cambridge Terahertz Spectrum Analyser';

            % Create PoweredbyTerahertzApplicationsGroupUniversityofCambridgeLabel
            app.PoweredbyTerahertzApplicationsGroupUniversityofCambridgeLabel = uilabel(app.CatsperUIFigure);
            app.PoweredbyTerahertzApplicationsGroupUniversityofCambridgeLabel.FontSize = 11;
            app.PoweredbyTerahertzApplicationsGroupUniversityofCambridgeLabel.Position = [1090 9 336 22];
            app.PoweredbyTerahertzApplicationsGroupUniversityofCambridgeLabel.Text = 'Powered by Terahertz Applications Group, University of Cambridge';

            % Create ImportTHzButton
            app.ImportTHzButton = uibutton(app.CatsperUIFigure, 'push');
            app.ImportTHzButton.ButtonPushedFcn = createCallbackFcn(app, @ImportTHzButtonPushed, true);
            app.ImportTHzButton.BackgroundColor = [1 1 1];
            app.ImportTHzButton.FontSize = 13;
            app.ImportTHzButton.FontWeight = 'bold';
            app.ImportTHzButton.Position = [493 909 113 29];
            app.ImportTHzButton.Text = 'Import THz';

            % Create ProjectsEditField
            app.ProjectsEditField = uieditfield(app.CatsperUIFigure, 'text');
            app.ProjectsEditField.FontWeight = 'bold';
            app.ProjectsEditField.BackgroundColor = [0.9412 0.9412 0.9412];
            app.ProjectsEditField.Position = [616 911 453 25];

            % Create Image
            app.Image = uiimage(app.CatsperUIFigure);
            app.Image.Position = [32 909 58 58];
            app.Image.ImageSource = fullfile(pathToMLAPP, 'dotTHz_logo.png');

            % Create DEPLOYButton
            app.DEPLOYButton = uibutton(app.CatsperUIFigure, 'push');
            app.DEPLOYButton.ButtonPushedFcn = createCallbackFcn(app, @DEPLOYButtonPushed, true);
            app.DEPLOYButton.BackgroundColor = [1 1 1];
            app.DEPLOYButton.FontSize = 13;
            app.DEPLOYButton.FontWeight = 'bold';
            app.DEPLOYButton.Position = [1079 909 107 29];
            app.DEPLOYButton.Text = 'DEPLOY';

            % Show the figure after all components are created
            app.CatsperUIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = CaTSper_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.CatsperUIFigure)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.CatsperUIFigure)
        end
    end
end
%% create_project_figures.m
% John Bernabei
% With assistance from Ian Ong
% Litt Laboratory

%% Set up workspace

all_good_patients = {'HUP082','HUP086','HUP087','HUP088','HUP094','HUP105','HUP106','HUP111','HUP130','HUP139','HUP148','HUP150','HUP151','HUP157','HUP163','HUP164','HUP173','HUP177','HUP179','HUP180','HUP181','HUP185'};

all_poor_patients = {''};

%% Figure 1A: visualize adjacency matrix (one panel in pipeline figure)

%% Figure 1B: visualize brain (one panel in pipeline figure)

%% Figure 2A: anatomical analysis

% run all patients in atlas

%% Figure 2B: cross - validate out-of-bag predictions

for s = 1:length(all_good_patients)
    test_patient = all_good_patients(s);
    cv_patients = all_good_patients;
    cv_patients(s) = [];
    
    % create atlas
    [mean_conn, std_conn] = create_atlas(all_conn, all_roi, all_resect, region_list)
    
    % test atlas
    [mean_conn, std_conn] = create_atlas(all_conn, all_roi, all_resect, region_list)
end

%% Figure 2C: comparison against distance

%% Figure 3A: Distinguish between epilepsy type (mesial temporal vs neocortical)
% temporal vs extratemporal

%% Figure 3B: Relationship of connectivity to duration of epilepsy

%% Figure 3C: Relationship of connectivity to whether patient has generalized SZ or not

%% Figure 4A: localize in good outcome patients
% make figure based upon prior calculations

%% Supplement: choice of atlas / segmentation

%% Figure 4B: localize in poor outcome patients
for s = 1:length(poor_outcome_patients)
    
end
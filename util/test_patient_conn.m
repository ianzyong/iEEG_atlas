function [z_score_mat, corr_val, residuals] = test_patient_conn(mean_conn, std_conn, region_list, patient_conn, patient_roi)

% calculate z-score of all edges
z_score_mat = (patient_conn - mean_conn)./std_conn;

% calculate residuals of all edges
residuals = patient_conn - mean_conn;

% extract atlas and patient edges
patient_edges = patient_conn(:);
atlas_edges = mean_conn(:);

% find NaNs
patient_NaN = find(isnan(patient_edges));
atlas_NaN = find(isnan(atlas_edges));

% get rid of NaNs
all_NaN = unique([patient_NaN;atlas_NaN]);
patient_edges(all_NaN) = [];
atlas_edges(all_NaN) = [];

% get correlation value
size(atlas_edges);
size(patient_edges);
if isempty(patient_edges)
    corr_val = NaN;
else
    corr_val = corr(patient_edges,atlas_edges);
end

% extract z-scores involving relevant regions
roi_boolean = ismember(region_list,patient_roi);
z_score_mat(:,~roi_boolean) = NaN;
z_score_mat(~roi_boolean,:) = NaN;

residuals(:,~roi_boolean) = NaN;
residuals(~roi_boolean,:) = NaN;

end
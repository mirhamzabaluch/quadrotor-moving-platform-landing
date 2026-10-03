function open_model
%OPEN_MODEL Open the moving-platform landing Simulink model.
%   This helper adds no parameters or callbacks. It only locates and opens
%   the versioned model from any MATLAB working directory.

projectRoot = fileparts(mfilename("fullpath"));
modelFile = fullfile(projectRoot, "v1.slx");

assert(isfile(modelFile), "quadrotor:MissingModel", ...
    "Could not find v1.slx in the repository root.");

open_system(modelFile);
end

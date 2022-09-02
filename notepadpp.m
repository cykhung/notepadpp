function notepadpp(filenames)


%% Find notepad++
exe = fullfile(fileparts(mfilename('fullpath')), 'private', ...
    'npp.8.2.portable.minimalist.x64', 'notepad++.exe');


%% Open files.
filenames = convert_filenames(filenames);
for n = 1:numel(filenames)
    cmd = [exe, ' ',                            ...
           sprintf('"%s" ', filenames{n}),      ...
           sprintf('&'),                        ...        
        ];
    dos(cmd);
end


end

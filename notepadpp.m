function notepadpp(filenames)

exe = fullfile('V:\khung\notepadpp\trunk\private\',                     ...
    'npp.8.2.portable.minimalist.x64', 'notepad++.exe');
filenames = convert_filenames(filenames);
for n = 1:numel(filenames)
    cmd = [exe, ' ',                            ...
           sprintf('"%s" ', filenames{n}),      ...
           sprintf('&'),                        ...        
        ];
    dos(cmd);
end

end

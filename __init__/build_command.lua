
set_build_command(plocal,frate.format([[
cd {%path%};
cmake -DCMAKE_BUILD_TYPE={%build_mode%};
make -j {%jobs%}
python {%build_dir%}/main.py
]], {
    current_mode = project.current_mode,
    build_dir = project.build_dir,
    path = get_project_path(plocal),
    name = project.name,
    jobs = get_requested_jobs(plocal),
    build_mode = get_build_mode(plocal)
}))

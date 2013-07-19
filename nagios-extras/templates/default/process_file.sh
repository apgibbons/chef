#!/bin/sh

now=`date +%s`
commandfile='<%= node['nagios']['state_dir'] %>/rw/nagios.cmd'

/usr/bin/printf "[%lu] PROCESS_FILE;<%= node['nagios']['state_dir'] %>/rw/process_file;0\n" $now > $commandfile

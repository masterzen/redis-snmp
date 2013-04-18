#!/sbin/runscript
# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# Both snmpd and redis must be running for this to be useful.
depend() {
	after snmpd redis
}

start() {
	host=localhost;
	port=6379;
	password=;
	verbose=no;
	refresh=60;
	source /etc/conf.d/redis-snmp;

	ebegin "Starting Redis SNMP AgentX"

	# Options:
	#    --no-daemon: Do not become a daemon.  We will let start-stop-daemon take care of this for us.
	options="--no-daemon --refresh=${refresh} --host=${host} --port=${port}"; 
	# If we were given a password, then use it.
	# redis-snmp complains if the password is blank.
	if [ "$password" != "" ]; then
		options="${options} --password=${password}";
	fi;
	# If we want to be verbose, then set the verbose flag.
	if [ "$verbose" = "yes" ]; then
		options="${options} --verbose";
	fi;
	
	start-stop-daemon --start --exec /usr/bin/redis-snmp --pidfile /var/run/redis-snmp.pid --make-pidfile --background -- ${options}
	eend $?
}

stop() {
	ebegin "Stopping Redis SNMP AgentX"
	start-stop-daemon --stop --pidfile /var/run/redis-snmp.pid
	eend $?
}


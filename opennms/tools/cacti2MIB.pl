# redis-snmp: cacti2MIB.pl
#
# This file contains the mapping from MySQL cacti templates to the MIB names, value and
# and types. This file is used to generate the opennms configuration.
#
# (c) Copryright 2009 - Brice Figureau
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.    See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.

{   name        => 'Cacti 2 MIB',
    short_names => {
        'connected_clients'           => { mib => 'redisConnectedClients',      order => 1, type => 'Gauge32' },
        'connected_slaves'            => { mib => 'redisConnectedSlaves',       order => 2, type => 'Gauge32' },
        'used_memory'                 => { mib => 'redisUsedMemory',            order => 3, type => 'Gauge64' },
        'changes_since_last_save'     => { mib => 'redisChangesSinceLastSave',  order => 4, type => 'Gauge32' },
        'total_connections_received'  => { mib => 'redisTotalConnections',      order => 5, type => 'Counter64' },
        'total_commands_processed'    => { mib => 'redisCommandsProcessed',     order => 6, type => 'Counter64' },
    },
    startoid => '.1.3.6.1.4.1.20267.400.1',
}

#!/usr/bin/perl -w

BEGIN {
    require 'redis-snmp';
}

use Test::More tests => 3;
use Data::Dumper;

sub readfile
{
    my $file = shift;
    my @lines = ();

    open(my $fh, "<", $file);
    while( <$fh> ) {
        chomp($_);
        push @lines, $_ ;
    }
    return join("\r\n",@lines);
}

$redis_parser = RedisInfoParser->new;

is_deeply(
   $redis_parser->parse(readfile('tests/redis-2.6.9.txt')),
   {
     'uptime_in_seconds' => '448',
     'total_connections_received' => '1',
     'os' => 'Darwin 10.8.0 x86_64',
     'used_memory_lua' => '31744',
     'used_cpu_sys' => '0.94',
     'used_memory_rss' => '1466368',
     'redis_git_dirty' => '0',
     'loading' => '0',
     'redis_mode' => 'standalone',
     'latest_fork_usec' => '0',
     'rdb_last_bgsave_time_sec' => '-1',
     'connected_clients' => '1',
     'used_memory_peak_human' => '1.01M',
     'run_id' => '9d90031d7e52c64b9bd56eb6ffeb54efeae5744f',
     'rdb_last_bgsave_status' => 'ok',
     'pubsub_patterns' => '0',
     'mem_allocator' => 'libc',
     'uptime_in_days' => '0',
     'keyspace_hits' => '0',
     'gcc_version' => '4.2.1',
     'client_biggest_input_buf' => '0',
     'aof_rewrite_scheduled' => '0',
     'arch_bits' => '64',
     'rdb_last_save_time' => '1360437738',
     'lru_clock' => '1826090',
     'role' => 'master',
     'rdb_changes_since_last_save' => '2',
     'db0' => 'keys=2,expires=0',
     'multiplexing_api' => 'kqueue',
     'rdb_bgsave_in_progress' => '0',
     'rejected_connections' => '0',
     'pubsub_channels' => '0',
     'used_cpu_user_children' => '0.00',
     'aof_last_rewrite_time_sec' => '-1',
     'redis_git_sha1' => '00000000',
     'redis_version' => '2.6.9',
     'process_id' => '14068',
     'used_memory_human' => '1.01M',
     'used_cpu_user' => '0.96',
     'keyspace_misses' => '0',
     'aof_current_rewrite_time_sec' => '-1',
     'total_commands_processed' => '3',
     'tcp_port' => '6379',
     'mem_fragmentation_ratio' => '1.39',
     'used_memory' => '1055600',
     'rdb_current_bgsave_time_sec' => '-1',
     'client_longest_output_list' => '0',
     'aof_enabled' => '0',
     'blocked_clients' => '0',
     'instantaneous_ops_per_sec' => '0',
     'evicted_keys' => '0',
     'aof_last_bgrewrite_status' => 'ok',
     'aof_rewrite_in_progress' => '0',
     'expired_keys' => '0',
     'used_memory_peak' => '1054928',
     'used_cpu_sys_children' => '0.00',
     'connected_slaves' => '0'
    },
   'tests/redis-2.6.9.txt'
);

is_deeply(
   $redis_parser->to_snmp($redis_parser->parse(readfile('tests/redis-2.6.9.txt'))),
   {
     '1' => '0',
     '4' => '1',
     '3' => '2',
     '0' => '1',
     '2' => '1055600',
     '5' => '3'
   },
   'tests/redis-2.6.9.txt'
);

is_deeply(
   $redis_parser->parse(readfile('tests/redis-2.2.txt')),
   {
     'redis_version' => '2.2.12', 'redis_git_sha1' => '00000000', 'redis_git_dirty' => '0', 'arch_bits' => '64',
     'multiplexing_api' => 'epoll', 'process_id' => '3361', 'uptime_in_seconds' => '22084475', 'uptime_in_days' => '255',
     'lru_clock' => '1827014', 'used_cpu_sys' => '16364.80', 'used_cpu_user' => '25923.18', 'used_cpu_sys_children' =>
     '26040.28', 'used_cpu_user_children' => '6142.59', 'connected_clients' => '2', 'connected_slaves' => '0',
     'client_longest_output_list' => '0', 'client_biggest_input_buf' => '0', 'blocked_clients' => '0', 'used_memory' =>
     '28172224', 'used_memory_human' => '26.87M', 'used_memory_rss' => '51785728', 'mem_fragmentation_ratio' => '1.84',
     'use_tcmalloc' => '0', 'loading' => '0', 'aof_enabled' => '0', 'changes_since_last_save' => '3180', 'bgsave_in_progress' =>
     '0', 'last_save_time' => '1360447328', 'bgrewriteaof_in_progress' => '0', 'total_connections_received' => '107491639',
     'total_commands_processed' => '693164497', 'expired_keys' => '6086313', 'evicted_keys' => '0', 'keyspace_hits' =>
     '435393567', 'keyspace_misses' => '13329191', 'hash_max_zipmap_entries' => '512', 'hash_max_zipmap_value' => '64',
     'pubsub_channels' => '0', 'pubsub_patterns' => '0', 'vm_enabled' => '0', 'role' => 'master', 'db0' =>
     'keys=71424,expires=71414'
     },
     'tests/redis-2.2.txt'
);

is_deeply(
   $redis_parser->to_snmp($redis_parser->parse(readfile('tests/redis-2.2.txt'))),
   {
     '1' => '0',
     '4' => '107491639',
     '3' => '3180',
     '0' => '2',
     '2' => '28172224',
     '5' => '693164497'
   },
     'tests/redis-2.2.txt'
);

is_deeply(
   $redis_parser->parse(readfile('tests/redis-2.4.15.txt')),
   {
    'redis_version' => '2.4.15',
    'redis_git_sha1' => '00000000',
    'redis_git_dirty' => '0',
    'arch_bits' => '64',
    'multiplexing_api' => 'epoll',
    'gcc_version' => '4.4.5',
    'process_id' => '29583',
    'uptime_in_seconds' => '16',
    'uptime_in_days' => '0',
    'lru_clock' => '1833519',
    'used_cpu_sys' => '0.00',
    'used_cpu_user' => '0.00',
    'used_cpu_sys_children' => '0.00',
    'used_cpu_user_children' => '0.00',
    'connected_clients' => '1',
    'connected_slaves' => '0',
    'client_longest_output_list' => '0',
    'client_biggest_input_buf' => '0',
    'blocked_clients' => '0',
    'used_memory' => '800760',
    'used_memory_human' => '781.99K',
    'used_memory_rss' => '1556480',
    'used_memory_peak' => '800720',
    'used_memory_peak_human' => '781.95K',
    'mem_fragmentation_ratio' => '1.94',
    'mem_allocator' => 'libc',
    'loading' => '0',
    'aof_enabled' => '0',
    'changes_since_last_save' => '0',
    'bgsave_in_progress' => '0',
    'last_save_time' => '1360512457',
    'bgrewriteaof_in_progress' => '0',
    'total_connections_received' => '2',
    'total_commands_processed' => '1',
    'expired_keys' => '0',
    'evicted_keys' => '0',
    'keyspace_hits' => '0',
    'keyspace_misses' => '0',
    'pubsub_channels' => '0',
    'pubsub_patterns' => '0',
    'latest_fork_usec' => '0',
    'vm_enabled' => '0',
    'role' => 'master',
    'db0' => 'keys=16,expires=0',
   },
     'tests/redis-2.4.15.txt'
);

is_deeply(
   $redis_parser->to_snmp($redis_parser->parse(readfile('tests/redis-2.4.15.txt'))),
   {
     '1' => '0',
     '4' => '2',
     '3' => '0',
     '0' => '1',
     '2' => '800760',
     '5' => '1'
   },
     'tests/redis-2.4.15.txt'
);


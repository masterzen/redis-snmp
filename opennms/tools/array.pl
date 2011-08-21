my @types = (
    'Counter32', 'Counter32', 'Counter32', 'Counter32',  # 1 - 4
    'Gauge32', 'Counter64', 'Gauge32', 'Gauge32',  # 5 - 8
    'Gauge32', 'Gauge32', 'Gauge32', 'Gauge32',  # 9 - 12
    'Gauge32', 'Gauge32', 'Counter32', 'Counter32',  # 13 - 16
    'Counter32', 'Counter32', 'Counter32', 'Counter32',  # 17 - 20
    'Counter32', 'Gauge32', 'Gauge32', 'Gauge32',  # 21 - 24
    'Gauge32', 'Gauge32', 'Gauge32', 'Gauge32',  # 25 - 28
    'Gauge32', 'Gauge32', 'Counter32', 'Counter32',  # 29 - 32
    'Counter32', 'Counter32', 'Counter32', 'Counter32',  # 33 - 36
    'Counter32', 'Counter32', 'Counter32', 'Counter32',  # 37 - 40
    'Counter32', 'Counter32', 'Counter32', 'Gauge32',  # 41 - 44
    'Gauge32', 'Counter32', 'Counter32', 'Counter32',  # 45 - 48
    'Counter32', 'Counter32', 'Counter32', 'Counter32',  # 49 - 52
    'Counter32', 'Gauge32', 'Gauge32', 'Counter32',  # 53 - 56
    'Gauge32', 'Gauge32', 'Gauge32', 'Counter32',  # 57 - 60
    'Gauge32', 'Gauge32', 'Counter32', 'Gauge32',  # 61 - 64
    'Gauge32', 'Gauge32', 'Gauge32', 'Counter32',  # 65 - 68
    'Counter32', 'Counter32', 'Counter32', 'Gauge32',  # 69 - 72
    'Gauge32', 'Counter32', 'Counter32', 'Counter32',  # 73 - 76
    'Counter32', 'Counter32', 'Counter32', 'Counter32',  # 77 - 80
    'Counter32', 'Counter32', 'Counter32', 'Counter32',  # 81 - 84
    'Counter32', 'Counter32', 'Counter32', 'Counter32',  # 85 - 88
    'Counter32', 'Counter32', 'Counter32', 'Counter32',  # 89 - 92
    'Counter32', 'Counter32', 'Counter32', 'Counter32',  # 93 - 96
    'Counter32', 'Counter64', 'Counter64', 'Gauge32',  # 97 - 100
    'Gauge32', 'Counter64', 'Counter64', 'Counter32',  # 101 - 104
    'Gauge32', 'Counter32', 'Counter32', 'Counter32',  # 105 - 108
    'Gauge32', 'Gauge32', 'Gauge32', 'Gauge32',  # 109 - 112
    'Gauge32', 'Gauge32', 'Gauge32', 'Gauge32',  # 113 - 116
    'Gauge32', 'Gauge32', 'Gauge32', 'Gauge32',  # 117 - 120
    'Gauge32', 'Gauge32', 'Gauge32', 'Gauge32',  # 121 - 124
    'Counter64', 'Counter64', 'Gauge32', 'Gauge32',  # 125 - 128
    'Gauge32', 'Gauge32', 'Gauge32', 'Gauge32',  # 129 - 132
    'Gauge32', 'Gauge32', 'Gauge32', 'Gauge32',  # 133 - 136
    'Counter64', 'Counter64', 'Counter64', 'Counter64',  # 137 - 140
    'Counter64', 'Counter64', 'Counter64',  # 141 - 143
);

my @newkeys = (
    'myKeyReadRequests', 'myKeyReads',  # 1 - 2
    'myKeyWriteRequests', 'myKeyWrites',  # 3 - 4
    'myHistoryList', 'myInnodbTransactions',  # 5 - 6
    'myReadViews', 'myCurrentTransactions',  # 7 - 8
    'myLockedTransactions', 'myActiveTransactions',  # 9 - 10
    'myPoolSize', 'myFreePages',  # 11 - 12
    'myDatabasePages', 'myModifiedPages',  # 13 - 14
    'myPagesRead', 'myPagesCreated',  # 15 - 16
    'myPagesWritten', 'myFileFsyncs',  # 17 - 18
    'myFileReads', 'myFileWrites',  # 19 - 20
    'myLogWrites', 'myPendingAIOLogIOs',  # 21 - 22
    'myPendingAIOSyncIOs', 'myPendingBufPoolFlushes',  # 23 - 24
    'myPendingChkpWrites', 'myPendingIbufAIOReads',  # 25 - 26
    'myPendingLogFlushes', 'myPendingLogWrites',  # 27 - 28
    'myPendingNormalAIOReads', 'myPendingNormalAIOWrites',  # 29 - 30
    'myIbufInserts', 'myIbufMerged',  # 31 - 32
    'myIbufMerges', 'mySpinWaits',  # 33 - 34
    'mySpinRounds', 'myOsWaits',  # 35 - 36
    'myRowsInserted', 'myRowsUpdated',  # 37 - 38
    'myRowsDeleted', 'myRowsRead',  # 39 - 40
    'myTableLocksWaited', 'myTableLocksImmediate',  # 41 - 42
    'mySlowQueries', 'myOpenFiles',  # 43 - 44
    'myOpenTables', 'myOpenedTables',  # 45 - 46
    'myInnodbOpenFiles', 'myOpenFilesLimit',  # 47 - 48
    'myTableCache', 'myAbortedClients',  # 49 - 50
    'myAbortedConnects', 'myMaxUsedConnections',  # 51 - 52
    'mySlowLaunchThreads', 'myThreadsCached',  # 53 - 54
    'myThreadsConnected', 'myThreadsCreated',  # 55 - 56
    'myThreadsRunning', 'myMaxConnections',  # 57 - 58
    'myThreadCacheSize', 'myConnections',  # 59 - 60
    'mySlaveRunning', 'mySlaveStopped',  # 61 - 62
    'mySlaveRetriedTransactions', 'mySlaveLag',  # 63 - 64
    'mySlaveOpenTempTables', 'myQcacheFreeBlocks',  # 65 - 66
    'myQcacheFreeMemory', 'myQcacheHits',  # 67 - 68
    'myQcacheInserts', 'myQcacheLowmemPrunes',  # 69 - 70
    'myQcacheNotCached', 'myQcacheQueriesInCache',  # 71 - 72
    'myQcacheTotalBlocks', 'myQueryCacheSize',  # 73 - 74
    'myQuestions', 'myComUpdate',  # 75 - 76
    'myComInsert', 'myComSelect',  # 77 - 78
    'myComDelete', 'myComReplace',  # 79 - 80
    'myComLoad', 'myComUpdateMulti',  # 81 - 82
    'myComInsertSelect', 'myComDeleteMulti',  # 83 - 84
    'myComReplaceSelect', 'mySelectFullJoin',  # 85 - 86
    'mySelectFullRangeJoin', 'mySelectRange',  # 87 - 88
    'mySelectRangeCheck', 'mySelectScan',  # 89 - 90
    'mySortMergePasses', 'mySortRange',  # 91 - 92
    'mySortRows', 'mySortScan',  # 93 - 94
    'myCreatedTmpTables', 'myCreatedTmpDiskTables',  # 95 - 96
    'myCreatedTmpFiles', 'myBytesSent',  # 97 - 98
    'myBytesReceived', 'myInnodbLogBufferSize',  # 99 - 100
    'myUnflushedLog', 'myLogBytesFlushed',  # 101 - 102
    'myLogBytesWritten', 'myRelayLogSpace',  # 103 - 104
    'myBinlogCacheSize', 'myBinlogCacheDiskUse',  # 105 - 106
    'myBinlogCacheUse', 'myBinaryLogSpace',  # 107 - 108
    'myStateClosingTables', 'myStateCopyingToTmpTable',  # 109 - 110
    'myStateEnd', 'myStateFreeingItems',  # 111 - 112
    'myStateInit', 'myStateLocked',  # 113 - 114
    'myStateLogin', 'myStatePreparing',  # 115 - 116
    'myStateReadingFromNet', 'myStateSendingData',  # 117 - 118
    'myStateSortingResult', 'myStateStatistics',  # 119 - 120
    'myStateUpdating', 'myStateWritingToNet',  # 121 - 122
    'myStateNone', 'myStateOther',  # 123 - 124
    'myAdditionalPoolAlloc', 'myTotalMemAlloc',  # 125 - 126
    'myHashIndexCellsTotal', 'myHashIndexCellsUsed',  # 127 - 128
    'myInnoDBLockStructs', 'myInnoDBLockWaitSecs',  # 129 - 130
    'myInnoDBTablesInUse', 'myInnoDBLockedTables',  # 131 - 132
    'myUncheckpointedBytes', 'myIBufCellCount',  # 133 - 134
    'myIBufUsedCells', 'myIBufFreeCells',  # 135 - 136
    'myAdaptiveHashMemory', 'myPageHashMemory',  # 137 - 138
    'myDictionaryCacheMemory', 'myFileSystemMemory',  # 139 - 140
    'myLockSystemMemory', 'myRecoverySystemMemory',  # 141 - 142
    'myThreadHashMemory',  # 143 - 143
);

my @oldkeys = (
    'Key_read_requests', 'Key_reads',  # 1 - 2
    'Key_write_requests', 'Key_writes',  # 3 - 4
    'history_list', 'innodb_transactions',  # 5 - 6
    'read_views', 'current_transactions',  # 7 - 8
    'locked_transactions', 'active_transactions',  # 9 - 10
    'pool_size', 'free_pages',  # 11 - 12
    'database_pages', 'modified_pages',  # 13 - 14
    'pages_read', 'pages_created',  # 15 - 16
    'pages_written', 'file_fsyncs',  # 17 - 18
    'file_reads', 'file_writes',  # 19 - 20
    'log_writes', 'pending_aio_log_ios',  # 21 - 22
    'pending_aio_sync_ios', 'pending_buf_pool_flushes',  # 23 - 24
    'pending_chkp_writes', 'pending_ibuf_aio_reads',  # 25 - 26
    'pending_log_flushes', 'pending_log_writes',  # 27 - 28
    'pending_normal_aio_reads', 'pending_normal_aio_writes',  # 29 - 30
    'ibuf_inserts', 'ibuf_merged',  # 31 - 32
    'ibuf_merges', 'spin_waits',  # 33 - 34
    'spin_rounds', 'os_waits',  # 35 - 36
    'rows_inserted', 'rows_updated',  # 37 - 38
    'rows_deleted', 'rows_read',  # 39 - 40
    'Table_locks_waited', 'Table_locks_immediate',  # 41 - 42
    'Slow_queries', 'Open_files',  # 43 - 44
    'Open_tables', 'Opened_tables',  # 45 - 46
    'innodb_open_files', 'open_files_limit',  # 47 - 48
    'table_cache', 'Aborted_clients',  # 49 - 50
    'Aborted_connects', 'Max_used_connections',  # 51 - 52
    'Slow_launch_threads', 'Threads_cached',  # 53 - 54
    'Threads_connected', 'Threads_created',  # 55 - 56
    'Threads_running', 'max_connections',  # 57 - 58
    'thread_cache_size', 'Connections',  # 59 - 60
    'slave_running', 'slave_stopped',  # 61 - 62
    'Slave_retried_transactions', 'slave_lag',  # 63 - 64
    'Slave_open_temp_tables', 'Qcache_free_blocks',  # 65 - 66
    'Qcache_free_memory', 'Qcache_hits',  # 67 - 68
    'Qcache_inserts', 'Qcache_lowmem_prunes',  # 69 - 70
    'Qcache_not_cached', 'Qcache_queries_in_cache',  # 71 - 72
    'Qcache_total_blocks', 'query_cache_size',  # 73 - 74
    'Questions', 'Com_update',  # 75 - 76
    'Com_insert', 'Com_select',  # 77 - 78
    'Com_delete', 'Com_replace',  # 79 - 80
    'Com_load', 'Com_update_multi',  # 81 - 82
    'Com_insert_select', 'Com_delete_multi',  # 83 - 84
    'Com_replace_select', 'Select_full_join',  # 85 - 86
    'Select_full_range_join', 'Select_range',  # 87 - 88
    'Select_range_check', 'Select_scan',  # 89 - 90
    'Sort_merge_passes', 'Sort_range',  # 91 - 92
    'Sort_rows', 'Sort_scan',  # 93 - 94
    'Created_tmp_tables', 'Created_tmp_disk_tables',  # 95 - 96
    'Created_tmp_files', 'Bytes_sent',  # 97 - 98
    'Bytes_received', 'innodb_log_buffer_size',  # 99 - 100
    'unflushed_log', 'log_bytes_flushed',  # 101 - 102
    'log_bytes_written', 'relay_log_space',  # 103 - 104
    'binlog_cache_size', 'Binlog_cache_disk_use',  # 105 - 106
    'Binlog_cache_use', 'binary_log_space',  # 107 - 108
    'State_closing_tables', 'State_copying_to_tmp_table',  # 109 - 110
    'State_end', 'State_freeing_items',  # 111 - 112
    'State_init', 'State_locked',  # 113 - 114
    'State_login', 'State_preparing',  # 115 - 116
    'State_reading_from_net', 'State_sending_data',  # 117 - 118
    'State_sorting_result', 'State_statistics',  # 119 - 120
    'State_updating', 'State_writing_to_net',  # 121 - 122
    'State_none', 'State_other',  # 123 - 124
    'additional_pool_alloc', 'total_mem_alloc',  # 125 - 126
    'hash_index_cells_total', 'hash_index_cells_used',  # 127 - 128
    'innodb_lock_structs', 'innodb_lock_wait_secs',  # 129 - 130
    'innodb_tables_in_use', 'innodb_locked_tables',  # 131 - 132
    'uncheckpointed_bytes', 'ibuf_cell_count',  # 133 - 134
    'ibuf_used_cells', 'ibuf_free_cells',  # 135 - 136
    'adaptive_hash_memory', 'page_hash_memory',  # 137 - 138
    'dictionary_cache_memory', 'file_system_memory',  # 139 - 140
    'lock_system_memory', 'recovery_system_memory',  # 141 - 142
    'thread_hash_memory',  # 143 - 143
);


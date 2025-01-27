{{ config(
        tags = ['dunesql'],
        schema = 'seaport_polygon',
        alias =alias('traces'),
        unique_key = ['block_number', 'tx_hash', 'evt_index', 'order_hash', 'trace_side', 'trace_index']
        )
}}

{{seaport_traces(
    blockchain='polygon'
    , seaport_events = source('seaport_polygon', 'Seaport_evt_OrderFulfilled')
)}}

create database if not exists ${DB};
use ${DB};

drop table if exists item;

create table item
(
    i_item_sk                 bigint,
    i_item_id                 string,
    i_rec_start_date          date,
    i_rec_end_date            date,
    i_item_desc               string,
    i_current_price           double,
    i_wholesale_cost          double,
    i_brand_id                int,
    i_brand                   string,
    i_class_id                int,
    i_class                   string,
    i_category_id             int,
    i_category                string,
    i_manufact_id             int,
    i_manufact                string,
    i_size                    string,
    i_formulation             string,
    i_color                   string,
    i_units                   string,
    i_container               string,
    i_manager_id              int,
    i_product_name            string
)
stored as ${FILE};

insert overwrite table item
select * from ${SOURCE}.item sort by i_item_sk;

from gettext import pgettext
import pandas, psycopg

def main():
    dataframe = pandas.read_excel("sales.xlsx")
    for index, row in dataframe.iterrows():
        with get_connection() as connection:
            cursor = connection.cursor()
            cursor.execute(f"""
                INSERT INTO public.sales(
	            shoe_id, seller_id, warehouse_id, amount, customer_id, order_number, order_date)
	            VALUES ({get_shoe_id(row)}, 
                        {get_seller_id(row)}, 
                        {get_warehouse_id(row)}, 
                        {row["Кол-во пар"]}, 
                        {get_customer_id(row)}, 
                        {row["Номер заказа"]}, 
                        '{row["Дата заказа"]}');
            """)

            connection.commit()


def get_connection():
    return psycopg.connect(dbname = "shoe_store", 
                           port = 5433, 
                           user = "postgres", 
                           password = "***********")


def get_shoe_id(row):
    with get_connection() as connection:
        cursor = connection.cursor()
        cursor.execute(f"""
            SELECT id FROM shoes
            WHERE model = '{row["Название модели"]}';
        """)

        shoe_id = cursor.fetchone()[0]

    return shoe_id


def get_seller_id(row):
    with get_connection() as connection:
        cursor = connection.cursor()
        cursor.execute(f"""
            SELECT id FROM sellers
            WHERE name = '{row["ФИО продавца"]}';
        """)

        seller_id = cursor.fetchone()[0]

    return seller_id


def get_warehouse_id(row):
    with get_connection() as connection:
        cursor = connection.cursor()
        cursor.execute(f"""
            SELECT id FROM warehouses
            WHERE name = '{row["Склад отгрузки"]}';
        """)

        warehouse_id = cursor.fetchone()[0]

    return warehouse_id


def get_customer_id(row):
    with get_connection() as connection:
        cursor = connection.cursor()
        cursor.execute(f"""
            SELECT id FROM customers
            WHERE name = '{row["ФИО Клиента"]}';
        """)

        customer_id = cursor.fetchone()[0]

    return customer_id


if __name__ == "__main__":
    main()
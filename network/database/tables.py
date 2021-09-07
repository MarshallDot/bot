import aiofiles
import redis
import yaml
from psycopg2 import connect

global r
global r_funcs
global conn
global mariad
global prefix


async def config():
    async with aiofiles.open('../database/data.yaml', mode='r') as f:
        try:
            cont = await f.read()
            data = yaml.safe_load(cont)
            prefix = data["prefix"]
            postgrepass = data["postgre-password"]
            postgredb = data["postgre-database"]
            postgreuser = data["postgre-user"]
            postgreport = data["postgre-port"]
            postgrehost = data["postgre-host"]
            redispass = data["redis-password"]
            redisuser = data["redis-user"]
            redisport = data["redis-port"]
            redishost = data["redis-host"]
            if redisuser == "None" and redispass == "None":
                r = redis.Redis(host=redishost, port=redisport)
                r_funcs = redis.StrictRedis(host=redishost, port=redisport)
            elif redisuser == "None":
                r = redis.Redis(host=redishost, port=redisport, password=redispass)
                r_funcs = redis.StrictRedis(host=redishost, port=redisport, password=redispass)
            elif redispass == "None":
                r = redis.Redis(host=redishost, port=redisport, username=redispass)
                r_funcs = redis.StrictRedis(host=redishost, port=redisport, username=redispass)
            else:
                r = redis.Redis(host=redishost, port=redisport, username=redispass, password=redispass)
                r_funcs = redis.StrictRedis(host=redishost, port=redisport, username=redispass, password=redispass)
            if postgreuser == "None" and postgrepass == "None":
                conn = connect(
                    dbname=postgredb,
                    user=postgreuser,
                    host="172.28.1.4",
                    password=postgrepass
                )
            elif postgreuser == "None":
                conn = connect(
                    dbname=postgredb,
                    user=postgreuser,
                    host="172.28.1.4",
                    password=postgrepass
                )
            elif postgrepass == "None":
                conn = connect(
                    dbname=postgredb,
                    user=postgreuser,
                    host="172.28.1.4",
                    password=postgrepass
                )
            else:
                conn = connect(
                    dbname=postgredb,
                    user=postgreuser,
                    host="172.28.1.4",
                    password=postgrepass
                )
            mariad = conn
        except yaml.YAMLError as exc:
            print(exc)


async def createTables():
    cursor = mariad.cursor()
    cursor.execute("""
                    create or replace table server (
                        id                nvarchar(18)   not null,
                        mod_log           bool           not null,
                        profanity_filter  bool           not null,
                        message_log       bool           not null,
                        spam_filter       bool           not null,
                        mod_log_channel   nvarchar(18)   not null,
                        ban_message       nvarchar(1000) not null,
                        kick_message      nvarchar(1000) not null,
                        prefix            nvarchar(50)   not null,
                        force_ban_message nvarchar(1000) not null
                    );
                    """)
    cursor.execute("""
                    create or replace table log (
                        id        nvarchar(18)   not null,
                        server_id nvarchar(18)   not null,
                        type      nvarchar(100)  not null,
                        log       nvarchar(1800) not null
                    );
                   """)
    mariad.commit()

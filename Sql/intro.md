# Intro To DB

# Two Types of DB's sql(Relational Db) an non Sql(Object Storage,Non Sql)

# sql (mysql,postgress,sqlite,cockroachdb->hardydb,mariadb) -> Standard Query(ask,request) Language

# non sql(MongoDB,CouchDb,NeDB,firestore(firebase))

# Chosing a correct db is one of the most important part in app design.

#  sql a fixed shema(how your data looks){name,email,phone,password}
#  nonsql are scemaless(mongo,mongoose) {name,email,phone},{name,email,phone}
#  nonsql: is your data structured ? 
#  nonsql: Is replication required ? <Offline first capability>
#  how much records per table ?  max records per table <9,223,372,036,854,775,807>
#  10 sensors each sensor is sending data to the server after 10 minutes.
#  nonsql: don't have limits. Your limited to your storage space.<iot>256gb ,12 tb

json=>{name:"",email:"",phone:"",kins:[{name:"",email:"",phone:""},{name:"",email:"",phone:""},base64:]} <query>

patients,kins(garbage data=>manage it yourself)

sql patients,kins <patient_id> <samuel>
        
        # 50 people. 
# Sql-> sqlite(file storage db(),Scalling up),postgresql,maria,mysql(server db,concurrent conntion<1 million reads>,Vertical(2gb,8gb) and horizonal Scalling)

# sqlite->canvas -> postgresql -> look locally, supabase=>1gb,hippo 

# tools -> canvas

#postgresql db password: 4!$?yqa96!2i-AQ

# Create Tables.
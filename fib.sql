SQLite format 3   @     0                                                                        �    ����                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
   
    � ��|^:����lD���mE) �                                                                                                                                                                                     +#Can delete sitedelete_site  +#Can change sitechange_site %Can add siteadd_site& 1)Can delete sessiondelete_session& 1)Can change sessionchange_session  +#Can add sessionadd_session/ ;1Can delete content typedelete_contenttype/ ;1Can change content typechange_contenttype) 5+Can add content typeadd_contenttype& 1)Can delete messagedelete_message& 1)Can change messagechange_message 
 +#Can add messageadd_message 	 +#Can delete userdelete_user  +#Can change userchange_user %Can add useradd_user" -%Can delete groupdelete_group" -%Can change groupchange_group 'Can add groupadd_group, 7/Can delete permissiondelete_permission, 7/Can change permissionchange_permission& 1)Can add permissionadd_permission
   _ ������vdR@+ ������q_                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             #delete_site#change_siteadd_site)delete_session)change_session#add_session1delete_contenttype1change_contenttype+add_contenttype)delete_message)change_message#add_message
#delete_user	#change_useradd_user%delete_group%change_groupadd_group/delete_permission/change_permission)add_permission                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  �  ��$q                                                                                                                                                                  �++�Stableauth_permissionauth_permissionCREATE TABLE "auth_permission" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(50) NOT NULL,
    "content_type_id" integer NOT NULL,
    "codename" varchar(100) NOT NULL,
    UNIQUE ("content_type_id", "codename")
)=Q+ indexsqlite_autoindex_auth_permission_1auth_permission�99�Utableauth_group_permissionsauth_group_permissionsCREATE TABLE "auth_group_permissions" (
    "id" integer NOT NULL PRIMARY KEY,
    "group_id" integer NOT NULL,
    "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"),
    UNIQUE ("group_id", "permission_id")
)K_9 indexsqlite_autoindex_auth_group_permissions_1auth_group_permissions�!!�ctableauth_groupauth_groupCREATE TABLE "auth_group" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(80) NOT NULL UNIQUE
)    Cm��                                                                                                                                                                                                                                                            3G! indexsqlite_autoindex_auth_group_1auth_group�'AA�Ytableauth_user_user_permissionsauth_user_user_permissionsCREATE TABLE "auth_user_user_permissions" (
    "id" integer NOT NULL PRIMARY KEY,
    "user_id" integer NOT NULL,
    "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"),
    UNIQUE ("user_id", "permission_id")
)SgA indexsqlite_autoindex_auth_user_user_permissions_1auth_user_user_permissions	�z	--�'tableauth_user_groupsauth_user_groupsCREATE TABLE "auth_user_groups" (
    "id" integer NOT NULL PRIMARY KEY,
    "user_id" integer NOT NULL,
    "group_id" integer NOT NULL REFERENCES "auth_group" ("id"),
    UNIQUE ("user_id", "group_id")
)?
S- indexsqlite_autoindex_auth_user_groups_1auth_user_groups                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  '  '�'�                       �J�ctableauth_userauth_userCREATE TABLE "auth_user" (
    "id" integer NOT NULL PRIMARY KEY,
    "username" varchar(30) NOT NULL UNIQUE,
    "first_name" varchar(30) NOT NULL,
    "last_name" varchar(30) NOT NULL,
    "email" varchar(75) NOT NULL,
    "password" varchar(128) NOT NULL,
    "is_staff" bool NOT NULL,
    "is_active" bool NOT NULL,
    "is_superuser" bool NOT NULL,
    "last_login" datetime NOT NULL,
    "date_joined" datetime NOT NULL
)1E indexsqlite_autoindex_auth_user_1auth_user�E%%�Mtableauth_messageauth_messageCREATE TABLE "auth_message" (
    "id" integer NOT NULL PRIMARY KEY,
    "user_id" integer NOT NULL REFERENCES "auth_user" ("id"),
    "message" text NOT NULL
)�33�Ctabledjango_content_typedjango_content_typeCREATE TABLE "django_content_type" (
    "id" integer NOT NULL PRIMARY KEY,
    "name" varchar(100) NOT NULL,
    "app_label" varchar(100) NOT NULL,
    "model" varchar(100) NOT NULL,
    UNIQUE ("app_label", "model")
)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 E ����vYE                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                sitesitessite sessionsessionssession( %%#content typecontenttypescontenttype messageauthmessage userauthuser groupauthgroup !!permissionauthpermission
   } ������}                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       sitessitesessionssession%#contenttypescontenttypeauthmessageauthuserauthgroup!authpermission    B  B �P�<�_                                            EY3 indexsqlite_autoindex_django_content_type_1django_content_type�D))�Ctabledjango_sessiondjango_sessionCREATE TABLE "django_session" (
    "session_key" varchar(40) NOT NULL PRIMARY KEY,
    "session_data" text NOT NULL,
    "expire_date" datetime NOT NULL
);O) indexsqlite_autoindex_django_session_1django_session�,##�tabledjango_sitedjango_siteCREATE TABLE "django_site" (
    "id" integer NOT NULL PRIMARY KEY,
    "domain" varchar(100) NOT NULL,
    "name" varchar(50) NOT NULL
)�=+�-indexauth_permission_1bb8f392auth_permissionCREATE INDEX "auth_permission_1bb8f392" ON "auth_permission" ("content_type_id")�K9�;indexauth_group_permissions_425ae3c4auth_group_permissionsCREATE INDEX "auth_group_permissions_425ae3c4" ON "auth_group_permissions" ("group_id")�K9�Eindexauth_group_permissions_1e014c8fauth_group_permissionsCREATE INDEX "auth_group_permissions_1e014c8f" ON "auth_group_permissions" ("permission_id")                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 � �                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ##example.comexample.com
   � ���������������������                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                
	
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  � 2��� �                                                                                                                                                                |;)�!indexdjango_session_3da3d3d8django_session!CREATE INDEX "django_session_3da3d3d8" ON "django_session" ("expire_date")�&QA�Gindexauth_user_user_permissions_403f60fauth_user_user_permissionsCREATE INDEX "auth_user_user_permissions_403f60f" ON "auth_user_user_permissions" ("user_id")�.SA�Uindexauth_user_user_permissions_1e014c8fauth_user_user_permissionsCREATE INDEX "auth_user_user_permissions_1e014c8f" ON "auth_user_user_permissions" ("permission_id")~=-�indexauth_user_groups_403f60fauth_user_groupsCREATE INDEX "auth_user_groups_403f60f" ON "auth_user_groups" ("user_id")�?-�#indexauth_user_groups_425ae3c4auth_user_groupsCREATE INDEX "auth_user_groups_425ae3c4" ON "auth_user_groups" ("group_id")n5%�indexauth_message_403f60fauth_message CREATE INDEX "auth_message_403f60f" ON "auth_message" ("user_id")
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
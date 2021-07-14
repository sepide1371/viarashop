/*
 Navicat MongoDB Data Transfer

 Source Server         : mongodb
 Source Server Type    : MongoDB
 Source Server Version : 40201
 Source Host           : localhost:27017
 Source Schema         : product

 Target Server Type    : MongoDB
 Target Server Version : 40201
 File Encoding         : 65001

 Date: 14/07/2021 21:02:29
*/


// ----------------------------
// Collection structure for __schema__
// ----------------------------
db.getCollection("__schema__").drop();
db.createCollection("__schema__");
db.getCollection("__schema__").createIndex({
    name: NumberInt("1")
}, {
    name: "name_1",
    unique: true
});
db.getCollection("__schema__").createIndex({
    auto: NumberInt("1")
}, {
    name: "auto_1"
});

// ----------------------------
// Documents of __schema__
// ----------------------------
db.getCollection("__schema__").insert([ {
    _id: ObjectId("60eeb641068062d3ad843e6b"),
    name: "django_migrations",
    auto: {
        "field_names": [
            "id"
        ],
        seq: NumberInt("21")
    },
    fields: {
        app: {
            "type_code": "string"
        },
        applied: {
            "type_code": "date"
        },
        id: {
            "type_code": "int"
        },
        name: {
            "type_code": "string"
        }
    }
} ]);
db.getCollection("__schema__").insert([ {
    _id: ObjectId("60eeb641068062d3ad843e70"),
    name: "django_content_type",
    auto: {
        "field_names": [
            "id"
        ],
        seq: NumberInt("9")
    },
    fields: {
        "app_label": {
            "type_code": "string"
        },
        id: {
            "type_code": "int"
        },
        model: {
            "type_code": "string"
        }
    }
} ]);
db.getCollection("__schema__").insert([ {
    _id: ObjectId("60eeb641068062d3ad843e7a"),
    name: "auth_permission",
    auto: {
        "field_names": [
            "id"
        ],
        seq: NumberInt("36")
    },
    fields: {
        codename: {
            "type_code": "string"
        },
        "content_type_id": {
            "type_code": "int"
        },
        id: {
            "type_code": "int"
        },
        name: {
            "type_code": "string"
        }
    }
} ]);
db.getCollection("__schema__").insert([ {
    _id: ObjectId("60eeb642068062d3ad843e80"),
    name: "auth_group",
    auto: {
        "field_names": [
            "id"
        ],
        seq: NumberInt("0")
    },
    fields: {
        id: {
            "type_code": "int"
        },
        name: {
            "type_code": "string"
        }
    }
} ]);
db.getCollection("__schema__").insert([ {
    _id: ObjectId("60eeb642068062d3ad843e85"),
    name: "auth_group_permissions",
    auto: {
        "field_names": [
            "id"
        ],
        seq: NumberInt("0")
    },
    fields: {
        "group_id": {
            "type_code": "int"
        },
        id: {
            "type_code": "int"
        },
        "permission_id": {
            "type_code": "int"
        }
    }
} ]);
db.getCollection("__schema__").insert([ {
    _id: ObjectId("60eeb642068062d3ad843e8b"),
    name: "auth_user",
    auto: {
        "field_names": [
            "id"
        ],
        seq: NumberInt("1")
    },
    fields: {
        "date_joined": {
            "type_code": "date"
        },
        email: {
            "type_code": "string"
        },
        "first_name": {
            "type_code": "string"
        },
        id: {
            "type_code": "int"
        },
        "is_active": {
            "type_code": "bool"
        },
        "is_staff": {
            "type_code": "bool"
        },
        "is_superuser": {
            "type_code": "bool"
        },
        "last_login": {
            "type_code": "date"
        },
        "last_name": {
            "type_code": "string"
        },
        password: {
            "type_code": "string"
        },
        username: {
            "type_code": "string"
        }
    }
} ]);
db.getCollection("__schema__").insert([ {
    _id: ObjectId("60eeb642068062d3ad843e90"),
    name: "auth_user_groups",
    auto: {
        "field_names": [
            "id"
        ],
        seq: NumberInt("0")
    },
    fields: {
        "group_id": {
            "type_code": "int"
        },
        id: {
            "type_code": "int"
        },
        "user_id": {
            "type_code": "int"
        }
    }
} ]);
db.getCollection("__schema__").insert([ {
    _id: ObjectId("60eeb642068062d3ad843e95"),
    name: "auth_user_user_permissions",
    auto: {
        "field_names": [
            "id"
        ],
        seq: NumberInt("0")
    },
    fields: {
        id: {
            "type_code": "int"
        },
        "permission_id": {
            "type_code": "int"
        },
        "user_id": {
            "type_code": "int"
        }
    }
} ]);
db.getCollection("__schema__").insert([ {
    _id: ObjectId("60eeb642068062d3ad843ea9"),
    name: "django_admin_log",
    auto: {
        "field_names": [
            "id"
        ],
        seq: NumberInt("14")
    },
    fields: {
        "action_flag": {
            "type_code": "int"
        },
        "action_time": {
            "type_code": "date"
        },
        "change_message": {
            "type_code": "string"
        },
        "content_type_id": {
            "type_code": "int"
        },
        id: {
            "type_code": "int"
        },
        "object_id": {
            "type_code": "string"
        },
        "object_repr": {
            "type_code": "string"
        },
        "user_id": {
            "type_code": "int"
        }
    }
} ]);
db.getCollection("__schema__").insert([ {
    _id: ObjectId("60eeb642068062d3ad843edf"),
    name: "product_brand",
    auto: {
        "field_names": [
            "id"
        ],
        seq: NumberInt("3")
    },
    fields: {
        "brand_name": {
            "type_code": "string"
        },
        id: {
            "type_code": "long"
        }
    }
} ]);
db.getCollection("__schema__").insert([ {
    _id: ObjectId("60eeb642068062d3ad843ee4"),
    name: "product_category",
    auto: {
        "field_names": [
            "id"
        ],
        seq: NumberInt("3")
    },
    fields: {
        "category_name": {
            "type_code": "string"
        },
        id: {
            "type_code": "long"
        }
    }
} ]);
db.getCollection("__schema__").insert([ {
    _id: ObjectId("60eeb642068062d3ad843ee9"),
    name: "product_product",
    auto: {
        "field_names": [
            "id"
        ],
        seq: NumberInt("3")
    },
    fields: {
        description: {
            "type_code": "string"
        },
        id: {
            "type_code": "long"
        },
        price: {
            "type_code": "double"
        },
        "product_name": {
            "type_code": "string"
        },
        "brand_id": {
            "type_code": "long"
        }
    }
} ]);
db.getCollection("__schema__").insert([ {
    _id: ObjectId("60eeb642068062d3ad843eee"),
    name: "product_product_category_list",
    auto: {
        "field_names": [
            "id",
            "id"
        ],
        seq: NumberInt("6")
    },
    fields: {
        "category_id": {
            "type_code": "long"
        },
        id: {
            "type_code": "int"
        },
        "product_id": {
            "type_code": "long"
        }
    }
} ]);
db.getCollection("__schema__").insert([ {
    _id: ObjectId("60eeb642068062d3ad843efa"),
    name: "django_session",
    fields: {
        "expire_date": {
            "type_code": "date"
        },
        "session_data": {
            "type_code": "string"
        },
        "session_key": {
            "type_code": "string"
        }
    }
} ]);
db.getCollection("__schema__").insert([ {
    _id: ObjectId("60ef0d51edfa3da8d1d6c6b9"),
    name: "product_product_brands_list",
    auto: {
        "field_names": [
            "id"
        ],
        seq: NumberInt("2")
    },
    fields: {
        "brand_id": {
            "type_code": "long"
        },
        id: {
            "type_code": "int"
        },
        "product_id": {
            "type_code": "long"
        }
    }
} ]);

// ----------------------------
// Collection structure for auth_group
// ----------------------------
db.getCollection("auth_group").drop();
db.createCollection("auth_group");
db.getCollection("auth_group").createIndex({
    id: NumberInt("1")
}, {
    name: "__primary_key__",
    unique: true
});
db.getCollection("auth_group").createIndex({
    name: NumberInt("1")
}, {
    name: "name_1",
    unique: true
});

// ----------------------------
// Documents of auth_group
// ----------------------------

// ----------------------------
// Collection structure for auth_group_permissions
// ----------------------------
db.getCollection("auth_group_permissions").drop();
db.createCollection("auth_group_permissions");
db.getCollection("auth_group_permissions").createIndex({
    id: NumberInt("1")
}, {
    name: "__primary_key__",
    unique: true
});
db.getCollection("auth_group_permissions").createIndex({
    "group_id": NumberInt("1"),
    "permission_id": NumberInt("1")
}, {
    name: "auth_group_permissions_group_id_permission_id_0cd325b0_uniq",
    unique: true
});
db.getCollection("auth_group_permissions").createIndex({
    "group_id": NumberInt("1")
}, {
    name: "auth_group_permissions_group_id_b120cbf9"
});
db.getCollection("auth_group_permissions").createIndex({
    "permission_id": NumberInt("1")
}, {
    name: "auth_group_permissions_permission_id_84c5c92e"
});

// ----------------------------
// Documents of auth_group_permissions
// ----------------------------

// ----------------------------
// Collection structure for auth_permission
// ----------------------------
db.getCollection("auth_permission").drop();
db.createCollection("auth_permission");
db.getCollection("auth_permission").createIndex({
    id: NumberInt("1")
}, {
    name: "__primary_key__",
    unique: true
});
db.getCollection("auth_permission").createIndex({
    "content_type_id": NumberInt("1"),
    codename: NumberInt("1")
}, {
    name: "auth_permission_content_type_id_codename_01ab375a_uniq",
    unique: true
});
db.getCollection("auth_permission").createIndex({
    "content_type_id": NumberInt("1")
}, {
    name: "auth_permission_content_type_id_2f476e4b"
});

// ----------------------------
// Documents of auth_permission
// ----------------------------
db.getCollection("auth_permission").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d4d"),
    id: NumberInt("1"),
    name: "Can add log entry",
    "content_type_id": NumberInt("1"),
    codename: "add_logentry"
} ]);
db.getCollection("auth_permission").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d4e"),
    id: NumberInt("2"),
    name: "Can change log entry",
    "content_type_id": NumberInt("1"),
    codename: "change_logentry"
} ]);
db.getCollection("auth_permission").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d4f"),
    id: NumberInt("3"),
    name: "Can delete log entry",
    "content_type_id": NumberInt("1"),
    codename: "delete_logentry"
} ]);
db.getCollection("auth_permission").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d50"),
    id: NumberInt("4"),
    name: "Can view log entry",
    "content_type_id": NumberInt("1"),
    codename: "view_logentry"
} ]);
db.getCollection("auth_permission").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d54"),
    id: NumberInt("5"),
    name: "Can add permission",
    "content_type_id": NumberInt("2"),
    codename: "add_permission"
} ]);
db.getCollection("auth_permission").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d55"),
    id: NumberInt("6"),
    name: "Can change permission",
    "content_type_id": NumberInt("2"),
    codename: "change_permission"
} ]);
db.getCollection("auth_permission").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d56"),
    id: NumberInt("7"),
    name: "Can delete permission",
    "content_type_id": NumberInt("2"),
    codename: "delete_permission"
} ]);
db.getCollection("auth_permission").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d57"),
    id: NumberInt("8"),
    name: "Can view permission",
    "content_type_id": NumberInt("2"),
    codename: "view_permission"
} ]);
db.getCollection("auth_permission").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d58"),
    id: NumberInt("9"),
    name: "Can add group",
    "content_type_id": NumberInt("3"),
    codename: "add_group"
} ]);
db.getCollection("auth_permission").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d59"),
    id: NumberInt("10"),
    name: "Can change group",
    "content_type_id": NumberInt("3"),
    codename: "change_group"
} ]);
db.getCollection("auth_permission").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d5a"),
    id: NumberInt("11"),
    name: "Can delete group",
    "content_type_id": NumberInt("3"),
    codename: "delete_group"
} ]);
db.getCollection("auth_permission").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d5b"),
    id: NumberInt("12"),
    name: "Can view group",
    "content_type_id": NumberInt("3"),
    codename: "view_group"
} ]);
db.getCollection("auth_permission").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d5c"),
    id: NumberInt("13"),
    name: "Can add user",
    "content_type_id": NumberInt("4"),
    codename: "add_user"
} ]);
db.getCollection("auth_permission").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d5d"),
    id: NumberInt("14"),
    name: "Can change user",
    "content_type_id": NumberInt("4"),
    codename: "change_user"
} ]);
db.getCollection("auth_permission").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d5e"),
    id: NumberInt("15"),
    name: "Can delete user",
    "content_type_id": NumberInt("4"),
    codename: "delete_user"
} ]);
db.getCollection("auth_permission").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d5f"),
    id: NumberInt("16"),
    name: "Can view user",
    "content_type_id": NumberInt("4"),
    codename: "view_user"
} ]);
db.getCollection("auth_permission").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d61"),
    id: NumberInt("17"),
    name: "Can add content type",
    "content_type_id": NumberInt("5"),
    codename: "add_contenttype"
} ]);
db.getCollection("auth_permission").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d62"),
    id: NumberInt("18"),
    name: "Can change content type",
    "content_type_id": NumberInt("5"),
    codename: "change_contenttype"
} ]);
db.getCollection("auth_permission").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d63"),
    id: NumberInt("19"),
    name: "Can delete content type",
    "content_type_id": NumberInt("5"),
    codename: "delete_contenttype"
} ]);
db.getCollection("auth_permission").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d64"),
    id: NumberInt("20"),
    name: "Can view content type",
    "content_type_id": NumberInt("5"),
    codename: "view_contenttype"
} ]);
db.getCollection("auth_permission").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d66"),
    id: NumberInt("21"),
    name: "Can add session",
    "content_type_id": NumberInt("6"),
    codename: "add_session"
} ]);
db.getCollection("auth_permission").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d67"),
    id: NumberInt("22"),
    name: "Can change session",
    "content_type_id": NumberInt("6"),
    codename: "change_session"
} ]);
db.getCollection("auth_permission").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d68"),
    id: NumberInt("23"),
    name: "Can delete session",
    "content_type_id": NumberInt("6"),
    codename: "delete_session"
} ]);
db.getCollection("auth_permission").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d69"),
    id: NumberInt("24"),
    name: "Can view session",
    "content_type_id": NumberInt("6"),
    codename: "view_session"
} ]);
db.getCollection("auth_permission").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d6d"),
    id: NumberInt("25"),
    name: "Can add لیست برند",
    "content_type_id": NumberInt("7"),
    codename: "add_brand"
} ]);
db.getCollection("auth_permission").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d6e"),
    id: NumberInt("26"),
    name: "Can change لیست برند",
    "content_type_id": NumberInt("7"),
    codename: "change_brand"
} ]);
db.getCollection("auth_permission").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d6f"),
    id: NumberInt("27"),
    name: "Can delete لیست برند",
    "content_type_id": NumberInt("7"),
    codename: "delete_brand"
} ]);
db.getCollection("auth_permission").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d70"),
    id: NumberInt("28"),
    name: "Can view لیست برند",
    "content_type_id": NumberInt("7"),
    codename: "view_brand"
} ]);
db.getCollection("auth_permission").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d71"),
    id: NumberInt("29"),
    name: "Can add لیست دسته بندی",
    "content_type_id": NumberInt("8"),
    codename: "add_category"
} ]);
db.getCollection("auth_permission").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d72"),
    id: NumberInt("30"),
    name: "Can change لیست دسته بندی",
    "content_type_id": NumberInt("8"),
    codename: "change_category"
} ]);
db.getCollection("auth_permission").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d73"),
    id: NumberInt("31"),
    name: "Can delete لیست دسته بندی",
    "content_type_id": NumberInt("8"),
    codename: "delete_category"
} ]);
db.getCollection("auth_permission").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d74"),
    id: NumberInt("32"),
    name: "Can view لیست دسته بندی",
    "content_type_id": NumberInt("8"),
    codename: "view_category"
} ]);
db.getCollection("auth_permission").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d75"),
    id: NumberInt("33"),
    name: "Can add لیست محصولات ",
    "content_type_id": NumberInt("9"),
    codename: "add_product"
} ]);
db.getCollection("auth_permission").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d76"),
    id: NumberInt("34"),
    name: "Can change لیست محصولات ",
    "content_type_id": NumberInt("9"),
    codename: "change_product"
} ]);
db.getCollection("auth_permission").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d77"),
    id: NumberInt("35"),
    name: "Can delete لیست محصولات ",
    "content_type_id": NumberInt("9"),
    codename: "delete_product"
} ]);
db.getCollection("auth_permission").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d78"),
    id: NumberInt("36"),
    name: "Can view لیست محصولات ",
    "content_type_id": NumberInt("9"),
    codename: "view_product"
} ]);

// ----------------------------
// Collection structure for auth_user
// ----------------------------
db.getCollection("auth_user").drop();
db.createCollection("auth_user");
db.getCollection("auth_user").createIndex({
    id: NumberInt("1")
}, {
    name: "__primary_key__",
    unique: true
});
db.getCollection("auth_user").createIndex({
    username: NumberInt("1")
}, {
    name: "username_1",
    unique: true
});

// ----------------------------
// Documents of auth_user
// ----------------------------
db.getCollection("auth_user").insert([ {
    _id: ObjectId("60eebcd35249a44dd6ff7a2c"),
    id: NumberInt("1"),
    password: "pbkdf2_sha256$260000$flnAM4Ey5GzhFijNCiMX22$WYZkFD2Yn410IjRrc9i57lEuvY6TDiRZLFKzAP1iRKc=",
    "last_login": ISODate("2021-07-14T16:15:06.24Z"),
    "is_superuser": true,
    username: "admin",
    "first_name": "",
    "last_name": "",
    email: "",
    "is_staff": true,
    "is_active": true,
    "date_joined": ISODate("2021-07-14T10:30:43.78Z")
} ]);

// ----------------------------
// Collection structure for auth_user_groups
// ----------------------------
db.getCollection("auth_user_groups").drop();
db.createCollection("auth_user_groups");
db.getCollection("auth_user_groups").createIndex({
    id: NumberInt("1")
}, {
    name: "__primary_key__",
    unique: true
});
db.getCollection("auth_user_groups").createIndex({
    "user_id": NumberInt("1"),
    "group_id": NumberInt("1")
}, {
    name: "auth_user_groups_user_id_group_id_94350c0c_uniq",
    unique: true
});
db.getCollection("auth_user_groups").createIndex({
    "user_id": NumberInt("1")
}, {
    name: "auth_user_groups_user_id_6a12ed8b"
});
db.getCollection("auth_user_groups").createIndex({
    "group_id": NumberInt("1")
}, {
    name: "auth_user_groups_group_id_97559544"
});

// ----------------------------
// Documents of auth_user_groups
// ----------------------------

// ----------------------------
// Collection structure for auth_user_user_permissions
// ----------------------------
db.getCollection("auth_user_user_permissions").drop();
db.createCollection("auth_user_user_permissions");
db.getCollection("auth_user_user_permissions").createIndex({
    id: NumberInt("1")
}, {
    name: "__primary_key__",
    unique: true
});
db.getCollection("auth_user_user_permissions").createIndex({
    "user_id": NumberInt("1"),
    "permission_id": NumberInt("1")
}, {
    name: "auth_user_user_permiss_user_id_permission_id_14a6b632_uniq",
    unique: true
});
db.getCollection("auth_user_user_permissions").createIndex({
    "user_id": NumberInt("1")
}, {
    name: "auth_user_user_permissions_user_id_a95ead1b"
});
db.getCollection("auth_user_user_permissions").createIndex({
    "permission_id": NumberInt("1")
}, {
    name: "auth_user_user_permissions_permission_id_1fbb5f2c"
});

// ----------------------------
// Documents of auth_user_user_permissions
// ----------------------------

// ----------------------------
// Collection structure for django_admin_log
// ----------------------------
db.getCollection("django_admin_log").drop();
db.createCollection("django_admin_log");
db.getCollection("django_admin_log").createIndex({
    id: NumberInt("1")
}, {
    name: "__primary_key__",
    unique: true
});
db.getCollection("django_admin_log").createIndex({
    "content_type_id": NumberInt("1")
}, {
    name: "django_admin_log_content_type_id_c4bce8eb"
});
db.getCollection("django_admin_log").createIndex({
    "user_id": NumberInt("1")
}, {
    name: "django_admin_log_user_id_c564eba6"
});

// ----------------------------
// Documents of django_admin_log
// ----------------------------
db.getCollection("django_admin_log").insert([ {
    _id: ObjectId("60eebd7cc2d24a2d99bb5c93"),
    id: NumberInt("1"),
    "action_time": ISODate("2021-07-14T10:33:32.098Z"),
    "user_id": NumberInt("1"),
    "content_type_id": NumberInt("8"),
    "object_id": "1",
    "object_repr": "آرایشی",
    "action_flag": NumberInt("1"),
    "change_message": "[{\"added\": {}}]"
} ]);
db.getCollection("django_admin_log").insert([ {
    _id: ObjectId("60eebd83c2d24a2d99bb5c95"),
    id: NumberInt("2"),
    "action_time": ISODate("2021-07-14T10:33:39.269Z"),
    "user_id": NumberInt("1"),
    "content_type_id": NumberInt("8"),
    "object_id": "2",
    "object_repr": "ریمل",
    "action_flag": NumberInt("1"),
    "change_message": "[{\"added\": {}}]"
} ]);
db.getCollection("django_admin_log").insert([ {
    _id: ObjectId("60eebdb7c2d24a2d99bb5c97"),
    id: NumberInt("3"),
    "action_time": ISODate("2021-07-14T10:34:31.317Z"),
    "user_id": NumberInt("1"),
    "content_type_id": NumberInt("7"),
    "object_id": "1",
    "object_repr": "Mac",
    "action_flag": NumberInt("1"),
    "change_message": "[{\"added\": {}}]"
} ]);
db.getCollection("django_admin_log").insert([ {
    _id: ObjectId("60eebdbfc2d24a2d99bb5c9b"),
    id: NumberInt("4"),
    "action_time": ISODate("2021-07-14T10:34:39.233Z"),
    "user_id": NumberInt("1"),
    "content_type_id": NumberInt("9"),
    "object_id": "1",
    "object_repr": "ریمل ابرو",
    "action_flag": NumberInt("1"),
    "change_message": "[{\"added\": {}}]"
} ]);
db.getCollection("django_admin_log").insert([ {
    _id: ObjectId("60eebe03c2d24a2d99bb5c9d"),
    id: NumberInt("5"),
    "action_time": ISODate("2021-07-14T10:35:46.997Z"),
    "user_id": NumberInt("1"),
    "content_type_id": NumberInt("8"),
    "object_id": "3",
    "object_repr": "رژلب",
    "action_flag": NumberInt("1"),
    "change_message": "[{\"added\": {}}]"
} ]);
db.getCollection("django_admin_log").insert([ {
    _id: ObjectId("60eebe1ac2d24a2d99bb5c9f"),
    id: NumberInt("6"),
    "action_time": ISODate("2021-07-14T10:36:10.67Z"),
    "user_id": NumberInt("1"),
    "content_type_id": NumberInt("7"),
    "object_id": "2",
    "object_repr": "Violet",
    "action_flag": NumberInt("1"),
    "change_message": "[{\"added\": {}}]"
} ]);
db.getCollection("django_admin_log").insert([ {
    _id: ObjectId("60eebe2ac2d24a2d99bb5ca3"),
    id: NumberInt("7"),
    "action_time": ISODate("2021-07-14T10:36:26.126Z"),
    "user_id": NumberInt("1"),
    "content_type_id": NumberInt("9"),
    "object_id": "2",
    "object_repr": "رژلب",
    "action_flag": NumberInt("1"),
    "change_message": "[{\"added\": {}}]"
} ]);
db.getCollection("django_admin_log").insert([ {
    _id: ObjectId("60eebe56c2d24a2d99bb5ca7"),
    id: NumberInt("8"),
    "action_time": ISODate("2021-07-14T10:37:10.216Z"),
    "user_id": NumberInt("1"),
    "content_type_id": NumberInt("9"),
    "object_id": "3",
    "object_repr": "ریمل",
    "action_flag": NumberInt("1"),
    "change_message": "[{\"added\": {}}]"
} ]);
db.getCollection("django_admin_log").insert([ {
    _id: ObjectId("60ef0daea50afb86cfbc3869"),
    id: NumberInt("9"),
    "action_time": ISODate("2021-07-14T16:15:42.215Z"),
    "user_id": NumberInt("1"),
    "content_type_id": NumberInt("9"),
    "object_id": "3",
    "object_repr": "ریمل",
    "action_flag": NumberInt("2"),
    "change_message": "[{\"changed\": {\"fields\": [\"\\u0644\\u06cc\\u0633\\u062a \\u0628\\u0631\\u0646\\u062f\", \"\\u0646\\u0627\\u0645 \\u062f\\u0633\\u062a\\u0647 \\u0628\\u0646\\u062f\\u06cc\"]}}]"
} ]);
db.getCollection("django_admin_log").insert([ {
    _id: ObjectId("60ef0e2634ce72952d7dba4c"),
    id: NumberInt("10"),
    "action_time": ISODate("2021-07-14T16:17:42.156Z"),
    "user_id": NumberInt("1"),
    "content_type_id": NumberInt("9"),
    "object_id": "3",
    "object_repr": "ریمل",
    "action_flag": NumberInt("2"),
    "change_message": "[{\"changed\": {\"fields\": [\"\\u0644\\u06cc\\u0633\\u062a \\u062f\\u0633\\u062a\\u0647 \\u0628\\u0646\\u062f\\u06cc\", \"\\u0646\\u0627\\u0645 \\u0628\\u0631\\u0646\\u062f\"]}}]"
} ]);
db.getCollection("django_admin_log").insert([ {
    _id: ObjectId("60ef0e3634ce72952d7dba4f"),
    id: NumberInt("11"),
    "action_time": ISODate("2021-07-14T16:17:58.408Z"),
    "user_id": NumberInt("1"),
    "content_type_id": NumberInt("9"),
    "object_id": "2",
    "object_repr": "رژلب",
    "action_flag": NumberInt("2"),
    "change_message": "[{\"changed\": {\"fields\": [\"\\u0644\\u06cc\\u0633\\u062a \\u062f\\u0633\\u062a\\u0647 \\u0628\\u0646\\u062f\\u06cc\", \"\\u0646\\u0627\\u0645 \\u0628\\u0631\\u0646\\u062f\"]}}]"
} ]);
db.getCollection("django_admin_log").insert([ {
    _id: ObjectId("60ef0e4534ce72952d7dba52"),
    id: NumberInt("12"),
    "action_time": ISODate("2021-07-14T16:18:13.408Z"),
    "user_id": NumberInt("1"),
    "content_type_id": NumberInt("9"),
    "object_id": "1",
    "object_repr": "ریمل ابرو",
    "action_flag": NumberInt("2"),
    "change_message": "[{\"changed\": {\"fields\": [\"\\u0644\\u06cc\\u0633\\u062a \\u062f\\u0633\\u062a\\u0647 \\u0628\\u0646\\u062f\\u06cc\", \"\\u0646\\u0627\\u0645 \\u0628\\u0631\\u0646\\u062f\"]}}]"
} ]);
db.getCollection("django_admin_log").insert([ {
    _id: ObjectId("60ef0e9b34ce72952d7dba54"),
    id: NumberInt("13"),
    "action_time": ISODate("2021-07-14T16:19:39.328Z"),
    "user_id": NumberInt("1"),
    "content_type_id": NumberInt("7"),
    "object_id": "3",
    "object_repr": "BELL",
    "action_flag": NumberInt("1"),
    "change_message": "[{\"added\": {}}]"
} ]);
db.getCollection("django_admin_log").insert([ {
    _id: ObjectId("60ef0e9f34ce72952d7dba55"),
    id: NumberInt("14"),
    "action_time": ISODate("2021-07-14T16:19:43.935Z"),
    "user_id": NumberInt("1"),
    "content_type_id": NumberInt("9"),
    "object_id": "1",
    "object_repr": "ریمل  بل",
    "action_flag": NumberInt("2"),
    "change_message": "[{\"changed\": {\"fields\": [\"\\u0646\\u0627\\u0645 \\u0645\\u062d\\u0635\\u0648\\u0644\", \"\\u0646\\u0627\\u0645 \\u0628\\u0631\\u0646\\u062f\"]}}]"
} ]);

// ----------------------------
// Collection structure for django_content_type
// ----------------------------
db.getCollection("django_content_type").drop();
db.createCollection("django_content_type");
db.getCollection("django_content_type").createIndex({
    id: NumberInt("1")
}, {
    name: "__primary_key__",
    unique: true
});
db.getCollection("django_content_type").createIndex({
    "app_label": NumberInt("1"),
    model: NumberInt("1")
}, {
    name: "django_content_type_app_label_model_76bd3d3b_uniq",
    unique: true
});

// ----------------------------
// Documents of django_content_type
// ----------------------------
db.getCollection("django_content_type").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d4c"),
    id: NumberInt("1"),
    "app_label": "admin",
    model: "logentry"
} ]);
db.getCollection("django_content_type").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d51"),
    id: NumberInt("2"),
    "app_label": "auth",
    model: "permission"
} ]);
db.getCollection("django_content_type").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d52"),
    id: NumberInt("3"),
    "app_label": "auth",
    model: "group"
} ]);
db.getCollection("django_content_type").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d53"),
    id: NumberInt("4"),
    "app_label": "auth",
    model: "user"
} ]);
db.getCollection("django_content_type").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d60"),
    id: NumberInt("5"),
    "app_label": "contenttypes",
    model: "contenttype"
} ]);
db.getCollection("django_content_type").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d65"),
    id: NumberInt("6"),
    "app_label": "sessions",
    model: "session"
} ]);
db.getCollection("django_content_type").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d6a"),
    id: NumberInt("7"),
    "app_label": "product",
    model: "brand"
} ]);
db.getCollection("django_content_type").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d6b"),
    id: NumberInt("8"),
    "app_label": "product",
    model: "category"
} ]);
db.getCollection("django_content_type").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d6c"),
    id: NumberInt("9"),
    "app_label": "product",
    model: "product"
} ]);

// ----------------------------
// Collection structure for django_migrations
// ----------------------------
db.getCollection("django_migrations").drop();
db.createCollection("django_migrations");
db.getCollection("django_migrations").createIndex({
    id: NumberInt("1")
}, {
    name: "__primary_key__",
    unique: true
});

// ----------------------------
// Documents of django_migrations
// ----------------------------
db.getCollection("django_migrations").insert([ {
    _id: ObjectId("60eeb64185fd87a9b0332d39"),
    id: NumberInt("1"),
    app: "contenttypes",
    name: "0001_initial",
    applied: ISODate("2021-07-14T10:02:41.945Z")
} ]);
db.getCollection("django_migrations").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d3a"),
    id: NumberInt("2"),
    app: "auth",
    name: "0001_initial",
    applied: ISODate("2021-07-14T10:02:42.373Z")
} ]);
db.getCollection("django_migrations").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d3b"),
    id: NumberInt("3"),
    app: "admin",
    name: "0001_initial",
    applied: ISODate("2021-07-14T10:02:42.445Z")
} ]);
db.getCollection("django_migrations").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d3c"),
    id: NumberInt("4"),
    app: "admin",
    name: "0002_logentry_remove_auto_add",
    applied: ISODate("2021-07-14T10:02:42.453Z")
} ]);
db.getCollection("django_migrations").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d3d"),
    id: NumberInt("5"),
    app: "admin",
    name: "0003_logentry_add_action_flag_choices",
    applied: ISODate("2021-07-14T10:02:42.46Z")
} ]);
db.getCollection("django_migrations").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d3e"),
    id: NumberInt("6"),
    app: "contenttypes",
    name: "0002_remove_content_type_name",
    applied: ISODate("2021-07-14T10:02:42.476Z")
} ]);
db.getCollection("django_migrations").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d3f"),
    id: NumberInt("7"),
    app: "auth",
    name: "0002_alter_permission_name_max_length",
    applied: ISODate("2021-07-14T10:02:42.484Z")
} ]);
db.getCollection("django_migrations").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d40"),
    id: NumberInt("8"),
    app: "auth",
    name: "0003_alter_user_email_max_length",
    applied: ISODate("2021-07-14T10:02:42.493Z")
} ]);
db.getCollection("django_migrations").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d41"),
    id: NumberInt("9"),
    app: "auth",
    name: "0004_alter_user_username_opts",
    applied: ISODate("2021-07-14T10:02:42.501Z")
} ]);
db.getCollection("django_migrations").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d42"),
    id: NumberInt("10"),
    app: "auth",
    name: "0005_alter_user_last_login_null",
    applied: ISODate("2021-07-14T10:02:42.509Z")
} ]);
db.getCollection("django_migrations").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d43"),
    id: NumberInt("11"),
    app: "auth",
    name: "0006_require_contenttypes_0002",
    applied: ISODate("2021-07-14T10:02:42.512Z")
} ]);
db.getCollection("django_migrations").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d44"),
    id: NumberInt("12"),
    app: "auth",
    name: "0007_alter_validators_add_error_messages",
    applied: ISODate("2021-07-14T10:02:42.52Z")
} ]);
db.getCollection("django_migrations").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d45"),
    id: NumberInt("13"),
    app: "auth",
    name: "0008_alter_user_username_max_length",
    applied: ISODate("2021-07-14T10:02:42.528Z")
} ]);
db.getCollection("django_migrations").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d46"),
    id: NumberInt("14"),
    app: "auth",
    name: "0009_alter_user_last_name_max_length",
    applied: ISODate("2021-07-14T10:02:42.536Z")
} ]);
db.getCollection("django_migrations").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d47"),
    id: NumberInt("15"),
    app: "auth",
    name: "0010_alter_group_name_max_length",
    applied: ISODate("2021-07-14T10:02:42.545Z")
} ]);
db.getCollection("django_migrations").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d48"),
    id: NumberInt("16"),
    app: "auth",
    name: "0011_update_proxy_permissions",
    applied: ISODate("2021-07-14T10:02:42.571Z")
} ]);
db.getCollection("django_migrations").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d49"),
    id: NumberInt("17"),
    app: "auth",
    name: "0012_alter_user_first_name_max_length",
    applied: ISODate("2021-07-14T10:02:42.579Z")
} ]);
db.getCollection("django_migrations").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d4a"),
    id: NumberInt("18"),
    app: "product",
    name: "0001_initial",
    applied: ISODate("2021-07-14T10:02:42.774Z")
} ]);
db.getCollection("django_migrations").insert([ {
    _id: ObjectId("60eeb64285fd87a9b0332d4b"),
    id: NumberInt("19"),
    app: "sessions",
    name: "0001_initial",
    applied: ISODate("2021-07-14T10:02:42.825Z")
} ]);
db.getCollection("django_migrations").insert([ {
    _id: ObjectId("60ef0d55dabecf4fbadec29e"),
    id: NumberInt("20"),
    app: "product",
    name: "0002_auto_20210714_2043",
    applied: ISODate("2021-07-14T16:14:13.317Z")
} ]);
db.getCollection("django_migrations").insert([ {
    _id: ObjectId("60ef0e0ce69bdf2bd8b814e1"),
    id: NumberInt("21"),
    app: "product",
    name: "0003_auto_20210714_2047",
    applied: ISODate("2021-07-14T16:17:16.079Z")
} ]);

// ----------------------------
// Collection structure for django_session
// ----------------------------
db.getCollection("django_session").drop();
db.createCollection("django_session");
db.getCollection("django_session").createIndex({
    "session_key": NumberInt("1")
}, {
    name: "__primary_key__",
    unique: true
});
db.getCollection("django_session").createIndex({
    "expire_date": NumberInt("1")
}, {
    name: "django_session_expire_date_a5c62663"
});

// ----------------------------
// Documents of django_session
// ----------------------------
db.getCollection("django_session").insert([ {
    _id: ObjectId("60eebcf8c2d24a2d99bb5c91"),
    "session_key": "dwjk0qsq0ey46vkhjgon27ijgz0obm7t",
    "session_data": ".eJxVjE0OwiAYBe_C2hCwLQWX7nsG8v0hVQNJaVfGu2uTLnT7Zua9VIRtzXFrssSZ1UVZdfrdEOghZQd8h3KrmmpZlxn1ruiDNj1Vluf1cP8OMrT8rQexzB67BCgGyKB3o7iR7Dn5QCn0rgMLPXhAwIQUbCIiNpaNC92A6v0BHUI5cA:1m3cAi:6VID5e9sT5deUh1rzfPIJs3ILNC53IrbqVgQiptBkHw",
    "expire_date": ISODate("2021-07-28T10:31:20.478Z")
} ]);
db.getCollection("django_session").insert([ {
    _id: ObjectId("60ef0d8aa50afb86cfbc3866"),
    "session_key": "7hep16k98ez7eikjsx8drq0n5sgcuwbx",
    "session_data": ".eJxVjE0OwiAYBe_C2hCwLQWX7nsG8v0hVQNJaVfGu2uTLnT7Zua9VIRtzXFrssSZ1UVZdfrdEOghZQd8h3KrmmpZlxn1ruiDNj1Vluf1cP8OMrT8rQexzB67BCgGyKB3o7iR7Dn5QCn0rgMLPXhAwIQUbCIiNpaNC92A6v0BHUI5cA:1m3hXO:OwN3-kVIGPLzSaXxXtFbYgWcdFnHrcJ0AjjmDfOb83k",
    "expire_date": ISODate("2021-07-28T16:15:06.245Z")
} ]);

// ----------------------------
// Collection structure for product_brand
// ----------------------------
db.getCollection("product_brand").drop();
db.createCollection("product_brand");
db.getCollection("product_brand").createIndex({
    id: NumberInt("1")
}, {
    name: "__primary_key__",
    unique: true
});

// ----------------------------
// Documents of product_brand
// ----------------------------
db.getCollection("product_brand").insert([ {
    _id: ObjectId("60eebdb7c2d24a2d99bb5c96"),
    id: NumberInt("1"),
    "brand_name": "Mac"
} ]);
db.getCollection("product_brand").insert([ {
    _id: ObjectId("60eebe1ac2d24a2d99bb5c9e"),
    id: NumberInt("2"),
    "brand_name": "Violet"
} ]);
db.getCollection("product_brand").insert([ {
    _id: ObjectId("60ef0e9b34ce72952d7dba53"),
    id: NumberInt("3"),
    "brand_name": "BELL"
} ]);

// ----------------------------
// Collection structure for product_category
// ----------------------------
db.getCollection("product_category").drop();
db.createCollection("product_category");
db.getCollection("product_category").createIndex({
    id: NumberInt("1")
}, {
    name: "__primary_key__",
    unique: true
});

// ----------------------------
// Documents of product_category
// ----------------------------
db.getCollection("product_category").insert([ {
    _id: ObjectId("60eebd7cc2d24a2d99bb5c92"),
    id: NumberInt("1"),
    "category_name": "آرایشی"
} ]);
db.getCollection("product_category").insert([ {
    _id: ObjectId("60eebd83c2d24a2d99bb5c94"),
    id: NumberInt("2"),
    "category_name": "ریمل"
} ]);
db.getCollection("product_category").insert([ {
    _id: ObjectId("60eebe02c2d24a2d99bb5c9c"),
    id: NumberInt("3"),
    "category_name": "رژلب"
} ]);

// ----------------------------
// Collection structure for product_product
// ----------------------------
db.getCollection("product_product").drop();
db.createCollection("product_product");
db.getCollection("product_product").createIndex({
    id: NumberInt("1")
}, {
    name: "__primary_key__",
    unique: true
});
db.getCollection("product_product").createIndex({
    "brand_id": NumberInt("1")
}, {
    name: "product_product_brand_id_fcf1b3f3"
});
db.getCollection("product_product").createIndex({
    "category_id": NumberInt("1")
}, {
    name: "product_product_category_id_0c725779"
});

// ----------------------------
// Documents of product_product
// ----------------------------
db.getCollection("product_product").insert([ {
    _id: ObjectId("60eebdbfc2d24a2d99bb5c98"),
    id: NumberInt("1"),
    "product_name": "ریمل  بل",
    price: 1250000,
    description: "توضیحات مربوط به ریمل ابرو در این باکس قرار میگیرد",
    "brand_id": NumberInt("3")
} ]);
db.getCollection("product_product").insert([ {
    _id: ObjectId("60eebe2ac2d24a2d99bb5ca0"),
    id: NumberInt("2"),
    "product_name": "رژلب",
    price: 600000,
    description: "توضیحات مربوط به رژلب در این باکس قرار میگیرد",
    "brand_id": NumberInt("2")
} ]);
db.getCollection("product_product").insert([ {
    _id: ObjectId("60eebe56c2d24a2d99bb5ca4"),
    id: NumberInt("3"),
    "product_name": "ریمل",
    price: 2500000,
    description: "توضیحات مربوط به ریمل در این باکس قرار میگیرد",
    "brand_id": NumberInt("1")
} ]);

// ----------------------------
// Collection structure for product_product_category_list
// ----------------------------
db.getCollection("product_product_category_list").drop();
db.createCollection("product_product_category_list");
db.getCollection("product_product_category_list").createIndex({
    id: NumberInt("1")
}, {
    name: "__primary_key__",
    unique: true
});
db.getCollection("product_product_category_list").createIndex({
    "product_id": NumberInt("1"),
    "category_id": NumberInt("1")
}, {
    name: "product_product_catego_product_id_category_id_3f5ec01f_uniq",
    unique: true
});
db.getCollection("product_product_category_list").createIndex({
    "product_id": NumberInt("1")
}, {
    name: "product_product_category_list_product_id_7b7f46e3"
});
db.getCollection("product_product_category_list").createIndex({
    "category_id": NumberInt("1")
}, {
    name: "product_product_category_list_category_id_ebc649d0"
});

// ----------------------------
// Documents of product_product_category_list
// ----------------------------
db.getCollection("product_product_category_list").insert([ {
    _id: ObjectId("60ef0e2634ce72952d7dba4a"),
    id: NumberInt("1"),
    "product_id": NumberInt("3"),
    "category_id": NumberInt("1")
} ]);
db.getCollection("product_product_category_list").insert([ {
    _id: ObjectId("60ef0e2634ce72952d7dba4b"),
    id: NumberInt("2"),
    "product_id": NumberInt("3"),
    "category_id": NumberInt("2")
} ]);
db.getCollection("product_product_category_list").insert([ {
    _id: ObjectId("60ef0e3634ce72952d7dba4d"),
    id: NumberInt("3"),
    "product_id": NumberInt("2"),
    "category_id": NumberInt("1")
} ]);
db.getCollection("product_product_category_list").insert([ {
    _id: ObjectId("60ef0e3634ce72952d7dba4e"),
    id: NumberInt("4"),
    "product_id": NumberInt("2"),
    "category_id": NumberInt("3")
} ]);
db.getCollection("product_product_category_list").insert([ {
    _id: ObjectId("60ef0e4534ce72952d7dba50"),
    id: NumberInt("5"),
    "product_id": NumberInt("1"),
    "category_id": NumberInt("1")
} ]);
db.getCollection("product_product_category_list").insert([ {
    _id: ObjectId("60ef0e4534ce72952d7dba51"),
    id: NumberInt("6"),
    "product_id": NumberInt("1"),
    "category_id": NumberInt("2")
} ]);

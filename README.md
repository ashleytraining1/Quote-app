# DESCRIPTION

This is a backend Quote API that provides a way to create,update,delete quotes.It also provides a user with a way to comment on a particular quote.

# SETUP REQUIREMENTS

-Github(to clone the repository)
-Ruby
-Rails(the framework)
-mySQL(to run the database)
-Postman(for testing the api)
-Railway (deployment)

# SETUP INSTALLATION

-clone the repository
-cd into your project directory by running:
cd -run: rails g resource(this it to create migrations,models and controllers )

-You can create your own seeds manually or using faker to have a data for your tables.
-Once you have created the seeds run: rails db:migrate db:seed(to run migrations and update the schema and to generate the seeded data to your tables)
-run: rails s(to run your server)
-open postman to test whether your API is working and whether the data is being fetched using the following link:
http://localhost:8000

# ENDPOINTS

# GET /quotes

-get a list of all quotes

[
{
"id": 1,
"category": "Love",
"description": "Spread love everywhere you go. Let no one ever come to you without leaving happier",
"comments": [
{
"id": 3,
"star_rating": "1",
"comment": "Velit commodi aut quo repudiandae excepturi.",
"quote_id": 1,
"user_id": 3
},
{
"id": 11,
"star_rating": "8",
"comment": "Voluptate excepturi mollitia.",
"quote_id": 1,
"user_id": 5
},
{
"id": 12,
"star_rating": "8",
"comment": "Tempore.",
"quote_id": 1,
"user_id": 3
}
]
},
{
"id": 2,
"category": "Love",
"description": "Age does not protect you from love, but love to some extent protects you from age.",
"comments": [
{
"id": 4,
"star_rating": "3",
"comment": "Vel expedita perferendis.",
"quote_id": 2,
"user_id": 3
},
{
"id": 5,
"star_rating": "10",
"comment": "Minima sapiente unde eum et molestiae quo esse.",
"quote_id": 2,
"user_id": 5
},
{
"id": 8,
"star_rating": "10",
"comment": "Sed et repellendus incidunt minima non.",
"quote_id": 2,
"user_id": 2
},
{
"id": 9,
"star_rating": "9",
"comment": "Consequuntur eveniet magnam tempora repellendus omnis dolor.",
"quote_id": 2,
"user_id": 5
}
]
},
{
"id": 3,
"category": "Love",
"description": "We need not think alike to love alike",
"comments": [
{
"id": 2,
"star_rating": "4",
"comment": "Occaecati recusandae dolor pariatur.",
"quote_id": 3,
"user_id": 1
},
{
"id": 13,
"star_rating": "7",
"comment": "Ut eligendi id est doloribus eos voluptatum maiores.",
"quote_id": 3,
"user_id": 4
}
]
},
{
"id": 4,
"category": "Love",
"description": "Love is an emotion experienced by the many and enjoyed by the few.",
"comments": [
{
"id": 6,
"star_rating": "10",
"comment": "Itaque.",
"quote_id": 4,
"user_id": 5
},
{
"id": 7,
"star_rating": "4",
"comment": "Non dolore magnam consequuntur.",
"quote_id": 4,
"user_id": 2
},
{
"id": 10,
"star_rating": "10",
"comment": "Quasi nisi rerum quam quia voluptas commodi.",
"quote_id": 4,
"user_id": 2
},
{
"id": 15,
"star_rating": "1",
"comment": "Facilis officiis ex.",
"quote_id": 4,
"user_id": 1
}
]
},
{
"id": 5,
"category": "Love",
"description": "Love is a choice you make from moment to moment",
"comments": [
{
"id": 1,
"star_rating": "1",
"comment": "Odit rem temporibus dolorem qui.",
"quote_id": 5,
"user_id": 2
},
{
"id": 14,
"star_rating": "1",
"comment": "Possimus et natus eius amet esse nemo nulla.",
"quote_id": 5,
"user_id": 2
}
]
},

]

# GET/quotes/:id/comments

-get a list of one quotes

{
"id": 1,
"category": "Love",
"description": "Spread love everywhere you go. Let no one ever come to you without leaving happier",
"comments": [
{
"id": 3,
"star_rating": "1",
"comment": "Velit commodi aut quo repudiandae excepturi.",
"quote_id": 1,
"user_id": 3
},
{
"id": 11,
"star_rating": "8",
"comment": "Voluptate excepturi mollitia.",
"quote_id": 1,
"user_id": 5
},
{
"id": 12,
"star_rating": "8",
"comment": "Tempore.",
"quote_id": 1,
"user_id": 3
}
]
}

# POST/quotes/

-creates a new quote
{
"category": "Hope",
"description": "Spread love everywhere you go. Let no one ever come to you without leaving happier"
}

# RESPONSE

{
"id": 18,
"category": "Hope",
"description": "Spread love everywhere you go. Let no one ever come to you without leaving happier",
"comments": []
}

# UPDATE/quotes/id

{
"id": 18,
"category": "Life",
"description": "Spread love everywhere you go. Let no one ever come to you without leaving happier",
"comments": []
}

# RESPONSE

{
"id": 18,
"category": "Life",
"description": "Spread love everywhere you go. Let no one ever come to you without leaving happier",
"comments": []
}

# POST /comments

-create a comment

{
"comment": "inspiring quote",
"star_rating": 2,
"user_id": 2,
"quote_id":18
}

# RESPONSE

{
"id": 17,
"star_rating": "2",
"comment": "inspiring quote",
"quote_id": 18,
"user_id": 2
}

# DELETING /comments/:id

-Delting a particular comment

# RESPONSE

204 No Content

# GET/user

-get all users

[
{
"id": 1,
"name": "Ashyy",
"created_at": "2022-12-06T15:44:15.433Z",
"updated_at": "2022-12-06T15:44:15.433Z",
"password_digest": "$2a$12$NqSCNB3Eyj32pEFaYDPYAuJvbjWJeFh6L4KMD4s8PDHRB7f8Og89u"
},
{
"id": 2,
"name": "Mau",
"created_at": "2022-12-06T15:44:15.697Z",
"updated_at": "2022-12-06T15:44:15.697Z",
"password_digest": "$2a$12$NdK4UlRaAc13jptEgnyvhOCifA9Gxq5mfIcu3b5KCTMovBnc.pJya"
},
{
"id": 3,
"name": "Mula",
"created_at": "2022-12-06T15:44:15.959Z",
"updated_at": "2022-12-06T15:44:15.959Z",
"password_digest": "$2a$12$M6FxrvKRK0PXOPHE4OZrPeS7YB0AgjlpXpqdPiINhqqsr.E4ivV.6"
},
{
"id": 4,
"name": "Bhan",
"created_at": "2022-12-06T15:44:16.223Z",
"updated_at": "2022-12-06T15:44:16.223Z",
"password_digest": "$2a$12$LmIUIJsBJ8UnPXOQd5D.UeSC/5VB.nQFe4LiVAAKQIAd5W9bmgzom"
},
{
"id": 5,
"name": "Kira",
"created_at": "2022-12-06T15:44:16.495Z",
"updated_at": "2022-12-06T15:44:16.495Z",
"password_digest": "$2a$12$W/D1EFKT3NIbU/jt.eTz5ejb2VFuaoWGt0ClxtmIItUM9oU9rzOdG"
}
]

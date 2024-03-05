Feature: Patch advisors on request
 Background:
 * call read("../../user/token/users-token-post.feature@token")
 * header Authorization = "Bearer " + token
 * print token
 * call read("../post/advisors-post.feature@createadvisors")


 @updateprograms
 Scenario: Patch a advisors
 Given url 'https://funcoeback-dev-ceqh.3.us-1.fl0.io/advisors/' +  advisorsId + '/'
 And request {"document_type_uuid": "09359aab-7354-47c0-ae6b-60d71aea3f08",  "identification_card": "#(idcardrandom)",  "first_name": "#(randomname)",  "last_name": "#(randomlastname)", "gender_uuid": "20be8f69-c198-467c-89be-ee18a7af8b9b",  "phone": "#(randomphone)",  "email": "#(randomMail)",  "blood_type": "6f454a83-4201-44e3-b7cf-99ba07464519"}
 When method patch
 Then status 200
 And print "El Registro Se Actualizo De Forma Exitosa" + advisorsId




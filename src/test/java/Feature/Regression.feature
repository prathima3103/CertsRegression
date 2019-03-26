Feature: Commplete Certs code

  Scenario: Login, Company selection, Change Company, Add Wo, Processing, Timers, KPI, Global Search, Completed, Time Records page, Time record admin, Reports, Discarded, Timer, Log out.

    Given I navigate to login page of certs app TS_Login_Usr01
    And I enter login credentials
      | email   | password |
      | ******* | *****    |
    And I click on Sign In button
    When I select WO Tracking application box
    And I select a client TS_Company Selection_08
      | company                            | service              |
      | ABD Insurance & Financial Services | Certificate Issuance |
    And I click on the selected client to open app
    And I select a client TS_Company Selection_08
      | company                            | service              |
      | ABD Insurance & Financial Services | Certificate Issuance |
    And I click on the selected client to open app
    And Row Text
    And Pagination value
      | pagevalue |
      | 20        |

    Then I Click on Add WorkOrder TS_Add WO_09
    Then I Enter Add WorkOrder Details
      | addworush | addwobulk | addwoupdate | addworequestor     | addwosentto          | addwosummary | addwofrompending |
      |           |           |             | Test@patracorp.net | sentto@patracorp.com | march20test  |                  |
    Then I go to Work Order Details section
    Then I Enter details in WO detail section
      | noofcerts | clientcode | clientname  | wotype     | branchoffice | department | division | profitcenter | certmaster | certissuancesystem | noofholders | certissuedby | qaby     | deliveryby | complexity |
      | 5         | TEST code1 | TEST AnUSHA | Data Entry | Albany       | 201        | 01       |              | Test       | Test               | 5           | Anusha E.    | Aneeta K | Bimdu P    | Easy       |
    Then I Click on Original Email
    Then I Write data in Original Email section
      | originalemail                         |
      | testing purpose -http://www.usi.com/> |
    Then I click on Submit button
    And Get the WO value
    Then I Click on Close on Popup

    And I search a record with the wo number
      | wo | clientcode | summary     |
      |    |            | march20test |
    And I select a WO under Processing tab TS_Edit WO_10
    And I assign that WO
    And I click Mark Rush button TS_Edit WO_11
    And i click start timer button in the WO form
    And I clicks start timer in timer pop-up section
    And I enter details in the WO form TS_Edit WO_11
      | process | status      | folder               | startdateoverride   | duedateovrride      | requestor          | sentto                | summary |
      |         | In Progress | Certificate Requests | 04/25/2018 04:11 AM | 04/26/2018 04:11 AM | e.anusha@kpcom.com | usicert@patracorp.com |         |
    And I insert values in Detail tab
      | numofcerts | clientcode | clientname | workordertype | branchoffice | department | division     | holders | certmaster | profitcenter | certissuancesystem | certissuedby | qaby      | deliveryby | insureddelivery     | certholderdelivery    | carrierfax       | amdelievry  | twbet | insuredmethod | certholdermethod | carriermethod | csrcontact1 | csrcontact2 | pages | additionalcomments | comments    | complexity |
      | 2          | test code  | Anusha     | Auto ID Cards | Albany       | 201        | 163 Portland | 10      | GL 17-18   |              | cert               | Anusha E.    | A Kranthi | A Naveena  | INE : certs@usi.com | CHE : certdel@usi.com | (123) 456 - 7890 | anu@usi.com |       | Fax           | Email            | US Mail       | 123         | 456         | 5     | testing            | test anusha | Medium     |
    And I click Attachments tab
    And I click Emails tab
    And I click History tab
    And I click Time Records tab
    And I click Add Attachments button
    And I click on Print PDF button
    And I clicks stop timer button
    Then I Close the work order

    And I click on WorkOrders page link
    Then I Click on Certificate Issuance KPI TS_Certs_CertInsKPI_19
    And get KPI Count for Certificate Issuance
    And I Click on Reset button
    And I search a record with the wo number
      | wo | clientcode | summary     |
      |    |            | march20test |
    And I Selects Workorder
    And I assign that WO
    And I edit WO fields
    Then I Close the work order

    And I click on WorkOrders page link
    Then I Click on Quality Assurance KPI
    And I get KPI Count for Quality Assurance
    And I Click on Reset button
    And I search a record with the wo number
      | wo | clientcode | summary     |
      |    |            | march20test |
    And I click selected QA WO
    And I assign that WO with process qa
    And I click QA tab
   # Sprint 3 changes: QA score card introduced
    And I click on Save button to verify user friendly message
    And I select Incorrect insured to verify score
    And I click SecondQA tab
    And I insert values in Second QA tab
      | needed | done | doneby    |
      |        |      | Anusha G. |
    And I edit WO fields
    Then I Close the work order

    And I click KPI Delivery
    And I get KPI Count for Delivery
    And I Click on Reset button
    And I search a record with the wo number
      | wo | clientcode | summary |
      |    |            | test    |
    And I click the wo and edit
    And I assign that WO with process Delivery
    And I confirm delivery alert ok
    And I edit WO fields
    Then I Close the work order
    And I click KPI Delivery
    And I Click on Reset button
    And I search a record with the wo number
      | wo | clientcode | summary |
      |    |            | test    |
    And I click the wo and edit
    And I assign that WO with process DEL - TWB
    And I edit WO fields
    Then I Close the work order

    And I click on completed tab TS_Certs_Comp tab_15
    And I Click on Reset button under Completed tab
    And I search a record with the wo number under Completed tab
      | completedWO | completedsummary |
      | 24129       |                  |

    And user searches with the following global value
      | globalsearch |
      | 24200        |
    And user clicks the first link
    And I edit WO fields
    And I click on Cancel Changes button
    And I Close the work order

    And I click on Email Needed KPI
    And I get KPI Count for Email
    And I Click on Reset button
    And I search a record with the wo number
      | wo | clientcode | summary                          |
      |    |            | 77 Undeliverable: Certificate of |
    And I click the wo and edit
    And I assign that WO with process Email
    And I edit WO fields
    Then I Close the work order

    And I click on Pending responses KPI
    And I get KPI Count for Pending Responses
    And I Click on Reset button
    And I search a record with the wo number
      | wo | clientcode | summary |
      |    |            | LLC     |
    And I click the wo and edit
    And I assign that WO
    And I edit WO fields
    Then I Close the work order
   # And I click on a record and edit to check for Incoming Responses func
    And I click Incoming Responses KPI
    And I get KPI Count for Incoming Responses
    And I click on Incoming Responses tab
    And I Click on Incoming Resp Reset button
    And I search a record with the wo number under Incoming Responses tab
      | increswo |
      | 24169    |
    And I click the incomng res wo and edit
    And user updates the following details under discarded work order
      | summary                | requestor | sentto |
      | ^^ Can be Discarded ^^ |           |        |
    And I  click on discard button to discard workorder
    And I click Ok button on discard alert pop-up
    #Sprint 3 Changes,Select the discard reason
    And user clicks discarded work order submit button
    Then I Close the work order

    And user clicks on discarded tab
    And I Click on Reset button
    And I search record with WO number under discarded tab
      | discardwosearch |
      | 24169           |
    Then I Close the work order
    And I get KPI Count for Due in 30 Mins
    And I get KPI Count for Past Due
    And I click on Important Instructions tab
    And I click on Important Instructions reset btn
    And I search a record with the wo number
      | wo    | clientcode | summary |
      | 23872 |            |         |
    And I click the Important Instr wo
    And I update wo with following fields
      | summary           |
      | ^To Be Discarded^ |
    Then I Close the work order
    And I click on To Be Discarded tab
    And I search a wo
      | discardwo | summary |
      |           | discard |
   #Sprint 3 changes
    And I verify the Discarded reason drop down functionality
      | discardedreason     |
      | Complicated request |
   #Sprint3 changes : To verify SLA miss reasons drop down
    And I click KPI Delivery
    And I Click on Reset button
    And I search a record with the wo number
      | wo | clientcode | summary     |
      |    |            | march15test |
    And I click the wo and edit
    And I confirm delivery alert ok
    And I edit WO fields
    Then I Close the work order
    And I click on completed tab TS_Certs_Comp tab_15
    And I Click on Reset button under Completed tab
    And I select the SLA met column to No
    And I select the SLA miss reason

    And I click Time Records page link
    And user clicks on reports button
    And I work on time record admin
    And I select Start Time From and To dates
      | from               | to                 |
      | 03/05/2019 3:00 AM | 03/05/2019 7:00 AM |
    And I select service in service column from time record admin
      | Trcompany | Trservice            | Trtaskdescription    | Trworkordernumber | Tremployee |
      | USI       | Certificate Issuance | Certificate Issuance | 1163394           |            |
    And I Edit the selected time record
      | trtask             | trstarttime        | trendtime          |
      | Checking Responses | 03/05/2019 4:00 AM | 03/05/2019 9:00 AM |

    And I click on WorkOrders page link
    And I change client from dropdown list TS_Change Company_13
      | company |
      | USI     |
    And I click change company confirm button
    #Glib Results Sprint 5 Changes
    And user searches with the following global value
      | globalsearch |
      | 1154671      |
    And user clicks the first link
    And I click on Glibresults tab
    And I enter addtional insured team score
    And I enter cert holder team score
    And click on save button for glib
    And I click on PatraCorp link
    Then I Click on Logout icon
    Then I click Logout button
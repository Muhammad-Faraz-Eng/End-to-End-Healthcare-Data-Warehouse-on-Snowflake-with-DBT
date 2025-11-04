Raw Tables:
 ┌────────────┐   ┌──────────────┐   ┌───────────────┐
 │ hospitals  │   │ departments   │   │ doctors       │
 └─────┬──────┘   └─────┬────────┘   └─────┬─────────┘
       │                │               │
       ▼                ▼               ▼
STAGING Tables:
 ┌───────────────┐      ┌───────────────┐
 │ stg_hospitals │◄─────│ stg_departments│
 └───────────────┘      └─────┬─────────┘
                                │
                                ▼
                        ┌───────────────┐
                        │ stg_doctors   │
                        └───────────────┘

Other RAW → STAGING:

 ┌──────────────┐   ┌───────────────┐
 │ patients     │   │ insurance_plans│
 └─────┬────────┘   └─────┬─────────┘
       │                 │
       ▼                 ▼
 ┌──────────────┐      ┌───────────────┐
 │ stg_patients │◄─────│ stg_insurance_plans │
 └──────────────┘

 ┌──────────────┐   ┌──────────────┐
 │ visits       │   │ treatments   │
 └─────┬────────┘   └─────┬────────┘
       │                 │
       ▼                 ▼
 ┌──────────────┐      ┌───────────────┐
 │ stg_visits   │      │ stg_treatments│
 └──────────────┘      └───────────────┘

 ┌──────────────┐
 │ billing      │
 └─────┬────────┘
       ▼
 ┌──────────────┐
 │ stg_billing  │
 └──────────────┘


| STG Table       | Joined With                              | Purpose                                                          |
| --------------- | ---------------------------------------- | ---------------------------------------------------------------- |
| stg_departments | stg_hospitals                            | Validate `hospital_id` exists → avoid orphan departments         |
| stg_doctors     | stg_departments, stg_hospitals           | Ensure valid department & hospital for each doctor               |
| stg_patients    | stg_insurance_plans                      | Ensure patient has valid insurance plan                          |
| stg_visits      | stg_patients, stg_doctors, stg_hospitals | Validate all FKs exist; prevent broken foreign key relationships |
| stg_billing     | stg_visits                               | Link bill to a valid visit                                       |

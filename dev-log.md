### Routes for :
  #### GET /API/sibling
  #### GET /API/sibling/:id
  #### POST /API/sibling
  #### PUT /API/sibling/:id

  #### GET /API/niceDeed
  #### GET /API/niceDeed/:id
  #### POST /API/niceDeed
  #### PUT /API/niceDeed/:id
  #### DELETE /API/niceDeed/:id

  #### GET /API/kindWord
  #### GET /API/kindWord/:id
  #### POST /API/kindWord
  #### PUT /API/kindWord/:id
  #### DELETE /API/kindWord/:id

# Models
  ## Sibling Model
    ### Attributes
      name
      birthdate (calculate age, round to .5)
      picture
      points_earned
    ### Relationships
      belongs_to :family
      has_many :siblings
      has_many :niceDeeds
      has_many :kindWords

  ## niceDeed Model
    ### Attributes
      when
      what
      to_whom
      points (default to standard, unless exceptional)
      picture
      sibling_id
    ### Relationships
      belongs_to :sibling

  ## kindWord Model
    ### Attributes
      when
      what
      toWhom
      points (default to standard, unless exceptional)
      sibling_id
    ### Relationships
      belongs_to :sibling

  ## milestone Model
    ### Attributes
      when
      title
      what
      picture
      sibling_id
    ### Relationships
      belongs_to :sibling

  ## parent Model
    ### Attributes
      name
      user_name
      password_digest
      picture
    ### Relationships
      belongs_to :sibling
Overview
we will build a family journal app in which members of the family can record niceDeeds and kindWords. Other siblings can upvote to show appreciation.
Parents can add entries and comment on existing entries.
These entries will earn points that translate to $.

Sibling should be able to...
  - sign up and log in (not a requirement for the final project)
  - add/modify/delete a niceDeed Record
  - add pictures
  - add/modify/delete a kindWord record
(consider in next version to allow only the mother/teacher to delete records)
  - look up by name / dates
  - add comments/suggestions about deed or act
  - * - add upvote

  # 2019-06-03
    - add seed data to children files (niceDeeds, kindWords, milestones) - DONE
    - add serializers -- fast JSON API - DONE
    - mock user login - DONE
    - add Redux and establish store - DONE
    - think about components

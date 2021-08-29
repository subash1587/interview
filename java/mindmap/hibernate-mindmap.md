* JPA
  * @PresistentContext
  * Entity Annotation
    * @Entity
    * @Table
    * @Id
    * @GeneratedValue
    * @Column
    * @Lob
    * @Transient
    * @Temporal
    * @Enumerated
    * @OneToMany
    * @ManyToOne
      * @JoinedColumn
    * @OneToOne
    * @OrderBy
    * @NamedQuery
    * @NamedNativeQuery
    * @NamedStoredProcedureQuery
    * @Index
    * @EmbeddedId
  * @Transactional
    * Propagation
      * REQUIRED 
      * SUPPORTS 
      * MANDATORY 
      * NEVER 
      * NOT_SUPPORTED 
      * REQUIRES_NEW 
      * NESTED
    * Isolation Level
      * DEFAULT
      * READ_UNCOMMITTED
      *  READ_COMMITTED
      *  REPEATABLE_READ
      *  SERIALIZABLE
  * Hibernate
    * SessionFactory
      * Session
        * First Level Cache
        * CurrentSession() 
        * OpenSession()
        * get() - Hits DB
        * Load() - Proxy
        * Transaction
          * Begin
          * Commit
          * Rollback
        * Criteria
        * Query
      * Second Level Cache
      * Muttiple Database
          


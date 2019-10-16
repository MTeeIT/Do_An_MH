/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     09/10/2019 10:32:42 AM                       */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LI_LICH_TRICH_NGANG') and o.name = 'FK_LI_LICH__CUA_THONG_TI')
alter table LI_LICH_TRICH_NGANG
   drop constraint FK_LI_LICH__CUA_THONG_TI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('LOP') and o.name = 'FK_LOP_THUOC_CO_VAN_H')
alter table LOP
   drop constraint FK_LOP_THUOC_CO_VAN_H
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('THONG_TIN_SINH_VIEN') and o.name = 'FK_THONG_TI_QUAN_LI_CO_VAN_H')
alter table THONG_TIN_SINH_VIEN
   drop constraint FK_THONG_TI_QUAN_LI_CO_VAN_H
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('THONG_TIN_SINH_VIEN') and o.name = 'FK_THONG_TI_TRONG_LOP')
alter table THONG_TIN_SINH_VIEN
   drop constraint FK_THONG_TI_TRONG_LOP
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CO_VAN_HOC_TAP')
            and   type = 'U')
   drop table CO_VAN_HOC_TAP
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('LI_LICH_TRICH_NGANG')
            and   name  = 'CUA_FK'
            and   indid > 0
            and   indid < 255)
   drop index LI_LICH_TRICH_NGANG.CUA_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LI_LICH_TRICH_NGANG')
            and   type = 'U')
   drop table LI_LICH_TRICH_NGANG
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('LOP')
            and   name  = 'THUOC_FK'
            and   indid > 0
            and   indid < 255)
   drop index LOP.THUOC_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LOP')
            and   type = 'U')
   drop table LOP
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('THONG_TIN_SINH_VIEN')
            and   name  = 'TRONG_FK'
            and   indid > 0
            and   indid < 255)
   drop index THONG_TIN_SINH_VIEN.TRONG_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('THONG_TIN_SINH_VIEN')
            and   name  = 'QUAN_LI_FK'
            and   indid > 0
            and   indid < 255)
   drop index THONG_TIN_SINH_VIEN.QUAN_LI_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('THONG_TIN_SINH_VIEN')
            and   type = 'U')
   drop table THONG_TIN_SINH_VIEN
go

/*==============================================================*/
/* Table: CO_VAN_HOC_TAP                                        */
/*==============================================================*/
create table CO_VAN_HOC_TAP (
   MA_CV                varchar(15)          not null,
   HO_TEN               varchar(50)          null,
   LOP                  varchar(10)          null,
   SDT                  varchar(10)          null,
   EMAIL                varchar(50)          null,
   constraint PK_CO_VAN_HOC_TAP primary key nonclustered (MA_CV)
)
go

/*==============================================================*/
/* Table: LI_LICH_TRICH_NGANG                                   */
/*==============================================================*/
create table LI_LICH_TRICH_NGANG (
   ID                   varchar(15)          not null,
   MASV                 varchar(10)          not null,
   NAM_SINH             datetime             null,
   NOI_SINH             varchar(20)          null,
   DAN_TOC              varchar(15)          null,
   TON_GIAO             varchar(15)          null,
   NGHANH               varchar(50)          null,
   BO_MON               varchar(50)          null,
   HE_DAO_TAO           varchar(20)          null,
   constraint PK_LI_LICH_TRICH_NGANG primary key nonclustered (ID)
)
go

/*==============================================================*/
/* Index: CUA_FK                                                */
/*==============================================================*/
create index CUA_FK on LI_LICH_TRICH_NGANG (
MASV ASC
)
go

/*==============================================================*/
/* Table: LOP                                                   */
/*==============================================================*/
create table LOP (
   MALOP                varchar(10)          not null,
   MA_CV                varchar(15)          not null,
   TENLOP               varchar(30)          null,
   constraint PK_LOP primary key nonclustered (MALOP)
)
go

/*==============================================================*/
/* Index: THUOC_FK                                              */
/*==============================================================*/
create index THUOC_FK on LOP (
MA_CV ASC
)
go

/*==============================================================*/
/* Table: THONG_TIN_SINH_VIEN                                   */
/*==============================================================*/
create table THONG_TIN_SINH_VIEN (
   HO_TEN               varchar(50)          null,
   MASV                 varchar(10)          not null,
   MALOP                varchar(10)          not null,
   MA_CV                varchar(15)          not null,
   MA_LOP               varchar(10)          null,
   TEN_LOP              varchar(30)          null,
   SDT                  varchar(10)          null,
   EMAIL                varchar(50)          null,
   CHUC_VU              varchar(20)          null,
   CHUYEN_NGHANH        varchar(50)          null,
   KHOA_HOC_            varchar(20)          null,
   BO_MON               varchar(50)          null,
   constraint PK_THONG_TIN_SINH_VIEN primary key nonclustered (MASV)
)
go

/*==============================================================*/
/* Index: QUAN_LI_FK                                            */
/*==============================================================*/
create index QUAN_LI_FK on THONG_TIN_SINH_VIEN (
MA_CV ASC
)
go

/*==============================================================*/
/* Index: TRONG_FK                                              */
/*==============================================================*/
create index TRONG_FK on THONG_TIN_SINH_VIEN (
MALOP ASC
)
go

alter table LI_LICH_TRICH_NGANG
   add constraint FK_LI_LICH__CUA_THONG_TI foreign key (MASV)
      references THONG_TIN_SINH_VIEN (MASV)
go

alter table LOP
   add constraint FK_LOP_THUOC_CO_VAN_H foreign key (MA_CV)
      references CO_VAN_HOC_TAP (MA_CV)
go

alter table THONG_TIN_SINH_VIEN
   add constraint FK_THONG_TI_QUAN_LI_CO_VAN_H foreign key (MA_CV)
      references CO_VAN_HOC_TAP (MA_CV)
go

alter table THONG_TIN_SINH_VIEN
   add constraint FK_THONG_TI_TRONG_LOP foreign key (MALOP)
      references LOP (MALOP)
go


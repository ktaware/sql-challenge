-- Table: public.employees

-- DROP TABLE IF EXISTS public.employees;

CREATE TABLE IF NOT EXISTS public.employees
(
    emp_no integer NOT NULL,
    emp_title_id character varying COLLATE pg_catalog."default",
    birth_date date,
    first_name character varying COLLATE pg_catalog."default",
    last_name character varying COLLATE pg_catalog."default",
    sex character varying COLLATE pg_catalog."default",
    hire_date date,
    CONSTRAINT employees_pkey PRIMARY KEY (emp_no),
    CONSTRAINT employees_title_id_fkey FOREIGN KEY (emp_title_id)
        REFERENCES public.titles (title_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.employees
    OWNER to postgres;
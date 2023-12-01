alter table department
    ADD FOREIGN KEY (leader_id) REFERENCES employee (id)
        on delete SET NULL
        on update CASCADE;

-- -----------------------------------------------------
-- Usuário
-- -----------------------------------------------------
DROP TABLE IF EXISTS "usuarios" CASCADE;
CREATE SEQUENCE IF NOT EXISTS usuarios_id_seq;
CREATE TABLE "usuarios" (
    "id" INTEGER NOT NULL DEFAULT NEXTVAL('usuarios_id_seq'),
    "nome" VARCHAR(255) NOT NULL,
    "email" VARCHAR(255) NOT NULL,
    "cpf" VARCHAR(255) NOT NULL,
    "senha" VARCHAR(255) NOT NULL, 
    "status" SMALLINT NOT NULL DEFAULT 0,
    "nascimento" DATE NULL,
    "createdAt" TIMESTAMP NOT NULL DEFAULT NOW(),
    "updatedAt" TIMESTAMP NOT NULL DEFAULT NOW(),

    CONSTRAINT usuarios_pkey PRIMARY KEY (id),
    CONSTRAINT email_unique UNIQUE (email),
    CONSTRAINT cpf_unique UNIQUE (cpf)
);

TRUNCATE TABLE "usuarios" RESTART IDENTITY CASCADE;
INSERT INTO usuarios (id, nome, email, cpf, senha, status, nascimento) VALUES
    (1, 'Douglas Junior', 'douglas@mail.com', '11947575013', '$2b$10$OSU.xNNfcZnPjHkppsUMYuFSHxz3ljsDTgQ0u3eLyzPtJX4kFR4w6', 1, '1989-05-17'),
    (2, 'Gus Antoniassi', 'gus.antoniassi@gmail.com', '12345678900', '$2b$10$OrI36vuArh/sdz62MPgR7uNGZy2h5TuIncVSSpYZMbTqKOHFjF2Xm', 1, '1997-03-12'),
    (3, 'Antonio Sérgio da Paz', 'antoniosergiodapaz@orthoi.com.br', '03517779890', '123456', 1, '1997-12-27')
;
ALTER SEQUENCE usuarios_id_seq RESTART WITH 4;

-- -----------------------------------------------------
-- Tarefas
-- -----------------------------------------------------
DROP TABLE IF EXISTS "tarefas" CASCADE;
CREATE SEQUENCE IF NOT EXISTS tarefas_id_seq;
CREATE TABLE "tarefas" (
    "id" INTEGER NOT NULL DEFAULT NEXTVAL('tarefas_id_seq'),
    "titulo" VARCHAR(255) NOT NULL,
    "descricao" VARCHAR(255) NOT NULL,
    "concluida" SMALLINT NOT NULL DEFAULT 0,
    "idusuario" INTEGER NOT NULL,
    "createdAt" TIMESTAMP NOT NULL DEFAULT NOW(),
    "updatedAt" TIMESTAMP NOT NULL DEFAULT NOW(),

    CONSTRAINT tarefas_pkey PRIMARY KEY (id),
    CONSTRAINT fk_tarefas_usuarios FOREIGN KEY (idusuario) REFERENCES usuarios(id)
);

TRUNCATE TABLE "tarefas" RESTART IDENTITY CASCADE;
INSERT INTO tarefas (id, titulo, descricao, concluida, idusuario) VALUES 
    (1, 'Implementar cadastro de usuários', 'Implementar cadastro de usuários', 1, 2),
    (2, 'Implementar login de usuários', 'Implementar login de usuários', 1, 2),
    (3, 'Implementar consulta de usuários por ID', 'Implementar consulta de usuários por ID', 1, 2),
    (4, 'Implementar edição de usuários', 'Implementar edição de usuários', 1, 2),
    (5, 'Implementar cadastro de tarefas', 'Implementar cadastro de tarefas', 0, 2),
    (6, 'Implementar listagem de tarefas', 'Implementar listagem de tarefas', 0, 2),
    (7, 'Implementar consulta de tarefas por ID', 'Implementar consulta de tarefas por ID', 0, 2),
    (8, 'Implementar edição de tarefas', 'Implementar edição de tarefas', 0, 2),
    (9, 'Implementar exclusão de tarefas', 'Implementar exclusão de tarefas', 0, 2),
    (10, 'Implementar marcação de tarefa como concluída', 'Implementar marcação de tarefa como concluída', 0, 2),
    (11, 'Corrigir o trabalho', 'Corrigir o trabalho', 0, 1),
    (12, 'Avaliar o trabalho', 'Avaliar o trabalho', 0, 1)
;
ALTER SEQUENCE tarefas_id_seq RESTART WITH 13;
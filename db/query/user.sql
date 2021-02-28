-- name: CreateUser :one
INSERT INTO users (
  firstname,
  lastname,
  birth_date,
  email,
  password
) VALUES (
  $1, $2, $3, $4, $5
)
RETURNING *;

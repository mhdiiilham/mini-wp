// Code generated by sqlc. DO NOT EDIT.

package db

import (
	"database/sql"
	"time"
)

type ArticleImages struct {
	ID        int32        `json:"id"`
	ArticleID int32        `json:"article_id"`
	CreatedAt time.Time    `json:"created_at"`
	UpdatedAt time.Time    `json:"updated_at"`
	DeletedAt sql.NullTime `json:"deleted_at"`
}

type Articles struct {
	ID        int32        `json:"id"`
	UserID    int32        `json:"user_id"`
	Title     string       `json:"title"`
	Body      string       `json:"body"`
	CreatedAt time.Time    `json:"created_at"`
	UpdatedAt time.Time    `json:"updated_at"`
	DeletedAt sql.NullTime `json:"deleted_at"`
}

type Comments struct {
	ID        int32        `json:"id"`
	UserID    int32        `json:"user_id"`
	ArticleID int32        `json:"article_id"`
	CreatedAt time.Time    `json:"created_at"`
	UpdatedAt time.Time    `json:"updated_at"`
	DeletedAt sql.NullTime `json:"deleted_at"`
}

type Users struct {
	ID        int32        `json:"id"`
	Firstname string       `json:"firstname"`
	Lastname  string       `json:"lastname"`
	BirthDate time.Time    `json:"birth_date"`
	Email     string       `json:"email"`
	Password  string       `json:"password"`
	CreatedAt time.Time    `json:"created_at"`
	UpdatedAt time.Time    `json:"updated_at"`
	DeletedAt sql.NullTime `json:"deleted_at"`
}

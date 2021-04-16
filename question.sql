
/*******************************************************************************
   Questions Database - Version 1
   Script: questions.sql
   Description: Creates and populates the questions database.
   DB Server: Sqlite
   Author: Luc Kunz
********************************************************************************/

/*******************************************************************************
   Drop Foreign Keys Constraints
********************************************************************************/























/*******************************************************************************
   Drop Tables
********************************************************************************/
DROP TABLE IF EXISTS [Question];

DROP TABLE IF EXISTS [Answer];

/*******************************************************************************
   Create Tables
********************************************************************************/
CREATE TABLE [Answer]
(
    [AnswerId] INTEGER  NOT NULL,
    [AnswerText] NVARCHAR(160)  NOT NULL,
    [AnswerBool] INTEGER  NOT NULL,
    [QuestionId] INTEGER  NOT NULL,
    CONSTRAINT [PK_Answer] PRIMARY KEY  ([AnswerId]),
    FOREIGN KEY ([QuestionId]) REFERENCES [Question] ([QuestionId])
		ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE [Question]
(
    [QuestionId] INTEGER  NOT NULL,
    [QuestionText] NVARCHAR(240),
    CONSTRAINT [PK_Question] PRIMARY KEY  ([QuestionId])
);


/*******************************************************************************
   Create Primary Key Unique Indexes
********************************************************************************/

/*******************************************************************************
   Create Foreign Keys
********************************************************************************/
CREATE INDEX [IFK_AnswerQuestionId] ON [Answer] ([QuestionId]);

/*******************************************************************************
   Populate Tables
********************************************************************************/
INSERT INTO [Question] ([QuestionId], [QuestionText]) VALUES (1, '1+1');

INSERT INTO [Answer] ([AnswerId], [AnswerText], [AnswerBool], [QuestionID]) VALUES (1, '2', 1, 1);
INSERT INTO [Answer] ([AnswerId], [AnswerText], [AnswerBool], [QuestionID]) VALUES (2, '3', 0, 1);
INSERT INTO [Answer] ([AnswerId], [AnswerText], [AnswerBool], [QuestionID]) VALUES (3, '1', 0, 1);
INSERT INTO [Answer] ([AnswerId], [AnswerText], [AnswerBool], [QuestionID]) VALUES (4, '0', 0, 1);


INSERT INTO [Question] ([QuestionId], [QuestionText]) VALUES (2, '1+2');

INSERT INTO [Answer] ([AnswerId], [AnswerText], [AnswerBool], [QuestionID]) VALUES (5, '2', 0, 2);
INSERT INTO [Answer] ([AnswerId], [AnswerText], [AnswerBool], [QuestionID]) VALUES (6, '3', 1, 2);
INSERT INTO [Answer] ([AnswerId], [AnswerText], [AnswerBool], [QuestionID]) VALUES (7, '1', 0, 2);
INSERT INTO [Answer] ([AnswerId], [AnswerText], [AnswerBool], [QuestionID]) VALUES (8, '0', 0, 2);

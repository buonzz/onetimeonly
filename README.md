# One-Time Only

A minimal web application that lets you share confidential information via one-time use link (i.e. the data is destroyed right after it is viewed).
This is ideal for sharing passwords, credit card numbers, application key codes and other info, instead of directly pasting confidential information in a chat room and emails.

There is a bunch of other online service that will do the exact same thing. 
But the idea of submitting your secret to those services itself poses a lot of security questions

* Do the free service really deletes your data? (remember, if your not the customer, you are the product itself)
* How it is exactly stored in the backend? What if the server itself is compromised.
* What if some stack trace or error/access log had accidentally written those info in the disk?

### Features

* Self-Hosted.  Yes, host it in your own server. Even in your intranet (much safer).
* Java-based. You'll get the benefits of decade-long security optimizations that JVM have received.
* In-memory database. It doesn't store your data in any database backend. 
It uses an embedded in-memory database. There is no way for a hacker (even you) to get those info by directly accessing the database or database files. 

### Requirements

* JDK 1.8
* Tomcat 8 or any similar Servlet Container
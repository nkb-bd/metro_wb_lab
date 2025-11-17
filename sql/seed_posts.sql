-- Seed file for sample users and posts
-- Password for all users: password123

USE metro_web_class;



-- Insert sample users (password: password123) - COMMENTED OUT IF USERS ALREADY EXIST
-- Uncomment below if you need to create users
/*
INSERT INTO users (name, email, password) VALUES
('Alice Johnson', 'alice@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
('Bob Smith', 'bob@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
('Charlie Davis', 'charlie@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
('Diana Prince', 'diana@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
('Ethan Hunt', 'ethan@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
('Fiona Green', 'fiona@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
('George Wilson', 'george@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
('Hannah Lee', 'hannah@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi');
*/

-- Insert sample posts (adjust user_id values based on your existing users)
-- This will use the first 8 users in your database
INSERT INTO posts (user_id, content, created_at) VALUES
(1, 'Just finished an amazing book! Highly recommend "The Midnight Library"', NOW() - INTERVAL 5 MINUTE),
(2, 'Beautiful sunset today! Nature never fails to amaze me', NOW() - INTERVAL 15 MINUTE),
(3, 'Starting a new project at work. Excited and nervous at the same time!', NOW() - INTERVAL 30 MINUTE),
(4, 'Coffee is life! Who else needs their morning caffeine fix?', NOW() - INTERVAL 1 HOUR),
(5, 'Just completed my first 5K run! Feeling accomplished', NOW() - INTERVAL 2 HOUR),
(1, 'Anyone else watching the new season of that show? No spoilers please!', NOW() - INTERVAL 3 HOUR),
(6, 'Trying out a new recipe tonight. Wish me luck!', NOW() - INTERVAL 4 HOUR),
(7, 'Monday motivation: You got this!', NOW() - INTERVAL 5 HOUR),
(8, 'Just adopted a puppy! Meet Max', NOW() - INTERVAL 6 HOUR),
(2, 'Working from home has its perks. Currently in my pajamas', NOW() - INTERVAL 7 HOUR),
(3, 'Does anyone have recommendations for a good podcast?', NOW() - INTERVAL 8 HOUR),
(4, 'Grateful for good friends and good times', NOW() - INTERVAL 9 HOUR),
(5, 'Finally cleaned my room. It only took 3 months', NOW() - INTERVAL 10 HOUR),
(6, 'Learning to play guitar. My neighbors probably hate me right now', NOW() - INTERVAL 11 HOUR),
(7, 'Pizza night! Best night of the week', NOW() - INTERVAL 12 HOUR),
(1, 'Throwback to that amazing vacation last summer. Missing the beach', NOW() - INTERVAL 1 DAY),
(8, 'New year, new goals! What are you working towards?', NOW() - INTERVAL 1 DAY),
(2, 'Just discovered this amazing coffee shop downtown. Hidden gem!', NOW() - INTERVAL 1 DAY),
(3, 'Rainy days are perfect for staying in and watching movies', NOW() - INTERVAL 2 DAY),
(4, 'Finished organizing my workspace. Productivity here I come!', NOW() - INTERVAL 2 DAY),
(5, 'Anyone else obsessed with houseplants? My collection is growing', NOW() - INTERVAL 2 DAY),
(6, 'Late night coding session. The bugs never sleep', NOW() - INTERVAL 3 DAY),
(7, 'Meal prep Sunday! Ready for the week ahead', NOW() - INTERVAL 3 DAY),
(8, 'Just finished a great workout. Endorphins are real!', NOW() - INTERVAL 3 DAY),
(1, 'Exploring a new hiking trail this weekend. Adventure awaits!', NOW() - INTERVAL 4 DAY),
(2, 'Sometimes you just need a good laugh. Comedy night was amazing!', NOW() - INTERVAL 4 DAY),
(3, 'Learning something new every day. Today: how to make sourdough bread', NOW() - INTERVAL 5 DAY),
(4, 'Grateful for technology that keeps us connected', NOW() - INTERVAL 5 DAY),
(5, 'Friday feeling! Any fun plans for the weekend?', NOW() - INTERVAL 6 DAY),
(6, 'Just finished spring cleaning. Feels so refreshing!', NOW() - INTERVAL 6 DAY),
(7, 'Game night with friends was epic! Who won? Not me', NOW() - INTERVAL 7 DAY),
(8, 'Morning yoga session complete. Starting the day right', NOW() - INTERVAL 7 DAY);

-- Show what was inserted
SELECT COUNT(*) as total_users FROM users;
SELECT COUNT(*) as total_posts FROM posts;


#ifndef MYPAGE_H
#define MYPAGE_H

#include <sailfishapp.h>

class QMediaPlayer;

class MyPage: public QObject
{
    Q_OBJECT

public:
    explicit MyPage(QObject* parent = nullptr);
    ~MyPage();

public slots:
    void onButtonPress();

private:
    QMediaPlayer* mediaPlayer;
};

#endif // MYPAGE_H

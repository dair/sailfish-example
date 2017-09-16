#include "mypage.h"
#include <QMediaPlayer>

MyPage::MyPage(QObject* parent):
    QObject(parent)
{
    mediaPlayer = new QMediaPlayer(this);
}

MyPage::~MyPage()
{
    delete mediaPlayer;
}

void MyPage::onButtonPress()
{
    // that's just an example
    QString s("sound/1.mp3");
    QUrl url = SailfishApp::pathTo(s);

    qDebug() << url.toString();

    QString fileName = url.toLocalFile();
    QFile f(fileName);
    if (f.exists()) {
        qDebug() << "File " << fileName << " exists!";
        mediaPlayer->setMedia(QMediaContent(url));
        mediaPlayer->setVolume(100);
        mediaPlayer->play();
    }
    else
        qDebug() << "File " << fileName << " does not exist!";
}

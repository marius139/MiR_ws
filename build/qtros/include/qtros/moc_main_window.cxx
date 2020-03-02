/****************************************************************************
** Meta object code from reading C++ file 'main_window.hpp'
**
** Created by: The Qt Meta Object Compiler version 63 (Qt 4.8.7)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/qtros/include/qtros/main_window.hpp"
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'main_window.hpp' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 63
#error "This file was generated using the moc from 4.8.7. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
static const uint qt_meta_data_qtros__MainWindow[] = {

 // content:
       6,       // revision
       0,       // classname
       0,    0, // classinfo
      14,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: signature, parameters, type, tag, flags
      19,   18,   18,   18, 0x0a,
      46,   18,   18,   18, 0x0a,
      56,   18,   18,   18, 0x0a,
      67,   18,   18,   18, 0x0a,
      81,   18,   18,   18, 0x0a,
      98,   18,   18,   18, 0x0a,
     109,   18,   18,   18, 0x0a,
     123,   18,   18,   18, 0x0a,
     139,   18,   18,   18, 0x0a,
     155,   18,   18,   18, 0x0a,
     171,   18,   18,   18, 0x0a,
     187,   18,   18,   18, 0x0a,
     203,   18,   18,   18, 0x0a,
     219,   18,   18,   18, 0x0a,

       0        // eod
};

static const char qt_meta_stringdata_qtros__MainWindow[] = {
    "qtros::MainWindow\0\0on_actionAbout_triggered()\0"
    "pinText()\0goButton()\0colorChange()\0"
    "colorChangeRED()\0setTimer()\0updateTimer()\0"
    "setTextLabel1()\0setTextLabel2()\0"
    "setTextLabel3()\0setTextLabel4()\0"
    "setTextLabel5()\0setTextLabel6()\0"
    "setTextLabel7()\0"
};

void qtros::MainWindow::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Q_ASSERT(staticMetaObject.cast(_o));
        MainWindow *_t = static_cast<MainWindow *>(_o);
        switch (_id) {
        case 0: _t->on_actionAbout_triggered(); break;
        case 1: _t->pinText(); break;
        case 2: _t->goButton(); break;
        case 3: _t->colorChange(); break;
        case 4: _t->colorChangeRED(); break;
        case 5: _t->setTimer(); break;
        case 6: _t->updateTimer(); break;
        case 7: _t->setTextLabel1(); break;
        case 8: _t->setTextLabel2(); break;
        case 9: _t->setTextLabel3(); break;
        case 10: _t->setTextLabel4(); break;
        case 11: _t->setTextLabel5(); break;
        case 12: _t->setTextLabel6(); break;
        case 13: _t->setTextLabel7(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObjectExtraData qtros::MainWindow::staticMetaObjectExtraData = {
    0,  qt_static_metacall 
};

const QMetaObject qtros::MainWindow::staticMetaObject = {
    { &QMainWindow::staticMetaObject, qt_meta_stringdata_qtros__MainWindow,
      qt_meta_data_qtros__MainWindow, &staticMetaObjectExtraData }
};

#ifdef Q_NO_DATA_RELOCATION
const QMetaObject &qtros::MainWindow::getStaticMetaObject() { return staticMetaObject; }
#endif //Q_NO_DATA_RELOCATION

const QMetaObject *qtros::MainWindow::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->metaObject : &staticMetaObject;
}

void *qtros::MainWindow::qt_metacast(const char *_clname)
{
    if (!_clname) return 0;
    if (!strcmp(_clname, qt_meta_stringdata_qtros__MainWindow))
        return static_cast<void*>(const_cast< MainWindow*>(this));
    return QMainWindow::qt_metacast(_clname);
}

int qtros::MainWindow::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QMainWindow::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 14)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 14;
    }
    return _id;
}
QT_END_MOC_NAMESPACE

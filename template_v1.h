template<typename T>
class MySet
{
public:
    MySet() 
    {
        mPtr = new T;
    }
    
    void clear() {
        if(mPtr) 
        {
            delete mPtr;
        }
    }
private:
    T *mPtr{nullptr};
};

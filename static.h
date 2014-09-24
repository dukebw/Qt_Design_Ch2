// from section 2.9 of Introduction to Design Patterns with Qt and C++

class Thing {
public:
	Thing(int a, int b);
	~Thing();
	void display() const;
	static void showCount();
private:
	int m_First, m_Second;
	static int s_Count;
};

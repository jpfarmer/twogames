#include <hxcpp.h>

#ifndef INCLUDED_com_haxepunk_utils_OUYA_GAMEPAD
#include <com/haxepunk/utils/OUYA_GAMEPAD.h>
#endif
namespace com{
namespace haxepunk{
namespace utils{

Void OUYA_GAMEPAD_obj::__construct()
{
	return null();
}

OUYA_GAMEPAD_obj::~OUYA_GAMEPAD_obj() { }

Dynamic OUYA_GAMEPAD_obj::__CreateEmpty() { return  new OUYA_GAMEPAD_obj; }
hx::ObjectPtr< OUYA_GAMEPAD_obj > OUYA_GAMEPAD_obj::__new()
{  hx::ObjectPtr< OUYA_GAMEPAD_obj > result = new OUYA_GAMEPAD_obj();
	result->__construct();
	return result;}

Dynamic OUYA_GAMEPAD_obj::__Create(hx::DynamicArray inArgs)
{  hx::ObjectPtr< OUYA_GAMEPAD_obj > result = new OUYA_GAMEPAD_obj();
	result->__construct();
	return result;}

int OUYA_GAMEPAD_obj::O_BUTTON;

int OUYA_GAMEPAD_obj::U_BUTTON;

int OUYA_GAMEPAD_obj::Y_BUTTON;

int OUYA_GAMEPAD_obj::A_BUTTON;

int OUYA_GAMEPAD_obj::LB_BUTTON;

int OUYA_GAMEPAD_obj::RB_BUTTON;

int OUYA_GAMEPAD_obj::BACK_BUTTON;

int OUYA_GAMEPAD_obj::START_BUTTON;

int OUYA_GAMEPAD_obj::LEFT_ANALOGUE_BUTTON;

int OUYA_GAMEPAD_obj::RIGHT_ANALOGUE_BUTTON;

int OUYA_GAMEPAD_obj::HOME_BUTTON;

int OUYA_GAMEPAD_obj::DPAD_UP;

int OUYA_GAMEPAD_obj::DPAD_DOWN;

int OUYA_GAMEPAD_obj::DPAD_LEFT;

int OUYA_GAMEPAD_obj::DPAD_RIGHT;

int OUYA_GAMEPAD_obj::LEFT_ANALOGUE_X;

int OUYA_GAMEPAD_obj::LEFT_ANALOGUE_Y;

int OUYA_GAMEPAD_obj::RIGHT_ANALOGUE_X;

int OUYA_GAMEPAD_obj::RIGHT_ANALOGUE_Y;

int OUYA_GAMEPAD_obj::LEFT_TRIGGER;

int OUYA_GAMEPAD_obj::RIGHT_TRIGGER;


OUYA_GAMEPAD_obj::OUYA_GAMEPAD_obj()
{
}

void OUYA_GAMEPAD_obj::__Mark(HX_MARK_PARAMS)
{
	HX_MARK_BEGIN_CLASS(OUYA_GAMEPAD);
	HX_MARK_END_CLASS();
}

void OUYA_GAMEPAD_obj::__Visit(HX_VISIT_PARAMS)
{
}

Dynamic OUYA_GAMEPAD_obj::__Field(const ::String &inName,bool inCallProp)
{
	return super::__Field(inName,inCallProp);
}

Dynamic OUYA_GAMEPAD_obj::__SetField(const ::String &inName,const Dynamic &inValue,bool inCallProp)
{
	return super::__SetField(inName,inValue,inCallProp);
}

void OUYA_GAMEPAD_obj::__GetFields(Array< ::String> &outFields)
{
	super::__GetFields(outFields);
};

static ::String sStaticFields[] = {
	HX_CSTRING("O_BUTTON"),
	HX_CSTRING("U_BUTTON"),
	HX_CSTRING("Y_BUTTON"),
	HX_CSTRING("A_BUTTON"),
	HX_CSTRING("LB_BUTTON"),
	HX_CSTRING("RB_BUTTON"),
	HX_CSTRING("BACK_BUTTON"),
	HX_CSTRING("START_BUTTON"),
	HX_CSTRING("LEFT_ANALOGUE_BUTTON"),
	HX_CSTRING("RIGHT_ANALOGUE_BUTTON"),
	HX_CSTRING("HOME_BUTTON"),
	HX_CSTRING("DPAD_UP"),
	HX_CSTRING("DPAD_DOWN"),
	HX_CSTRING("DPAD_LEFT"),
	HX_CSTRING("DPAD_RIGHT"),
	HX_CSTRING("LEFT_ANALOGUE_X"),
	HX_CSTRING("LEFT_ANALOGUE_Y"),
	HX_CSTRING("RIGHT_ANALOGUE_X"),
	HX_CSTRING("RIGHT_ANALOGUE_Y"),
	HX_CSTRING("LEFT_TRIGGER"),
	HX_CSTRING("RIGHT_TRIGGER"),
	String(null()) };

static ::String sMemberFields[] = {
	String(null()) };

static void sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(OUYA_GAMEPAD_obj::__mClass,"__mClass");
	HX_MARK_MEMBER_NAME(OUYA_GAMEPAD_obj::O_BUTTON,"O_BUTTON");
	HX_MARK_MEMBER_NAME(OUYA_GAMEPAD_obj::U_BUTTON,"U_BUTTON");
	HX_MARK_MEMBER_NAME(OUYA_GAMEPAD_obj::Y_BUTTON,"Y_BUTTON");
	HX_MARK_MEMBER_NAME(OUYA_GAMEPAD_obj::A_BUTTON,"A_BUTTON");
	HX_MARK_MEMBER_NAME(OUYA_GAMEPAD_obj::LB_BUTTON,"LB_BUTTON");
	HX_MARK_MEMBER_NAME(OUYA_GAMEPAD_obj::RB_BUTTON,"RB_BUTTON");
	HX_MARK_MEMBER_NAME(OUYA_GAMEPAD_obj::BACK_BUTTON,"BACK_BUTTON");
	HX_MARK_MEMBER_NAME(OUYA_GAMEPAD_obj::START_BUTTON,"START_BUTTON");
	HX_MARK_MEMBER_NAME(OUYA_GAMEPAD_obj::LEFT_ANALOGUE_BUTTON,"LEFT_ANALOGUE_BUTTON");
	HX_MARK_MEMBER_NAME(OUYA_GAMEPAD_obj::RIGHT_ANALOGUE_BUTTON,"RIGHT_ANALOGUE_BUTTON");
	HX_MARK_MEMBER_NAME(OUYA_GAMEPAD_obj::HOME_BUTTON,"HOME_BUTTON");
	HX_MARK_MEMBER_NAME(OUYA_GAMEPAD_obj::DPAD_UP,"DPAD_UP");
	HX_MARK_MEMBER_NAME(OUYA_GAMEPAD_obj::DPAD_DOWN,"DPAD_DOWN");
	HX_MARK_MEMBER_NAME(OUYA_GAMEPAD_obj::DPAD_LEFT,"DPAD_LEFT");
	HX_MARK_MEMBER_NAME(OUYA_GAMEPAD_obj::DPAD_RIGHT,"DPAD_RIGHT");
	HX_MARK_MEMBER_NAME(OUYA_GAMEPAD_obj::LEFT_ANALOGUE_X,"LEFT_ANALOGUE_X");
	HX_MARK_MEMBER_NAME(OUYA_GAMEPAD_obj::LEFT_ANALOGUE_Y,"LEFT_ANALOGUE_Y");
	HX_MARK_MEMBER_NAME(OUYA_GAMEPAD_obj::RIGHT_ANALOGUE_X,"RIGHT_ANALOGUE_X");
	HX_MARK_MEMBER_NAME(OUYA_GAMEPAD_obj::RIGHT_ANALOGUE_Y,"RIGHT_ANALOGUE_Y");
	HX_MARK_MEMBER_NAME(OUYA_GAMEPAD_obj::LEFT_TRIGGER,"LEFT_TRIGGER");
	HX_MARK_MEMBER_NAME(OUYA_GAMEPAD_obj::RIGHT_TRIGGER,"RIGHT_TRIGGER");
};

static void sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(OUYA_GAMEPAD_obj::__mClass,"__mClass");
	HX_VISIT_MEMBER_NAME(OUYA_GAMEPAD_obj::O_BUTTON,"O_BUTTON");
	HX_VISIT_MEMBER_NAME(OUYA_GAMEPAD_obj::U_BUTTON,"U_BUTTON");
	HX_VISIT_MEMBER_NAME(OUYA_GAMEPAD_obj::Y_BUTTON,"Y_BUTTON");
	HX_VISIT_MEMBER_NAME(OUYA_GAMEPAD_obj::A_BUTTON,"A_BUTTON");
	HX_VISIT_MEMBER_NAME(OUYA_GAMEPAD_obj::LB_BUTTON,"LB_BUTTON");
	HX_VISIT_MEMBER_NAME(OUYA_GAMEPAD_obj::RB_BUTTON,"RB_BUTTON");
	HX_VISIT_MEMBER_NAME(OUYA_GAMEPAD_obj::BACK_BUTTON,"BACK_BUTTON");
	HX_VISIT_MEMBER_NAME(OUYA_GAMEPAD_obj::START_BUTTON,"START_BUTTON");
	HX_VISIT_MEMBER_NAME(OUYA_GAMEPAD_obj::LEFT_ANALOGUE_BUTTON,"LEFT_ANALOGUE_BUTTON");
	HX_VISIT_MEMBER_NAME(OUYA_GAMEPAD_obj::RIGHT_ANALOGUE_BUTTON,"RIGHT_ANALOGUE_BUTTON");
	HX_VISIT_MEMBER_NAME(OUYA_GAMEPAD_obj::HOME_BUTTON,"HOME_BUTTON");
	HX_VISIT_MEMBER_NAME(OUYA_GAMEPAD_obj::DPAD_UP,"DPAD_UP");
	HX_VISIT_MEMBER_NAME(OUYA_GAMEPAD_obj::DPAD_DOWN,"DPAD_DOWN");
	HX_VISIT_MEMBER_NAME(OUYA_GAMEPAD_obj::DPAD_LEFT,"DPAD_LEFT");
	HX_VISIT_MEMBER_NAME(OUYA_GAMEPAD_obj::DPAD_RIGHT,"DPAD_RIGHT");
	HX_VISIT_MEMBER_NAME(OUYA_GAMEPAD_obj::LEFT_ANALOGUE_X,"LEFT_ANALOGUE_X");
	HX_VISIT_MEMBER_NAME(OUYA_GAMEPAD_obj::LEFT_ANALOGUE_Y,"LEFT_ANALOGUE_Y");
	HX_VISIT_MEMBER_NAME(OUYA_GAMEPAD_obj::RIGHT_ANALOGUE_X,"RIGHT_ANALOGUE_X");
	HX_VISIT_MEMBER_NAME(OUYA_GAMEPAD_obj::RIGHT_ANALOGUE_Y,"RIGHT_ANALOGUE_Y");
	HX_VISIT_MEMBER_NAME(OUYA_GAMEPAD_obj::LEFT_TRIGGER,"LEFT_TRIGGER");
	HX_VISIT_MEMBER_NAME(OUYA_GAMEPAD_obj::RIGHT_TRIGGER,"RIGHT_TRIGGER");
};

Class OUYA_GAMEPAD_obj::__mClass;

void OUYA_GAMEPAD_obj::__register()
{
	hx::Static(__mClass) = hx::RegisterClass(HX_CSTRING("com.haxepunk.utils.OUYA_GAMEPAD"), hx::TCanCast< OUYA_GAMEPAD_obj> ,sStaticFields,sMemberFields,
	&__CreateEmpty, &__Create,
	&super::__SGetClass(), 0, sMarkStatics, sVisitStatics);
}

void OUYA_GAMEPAD_obj::__boot()
{
	O_BUTTON= (int)0;
	U_BUTTON= (int)1;
	Y_BUTTON= (int)2;
	A_BUTTON= (int)3;
	LB_BUTTON= (int)6;
	RB_BUTTON= (int)7;
	BACK_BUTTON= (int)5;
	START_BUTTON= (int)4;
	LEFT_ANALOGUE_BUTTON= (int)8;
	RIGHT_ANALOGUE_BUTTON= (int)9;
	HOME_BUTTON= (int)10;
	DPAD_UP= (int)19;
	DPAD_DOWN= (int)20;
	DPAD_LEFT= (int)21;
	DPAD_RIGHT= (int)22;
	LEFT_ANALOGUE_X= (int)0;
	LEFT_ANALOGUE_Y= (int)1;
	RIGHT_ANALOGUE_X= (int)11;
	RIGHT_ANALOGUE_Y= (int)14;
	LEFT_TRIGGER= (int)17;
	RIGHT_TRIGGER= (int)18;
}

} // end namespace com
} // end namespace haxepunk
} // end namespace utils

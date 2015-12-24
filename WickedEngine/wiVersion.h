#ifndef WICKEDENGINE_VERSION_DEFINED
#define WICKEDENGINE_VERSION_DEFINED

#include "CommonInclude.h"

namespace wiVersion
{
	long GetVersion();
	// major features
	int GetMajor();
	// minor features, major bug fixes
	int GetMinor();
	// minor bug fixes
	int GetRevision();
	string GetVersionString();
}

#endif // WICKEDENGINE_VERSION_DEFINED
Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB8AF1A9AD
	for <lists+openwrt-devel@lfdr.de>; Sun, 12 May 2019 00:22:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dauHZw1OW2yoq0ROeAMtkH/q9OqecfJKeiaBTL0qmIE=; b=NdvGNKi1BoKmd0
	dcqZdZYUQm7Q1KfwlYppEzR+lMYxrM7Ke2PYbbJ8hRpn8hLVBbbPQ+bQOxXve45oBmIIm8P/iA94t
	9Q+r6Jmfz2Gf++ysDpk6rQxYGcQb4skgYSxAyPtBcrVcnBoZVS0BlHAKv96QkQqUfQWyKpvjBJXsm
	WnZiQz04k6QHLanB8sQa6ULFw8fGwZ47KCip6UQRGE9mKThXTo+fhbWEJEedR2cKhd1sLay5dIzju
	oc9g8dx9X/XhnaU6TQxoLSfQZnPjPBEWfCwO2BTLtCviFu3AWKjfjdxCHUEVylZr9CjsM6+ZOTkbQ
	9qZ1UAUh4LZLXHda/Umg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPaNX-0001Xm-RS; Sat, 11 May 2019 22:22:03 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2]
 helo=mx2.mailbox.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPaNQ-0001XP-RU
 for openwrt-devel@lists.openwrt.org; Sat, 11 May 2019 22:21:59 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 1D31AA0031;
 Sun, 12 May 2019 00:21:53 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter01.heinlein-hosting.de (spamfilter01.heinlein-hosting.de
 [80.241.56.115]) (amavisd-new, port 10030)
 with ESMTP id X5iiC1BGbWgU; Sun, 12 May 2019 00:21:41 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 12 May 2019 00:21:36 +0200
Message-Id: <20190511222136.13341-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_152157_191374_13F99DD8 
X-CRM114-Status: GOOD (  20.17  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:2:25:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] iperf: update to version 2.0.13
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Hauke Mehrtens <hauke@hauke-m.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The removed patchesd are already inteagrted in the upstream version.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 package/network/utils/iperf/Makefile          |   6 +-
 ...n-signal-handling-per-POSIX-calling-.patch |  43 -----
 ...rtup-fix-daemon-mode-per-redirecting.patch | 161 ------------------
 .../patches/0003-fix-non-ipv6-builds.patch    |  16 +-
 4 files changed, 10 insertions(+), 216 deletions(-)
 delete mode 100644 package/network/utils/iperf/patches/0001-fix-latent-bug-in-signal-handling-per-POSIX-calling-.patch
 delete mode 100644 package/network/utils/iperf/patches/0002-cleanup-main-startup-fix-daemon-mode-per-redirecting.patch

diff --git a/package/network/utils/iperf/Makefile b/package/network/utils/iperf/Makefile
index 383eb07949..33d00b43d7 100644
--- a/package/network/utils/iperf/Makefile
+++ b/package/network/utils/iperf/Makefile
@@ -8,11 +8,11 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=iperf
-PKG_VERSION:=2.0.12
-PKG_RELEASE:=3
+PKG_VERSION:=2.0.13
+PKG_RELEASE:=1
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
-PKG_HASH:=367f651fb1264b13f6518e41b8a7e08ce3e41b2a1c80e99ff0347561eed32646
+PKG_HASH:=c88adec966096a81136dda91b4bd19c27aae06df4d45a7f547a8e50d723778ad
 PKG_SOURCE_URL:=@SF/iperf2
 
 PKG_MAINTAINER:=Felix Fietkau <nbd@nbd.name>
diff --git a/package/network/utils/iperf/patches/0001-fix-latent-bug-in-signal-handling-per-POSIX-calling-.patch b/package/network/utils/iperf/patches/0001-fix-latent-bug-in-signal-handling-per-POSIX-calling-.patch
deleted file mode 100644
index a713e06b96..0000000000
--- a/package/network/utils/iperf/patches/0001-fix-latent-bug-in-signal-handling-per-POSIX-calling-.patch
+++ /dev/null
@@ -1,43 +0,0 @@
-From 7c0ac64ebea38d0d9ff4d160db4d33bc087a3490 Mon Sep 17 00:00:00 2001
-From: Robert McMahon <rjmcmahon@rjmcmahon.com>
-Date: Mon, 16 Jul 2018 17:51:29 -0700
-Subject: [PATCH] fix latent bug in signal handling, per POSIX calling exit()
- in signal handler is not safe.  Use _exit() instead.  Also, detect the user
- signal SIGINT for the case of server needing two invocations to stop server
- threads.  Note: the server threads still need some work from graceful
- termination with a single ctrl-c
-
----
-
---- a/compat/signal.c
-+++ b/compat/signal.c
-@@ -171,7 +171,7 @@ void sig_exit( int inSigno ) {
-     static int num = 0;
-     if ( num++ == 0 ) {
-         fflush( 0 );
--        exit( 0 );
-+	_exit(0);
-     }
- } /* end sig_exit */
- 
---- a/src/main.cpp
-+++ b/src/main.cpp
-@@ -268,7 +268,7 @@ void Sig_Interupt( int inSigno ) {
-     // We try to not allow a single interrupt handled by multiple threads
-     // to completely kill the app so we save off the first thread ID
-     // then that is the only thread that can supply the next interrupt
--    if ( thread_equalid( sThread, thread_zeroid() ) ) {
-+    if ( (inSigno == SIGINT) && thread_equalid( sThread, thread_zeroid() ) ) {
-         sThread = thread_getid();
-     } else if ( thread_equalid( sThread, thread_getid() ) ) {
-         sig_exit( inSigno );
-@@ -420,9 +420,3 @@ VOID ServiceStop() {
- }
- 
- #endif
--
--
--
--
--
--
diff --git a/package/network/utils/iperf/patches/0002-cleanup-main-startup-fix-daemon-mode-per-redirecting.patch b/package/network/utils/iperf/patches/0002-cleanup-main-startup-fix-daemon-mode-per-redirecting.patch
deleted file mode 100644
index c8655c9142..0000000000
--- a/package/network/utils/iperf/patches/0002-cleanup-main-startup-fix-daemon-mode-per-redirecting.patch
+++ /dev/null
@@ -1,161 +0,0 @@
-From 755be8bdb48d2536e39d2d7cf84e8a8f86b8776f Mon Sep 17 00:00:00 2001
-From: Robert McMahon <rjmcmahon@rjmcmahon.com>
-Date: Sat, 6 Oct 2018 13:36:52 -0700
-Subject: [PATCH] cleanup main startup, fix daemon mode per redirecting stdin,
- stderr and stdout to /dev/null
-
----
-
---- a/src/main.cpp
-+++ b/src/main.cpp
-@@ -167,67 +167,7 @@ int main( int argc, char **argv ) {
-     Settings_ParseCommandLine( argc, argv, ext_gSettings );
- 
-     // Check for either having specified client or server
--    if ( ext_gSettings->mThreadMode == kMode_Client
--         || ext_gSettings->mThreadMode == kMode_Listener ) {
--#ifdef WIN32
--        // Start the server as a daemon
--        if ( isDaemon( ext_gSettings )) {
--	    if (ext_gSettings->mThreadMode == kMode_Listener) {
--		CmdInstallService(argc, argv);
--	    } else {
--		fprintf(stderr, "Client cannot be run as a daemon\n");
--	    }
--            return 0;
--        }
--
--        // Remove the Windows service if requested
--        if ( isRemoveService( ext_gSettings ) ) {
--            // remove the service
--            if ( CmdRemoveService() ) {
--                fprintf(stderr, "IPerf Service is removed.\n");
--                return 0;
--            }
--        }
--#else
--	if ( isDaemon( ext_gSettings ) ) {
--	    if (ext_gSettings->mThreadMode != kMode_Listener) {
--		fprintf(stderr, "Iperf client cannot be run as a daemon\n");
--		return 0;
--	    }
--	    if (daemon(1, 1) < 0) {
--	        perror("daemon");
--	    }
--	    fprintf( stderr, "Running Iperf Server as a daemon\n");
--	    fprintf( stderr, "The Iperf daemon process ID : %d\n",((int)getpid()));
--	    fclose(stdout);
--	    fclose(stderr);
--	    fclose(stdin);
--	}
--#endif
--        // initialize client(s)
--        if ( ext_gSettings->mThreadMode == kMode_Client ) {
--            client_init( ext_gSettings );
--        }
--
--#ifdef HAVE_THREAD
--        // start up the reporter and client(s) or listener
--        {
--            thread_Settings *into = NULL;
--            // Create the settings structure for the reporter thread
--            Settings_Copy( ext_gSettings, &into );
--            into->mThreadMode = kMode_Reporter;
--
--            // Have the reporter launch the client or listener
--            into->runNow = ext_gSettings;
--
--            // Start all the threads that are ready to go
--            thread_start( into );
--        }
--#else
--        // No need to make a reporter thread because we don't have threads
--        thread_start( ext_gSettings );
--#endif
--    } else {
-+    if ((ext_gSettings->mThreadMode != kMode_Client) && (ext_gSettings->mThreadMode != kMode_Listener)) {
-         // neither server nor client mode was specified
-         // print usage and exit
- 
-@@ -236,20 +176,75 @@ int main( int argc, char **argv ) {
-         // Starting in 2.0 to restart a previously defined service
-         // you must call iperf with "iperf -D" or using the environment variable
-         SERVICE_TABLE_ENTRY dispatchTable[] =
--        {
--            { (LPSTR)TEXT(SZSERVICENAME), (LPSERVICE_MAIN_FUNCTION)service_main},
--            { NULL, NULL}
--        };
-+	    {
-+		{ (LPSTR)TEXT(SZSERVICENAME), (LPSERVICE_MAIN_FUNCTION)service_main},
-+		{ NULL, NULL}
-+	    };
- 
- 	// starting the service by SCM, there is no arguments will be passed in.
- 	// the arguments will pass into Service_Main entry.
-         if (!StartServiceCtrlDispatcher(dispatchTable) )
-             // If the service failed to start then print usage
- #endif
--        fprintf( stderr, usage_short, argv[0], argv[0] );
-+	    fprintf( stderr, usage_short, argv[0], argv[0] );
-+	return 0;
-+    }
-+
-+
-+    switch (ext_gSettings->mThreadMode) {
-+    case kMode_Client :
-+	if ( isDaemon( ext_gSettings ) ) {
-+	    fprintf(stderr, "Iperf client cannot be run as a daemon\n");
-+	    return 0;
-+	}
-+        // initialize client(s)
-+        client_init( ext_gSettings );
-+	break;
-+    case kMode_Listener :
-+	if ( isDaemon( ext_gSettings ) ) {
-+	    fprintf( stderr, "Running Iperf Server as a daemon\n");
-+	    // Start the server as a daemon
-+#ifdef WIN32
-+	    CmdInstallService(argc, argv);
-+	    // Remove the Windows service if requested
-+	    if ( isRemoveService( ext_gSettings ) ) {
-+		// remove the service
-+		if ( CmdRemoveService() ) {
-+		    fprintf(stderr, "IPerf Service is removed.\n");
-+		    return 0;
-+		}
-+	    }
-+#else
-+	    fflush(stderr);
-+	    // redirect stdin, stdout and sterr to /dev/null (see dameon and no close flag)
-+	    if (daemon(1, 0) < 0) {
-+	        perror("daemon");
-+	    }
-+	}
-+#endif
-+	break;
-+    default :
-+	fprintf( stderr, "unknown mode");
-+	break;
-+    }
-+#ifdef HAVE_THREAD
-+        // start up the reporter and client(s) or listener
-+    {
-+	thread_Settings *into = NULL;
-+	// Create the settings structure for the reporter thread
-+	Settings_Copy( ext_gSettings, &into );
-+	into->mThreadMode = kMode_Reporter;
-+
-+	// Have the reporter launch the client or listener
-+	into->runNow = ext_gSettings;
- 
--        return 0;
-+	// Start all the threads that are ready to go
-+	thread_start( into );
-     }
-+#else
-+    // No need to make a reporter thread because we don't have threads
-+    thread_start( ext_gSettings );
-+#endif
- 
-     // wait for other (client, server) threads to complete
-     thread_joinall();
diff --git a/package/network/utils/iperf/patches/0003-fix-non-ipv6-builds.patch b/package/network/utils/iperf/patches/0003-fix-non-ipv6-builds.patch
index 9d96c1919a..c6afa3e160 100644
--- a/package/network/utils/iperf/patches/0003-fix-non-ipv6-builds.patch
+++ b/package/network/utils/iperf/patches/0003-fix-non-ipv6-builds.patch
@@ -1,18 +1,16 @@
-Index: iperf-2.0.12/src/Listener.cpp
-===================================================================
---- iperf-2.0.12.orig/src/Listener.cpp
-+++ iperf-2.0.12/src/Listener.cpp
-@@ -670,6 +670,7 @@ int Listener::L2_setup (void) {
+--- a/src/Listener.cpp
++++ b/src/Listener.cpp
+@@ -723,6 +723,7 @@ int Listener::L2_setup (void) {
  
      // Now optimize packet flow up the raw socket
      // Establish the flow BPF to forward up only "connected" packets to this raw socket
 +#ifdef HAVE_IPV6
      if (l->sa_family == AF_INET6) {
+ #ifdef HAVE_IPV6
  	struct in6_addr *v6peer = SockAddr_get_in6_addr(&server->peer);
- 	struct in6_addr *v6local = SockAddr_get_in6_addr(&server->local);
-@@ -682,6 +683,9 @@ int Listener::L2_setup (void) {
- 	    WARN_errno( rc == SOCKET_ERROR, "l2 v4in6 connect ip bpf");
- 	}
+@@ -740,6 +741,9 @@ int Listener::L2_setup (void) {
+ 	return -1;
+ #endif /* HAVE_IPV6 */
      } else {
 +#else
 +    {
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

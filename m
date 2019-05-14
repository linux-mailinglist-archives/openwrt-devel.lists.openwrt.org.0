Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C441CC55
	for <lists+openwrt-devel@lfdr.de>; Tue, 14 May 2019 17:57:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NvIxUn8UPSUmtE3Pla5a43OY92IvMeW7hEZfBavJxVM=; b=ELNzWSqKM+cZko
	Tt+qdCbVQTKaTqWVHjBDZVIDYvfROW2sHBnjdlXquAAwP7SHnc0cZ3O9utlGmxFUk7yAgAvF+ORHb
	dvxAYJ1J1Sren4GEOvZnTgxIYCFrtDBq1WmGDkGLr3X547MJt486NR5fHiAT5uFcS+7Wzw7fGN5aA
	HB2jhi7MvWi1FuwEdB0AWuWSEtNkIUgp4qNgl+IdQszhJ9pdoRRo71YTSowEvCbT6GWaPy4/pzlHG
	6YkgmYzlC9NTgBH8QbldciaeBG3Btd1AEDsQBtltKtHGO+i1mlvN5V414vDNc7j1m7lhCPF0Y0SPZ
	ZWWYo8YTGm9WnESJG19w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQZoN-0006tT-GB; Tue, 14 May 2019 15:57:51 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQZoC-0006kR-SS
 for openwrt-devel@lists.openwrt.org; Tue, 14 May 2019 15:57:43 +0000
X-Originating-IP: 139.18.242.240
Received: from dawn.lan (edu242240.nat.uni-leipzig.de [139.18.242.240])
 (Authenticated sender: mail@aparcar.org)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id C6550E000C;
 Tue, 14 May 2019 15:57:38 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 14 May 2019 17:56:11 +0200
Message-Id: <20190514155608.13021-2-mail@aparcar.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190514155608.13021-1-mail@aparcar.org>
References: <20190514155608.13021-1-mail@aparcar.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_085741_233285_D738FE55 
X-CRM114-Status: GOOD (  17.16  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH v2 2/2] procd: apply official kernel
 clang-format style
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
Cc: Paul Spooren <mail@aparcar.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

using clang-format-9

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 container.h   |   5 +-
 inittab.c     | 108 +++++++++++++++++----------------
 libc-compat.h |   5 +-
 log.h         |  12 ++--
 preload.h     |  49 ++++++---------
 procd.c       |  16 ++---
 rcS.c         |  18 +++---
 signal.c      |  22 +++----
 state.c       |  76 ++++++++++++-----------
 system.c      | 162 ++++++++++++++++++++++----------------------------
 sysupgrade.c  |   6 +-
 sysupgrade.h  |   2 -
 ubus.c        |  16 ++---
 watchdog.c    |  14 ++---
 watchdog.h    |   4 +-
 15 files changed, 241 insertions(+), 274 deletions(-)

diff --git a/container.h b/container.h
index d33fa32..749b33f 100644
--- a/container.h
+++ b/container.h
@@ -14,10 +14,11 @@
 #ifndef __CONTAINER_H
 #define __CONTAINER_H
 
-#include <stdlib.h>
 #include <stdbool.h>
+#include <stdlib.h>
 
-static inline bool is_container() {
+static inline bool is_container()
+{
 	return !!getenv("container");
 }
 
diff --git a/inittab.c b/inittab.c
index 55554b9..a2680ce 100644
--- a/inittab.c
+++ b/inittab.c
@@ -13,41 +13,41 @@
  */
 
 #define _GNU_SOURCE
-#include <sys/types.h>
-#include <sys/stat.h>
 #include <sys/ioctl.h>
+#include <sys/stat.h>
+#include <sys/types.h>
 
+#include <ctype.h>
 #include <fcntl.h>
+#include <regex.h>
 #include <stdio.h>
 #include <stdlib.h>
 #include <unistd.h>
-#include <regex.h>
-#include <ctype.h>
 
-#include <libubox/utils.h>
 #include <libubox/list.h>
+#include <libubox/utils.h>
 
-#include "utils/utils.h"
 #include "procd.h"
 #include "rcS.h"
+#include "utils/utils.h"
 
 #ifndef O_PATH
-#define O_PATH		010000000
+#define O_PATH 010000000
 #endif
 
-#define TAG_ID		0
-#define TAG_RUNLVL	1
-#define TAG_ACTION	2
-#define TAG_PROCESS	3
+#define TAG_ID 0
+#define TAG_RUNLVL 1
+#define TAG_ACTION 2
+#define TAG_PROCESS 3
 
-#define MAX_ARGS	8
+#define MAX_ARGS 8
 
 struct init_action;
 char *console = NULL;
 
 struct init_handler {
 	const char *name;
-	void (*cb) (struct init_action *a);
+	void (*cb)(struct init_action *a);
 	int multi;
 };
 
@@ -74,7 +74,7 @@ static int dev_exist(const char *dev)
 {
 	int dfd, fd;
 
-	dfd = open("/dev", O_PATH|O_DIRECTORY);
+	dfd = open("/dev", O_PATH | O_DIRECTORY);
 
 	if (dfd < 0)
 		return 0;
@@ -109,9 +109,8 @@ static void fork_worker(struct init_action *a)
 	}
 
 	if (a->proc.pid > 0) {
-		DEBUG(4, "Launched new %s action, pid=%d\n",
-					a->handler->name,
-					(int) a->proc.pid);
+		DEBUG(4, "Launched new %s action, pid=%d\n", a->handler->name,
+		      (int)a->proc.pid);
 		uloop_process_add(&a->proc);
 	}
 }
@@ -121,7 +120,7 @@ static void child_exit(struct uloop_process *proc, int ret)
 	struct init_action *a = container_of(proc, struct init_action, proc);
 
 	DEBUG(4, "pid:%d\n", proc->pid);
-        uloop_timeout_set(&a->tout, a->respawn);
+	uloop_timeout_set(&a->tout, a->respawn);
 }
 
 static void respawn(struct uloop_timeout *tout)
@@ -184,8 +183,7 @@ static void askconsole(struct init_action *a)
 
 		console = strdup(tty);
 		a->id = strdup(tty);
-	}
-	else {
+	} else {
 		console = NULL;
 		a->id = NULL;
 	}
@@ -209,35 +207,39 @@ static void rcrespawn(struct init_action *a)
 	fork_worker(a);
 }
 
-static struct init_handler handlers[] = {
-	{
-		.name = "sysinit",
-		.cb = runrc,
-	}, {
-		.name = "shutdown",
-		.cb = runrc,
-	}, {
-		.name = "askfirst",
-		.cb = askfirst,
-		.multi = 1,
-	}, {
-		.name = "askconsole",
-		.cb = askconsole,
-		.multi = 1,
-	}, {
-		.name = "respawn",
-		.cb = rcrespawn,
-		.multi = 1,
-	}, {
-		.name = "askconsolelate",
-		.cb = askconsole,
-		.multi = 1,
-	}, {
-		.name = "respawnlate",
-		.cb = rcrespawn,
-		.multi = 1,
-	}
-};
+static struct init_handler handlers[] = { {
+						  .name = "sysinit",
+						  .cb = runrc,
+					  },
+					  {
+						  .name = "shutdown",
+						  .cb = runrc,
+					  },
+					  {
+						  .name = "askfirst",
+						  .cb = askfirst,
+						  .multi = 1,
+					  },
+					  {
+						  .name = "askconsole",
+						  .cb = askconsole,
+						  .multi = 1,
+					  },
+					  {
+						  .name = "respawn",
+						  .cb = rcrespawn,
+						  .multi = 1,
+					  },
+					  {
+						  .name = "askconsolelate",
+						  .cb = askconsole,
+						  .multi = 1,
+					  },
+					  {
+						  .name = "respawnlate",
+						  .cb = rcrespawn,
+						  .multi = 1,
+					  } };
 
 static int add_action(struct init_action *a, const char *name)
 {
@@ -257,7 +259,7 @@ void procd_inittab_run(const char *handler)
 {
 	struct init_action *a;
 
-	list_for_each_entry(a, &actions, list)
+	list_for_each_entry (a, &actions, list)
 		if (!strcmp(a->handler->name, handler)) {
 			if (a->handler->multi) {
 				a->handler->cb(a);
@@ -270,7 +272,7 @@ void procd_inittab_run(const char *handler)
 
 void procd_inittab(void)
 {
-#define LINE_LEN	128
+#define LINE_LEN 128
 	FILE *fp = fopen(tab, "r");
 	struct init_action *a;
 	regex_t pat_inittab;
@@ -282,7 +284,9 @@ void procd_inittab(void)
 		return;
 	}
 
-	regcomp(&pat_inittab, "([a-zA-Z0-9]*):([a-zA-Z0-9]*):([a-zA-Z0-9]*):(.*)", REG_EXTENDED);
+	regcomp(&pat_inittab,
+		"([a-zA-Z0-9]*):([a-zA-Z0-9]*):([a-zA-Z0-9]*):(.*)",
+		REG_EXTENDED);
 	line = malloc(LINE_LEN);
 	a = calloc(1, sizeof(struct init_action));
 
diff --git a/libc-compat.h b/libc-compat.h
index 9435346..8d7152d 100644
--- a/libc-compat.h
+++ b/libc-compat.h
@@ -2,7 +2,10 @@
 #define __PROCD_LIBC_COMPAT_H
 
 #if defined(__GLIBC__) && !defined(__UCLIBC__)
-static inline int ignore(int x) {return x;}
+static inline int ignore(int x)
+{
+	return x;
+}
 #else
 #define ignore(x) x
 #endif
diff --git a/log.h b/log.h
index f0c4268..7eadc57 100644
--- a/log.h
+++ b/log.h
@@ -17,12 +17,14 @@
 
 #include <libubox/ulog.h>
 
-#define DEBUG(level, fmt, ...) do { \
-	if (debug >= level) { \
-		ulog(LOG_NOTICE, fmt, ## __VA_ARGS__); \
-	} } while (0)
+#define DEBUG(level, fmt, ...)                                                 \
+	do {                                                                   \
+		if (debug >= level) {                                          \
+			ulog(LOG_NOTICE, fmt, ##__VA_ARGS__);                  \
+		}                                                              \
+	} while (0)
 
-#define LOG   ULOG_INFO
+#define LOG ULOG_INFO
 #define ERROR ULOG_ERR
 
 extern unsigned int debug;
diff --git a/preload.h b/preload.h
index 5e663ac..5a09db0 100644
--- a/preload.h
+++ b/preload.h
@@ -18,39 +18,24 @@
 #endif
 
 #ifndef attribute_unused
-#define attribute_unused __attribute__ ((unused))
+#define attribute_unused __attribute__((unused))
 #endif
 typedef int (*main_t)(int, char **, char **);
 
 typedef int (*start_main_t)(main_t main, int, char *__unbounded *__unbounded,
-			ElfW(auxv_t) *,
-			__typeof (main),
-			void (*fini) (void),
-			void (*rtld_fini) (void),
-			void *__unbounded stack_end);
-
-int __libc_start_main(main_t main,
-			int argc,
-			char **argv,
-			ElfW(auxv_t) *auxvec,
-			__typeof (main) init,
-			void (*fini) (void),
-			void (*rtld_fini) (void),
-			void *stack_end);
-
-
-typedef void (*uClibc_main)(main_t main,
-			int argc,
-			char **argv,
-			void (*app_init)(void),
-			void (*app_fini)(void),
-			void (*rtld_fini)(void),
-			void *stack_end attribute_unused);
-
-void __uClibc_main(main_t main,
-			int argc,
-			char **argv,
-			void (*app_init)(void),
-			void (*app_fini)(void),
-			void (*rtld_fini)(void),
-			void *stack_end attribute_unused);
+			    ElfW(auxv_t) *, __typeof(main), void (*fini)(void),
+			    void (*rtld_fini)(void),
+			    void *__unbounded stack_end);
+
+int __libc_start_main(main_t main, int argc, char **argv, ElfW(auxv_t) * auxvec,
+		      __typeof(main) init, void (*fini)(void),
+		      void (*rtld_fini)(void), void *stack_end);
+
+typedef void (*uClibc_main)(main_t main, int argc, char **argv,
+			    void (*app_init)(void), void (*app_fini)(void),
+			    void (*rtld_fini)(void),
+			    void *stack_end attribute_unused);
+
+void __uClibc_main(main_t main, int argc, char **argv, void (*app_init)(void),
+		   void (*app_fini)(void), void (*rtld_fini)(void),
+		   void *stack_end attribute_unused);
diff --git a/procd.c b/procd.c
index 3de6208..c0c4ae1 100644
--- a/procd.c
+++ b/procd.c
@@ -12,30 +12,32 @@
  * GNU General Public License for more details.
  */
 
-#include <sys/wait.h>
-#include <sys/types.h>
-#include <sys/stat.h>
 #include <sys/reboot.h>
+#include <sys/stat.h>
+#include <sys/types.h>
+#include <sys/wait.h>
 
-#include <unistd.h>
 #include <getopt.h>
 #include <libgen.h>
+#include <unistd.h>
 
+#include "plug/hotplug.h"
 #include "procd.h"
 #include "watchdog.h"
-#include "plug/hotplug.h"
 
 unsigned int debug;
 
 static int usage(const char *prog)
 {
-	fprintf(stderr, "Usage: %s [options]\n"
+	fprintf(stderr,
+		"Usage: %s [options]\n"
 		"Options:\n"
 		"	-s <path>	Path to ubus socket\n"
 		"	-h <path>	run as hotplug daemon\n"
 		"	-d <level>	Enable debug messages\n"
 		"	-S		Print messages to stdout\n"
-		"\n", prog);
+		"\n",
+		prog);
 	return 1;
 }
 
diff --git a/rcS.c b/rcS.c
index c2e1abb..5a5b138 100644
--- a/rcS.c
+++ b/rcS.c
@@ -16,16 +16,16 @@
  * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
  */
 
-#include <libubox/uloop.h>
 #include <libubox/runqueue.h>
-#include <stdlib.h>
+#include <libubox/uloop.h>
 #include <stdio.h>
+#include <stdlib.h>
 #include <unistd.h>
 
-#include <sys/types.h>
-#include <sys/stat.h>
 #include <fcntl.h>
 #include <glob.h>
+#include <sys/stat.h>
+#include <sys/types.h>
 
 #include <libubox/ustream.h>
 
@@ -118,7 +118,8 @@ static void q_initd_complete(struct runqueue *q, struct runqueue_task *p)
 		ts_res.tv_nsec += 1000000000;
 	}
 
-	DEBUG(2, "stop %s %s - took %lu.%09lus\n", s->file, s->param, ts_res.tv_sec, ts_res.tv_nsec);
+	DEBUG(2, "stop %s %s - took %lu.%09lus\n", s->file, s->param,
+	      ts_res.tv_sec, ts_res.tv_nsec);
 	ustream_free(&s->fd.stream);
 	close(s->fd.fd.fd);
 	free(s);
@@ -152,7 +153,8 @@ static void add_initd(struct runqueue *q, char *file, char *param)
 	runqueue_task_add(q, &s->proc.task, false);
 }
 
-static int _rc(struct runqueue *q, char *path, const char *file, char *pattern, char *param)
+static int _rc(struct runqueue *q, char *path, const char *file, char *pattern,
+	       char *param)
 {
 	char *dir = alloca(2 + strlen(path) + strlen(file) + strlen(pattern));
 	glob_t gl;
@@ -194,10 +196,10 @@ int rc(const char *file, char *param)
 
 static void r_empty(struct runqueue *q)
 {
-
 }
 
-static void __attribute__((constructor)) rc_init() {
+static void __attribute__((constructor)) rc_init()
+{
 	runqueue_init(&r);
 	r.empty_cb = r_empty;
 	r.max_running_tasks = 8;
diff --git a/signal.c b/signal.c
index 9974153..df2254c 100644
--- a/signal.c
+++ b/signal.c
@@ -27,7 +27,7 @@ static void do_reboot(void)
 	sleep(2);
 	reboot(RB_AUTOBOOT);
 	while (1)
-	;
+		;
 }
 
 static void signal_shutdown(int signal, siginfo_t *siginfo, void *data)
@@ -36,7 +36,7 @@ static void signal_shutdown(int signal, siginfo_t *siginfo, void *data)
 	char *msg = NULL;
 
 #ifndef DISABLE_INIT
-	switch(signal) {
+	switch (signal) {
 	case SIGINT:
 	case SIGTERM:
 		event = RB_AUTOBOOT;
@@ -56,10 +56,8 @@ static void signal_shutdown(int signal, siginfo_t *siginfo, void *data)
 		procd_shutdown(event);
 }
 
-struct sigaction sa_shutdown = {
-	.sa_sigaction = signal_shutdown,
-	.sa_flags = SA_SIGINFO
-};
+struct sigaction sa_shutdown = { .sa_sigaction = signal_shutdown,
+				 .sa_flags = SA_SIGINFO };
 
 static void signal_crash(int signal, siginfo_t *siginfo, void *data)
 {
@@ -67,20 +65,16 @@ static void signal_crash(int signal, siginfo_t *siginfo, void *data)
 	do_reboot();
 }
 
-struct sigaction sa_crash = {
-	.sa_sigaction = signal_crash,
-	.sa_flags = SA_SIGINFO
-};
+struct sigaction sa_crash = { .sa_sigaction = signal_crash,
+			      .sa_flags = SA_SIGINFO };
 
 static void signal_dummy(int signal, siginfo_t *siginfo, void *data)
 {
 	ERROR("Got unexpected signal %d\n", signal);
 }
 
-struct sigaction sa_dummy = {
-	.sa_sigaction = signal_dummy,
-	.sa_flags = SA_SIGINFO
-};
+struct sigaction sa_dummy = { .sa_sigaction = signal_dummy,
+			      .sa_flags = SA_SIGINFO };
 
 void procd_signal(void)
 {
diff --git a/state.c b/state.c
index ccf4104..530b6e8 100644
--- a/state.c
+++ b/state.c
@@ -13,62 +13,65 @@
  */
 
 #include <fcntl.h>
-#include <sys/reboot.h>
+#include <signal.h>
 #include <stdio.h>
 #include <stdlib.h>
-#include <unistd.h>
+#include <sys/reboot.h>
 #include <sys/types.h>
-#include <signal.h>
+#include <unistd.h>
 
-#include "procd.h"
-#include "syslog.h"
 #include "plug/hotplug.h"
-#include "watchdog.h"
+#include "procd.h"
 #include "service/service.h"
+#include "syslog.h"
 #include "utils/utils.h"
+#include "watchdog.h"
 
-enum {
-	STATE_NONE = 0,
-	STATE_EARLY,
-	STATE_UBUS,
-	STATE_INIT,
-	STATE_RUNNING,
-	STATE_SHUTDOWN,
-	STATE_HALT,
-	__STATE_MAX,
+enum { STATE_NONE = 0,
+       STATE_EARLY,
+       STATE_UBUS,
+       STATE_INIT,
+       STATE_RUNNING,
+       STATE_SHUTDOWN,
+       STATE_HALT,
+       __STATE_MAX,
 };
 
 static int state = STATE_NONE;
 static int reboot_event;
 
-static void set_stdio(const char* tty)
+static void set_stdio(const char *tty)
 {
-	if (chdir("/dev") ||
-	    !freopen(tty, "r", stdin) ||
-	    !freopen(tty, "w", stdout) ||
-	    !freopen(tty, "w", stderr) ||
+	if (chdir("/dev") || !freopen(tty, "r", stdin) ||
+	    !freopen(tty, "w", stdout) || !freopen(tty, "w", stderr) ||
 	    chdir("/"))
 		ERROR("failed to set stdio: %m\n");
 	else
-		fcntl(STDERR_FILENO, F_SETFL, fcntl(STDERR_FILENO, F_GETFL) | O_NONBLOCK);
+		fcntl(STDERR_FILENO, F_SETFL,
+		      fcntl(STDERR_FILENO, F_GETFL) | O_NONBLOCK);
 }
 
 static void set_console(void)
 {
-	const char* tty;
-	char* split;
-	char line[ 20 ];
-	const char* try[] = { "tty0", "console", NULL }; /* Try the most common outputs */
+	const char *tty;
+	char *split;
+	char line[20];
+	const char *
+	try
+		[] = { "tty0", "console",
+		       NULL }; /* Try the most common outputs */
 	int f, i = 0;
 
-	tty = get_cmdline_val("console",line,sizeof(line));
+	tty = get_cmdline_val("console", line, sizeof(line));
 	if (tty != NULL) {
 		split = strchr(tty, ',');
-		if ( split != NULL )
+		if (split != NULL)
 			*split = '\0';
 	} else {
 		// Try a default
-		tty=try[i];
+		tty =
+		try
+			[i];
 		i++;
 	}
 
@@ -76,14 +79,16 @@ static void set_console(void)
 		ERROR("failed to change dir to /dev: %m\n");
 		return;
 	}
-	while (tty!=NULL) {
+	while (tty != NULL) {
 		f = open(tty, O_RDONLY);
 		if (f >= 0) {
 			close(f);
 			break;
 		}
 
-		tty=try[i];
+		tty =
+		try
+			[i];
 		i++;
 	}
 	if (chdir("/"))
@@ -106,7 +111,8 @@ static void state_enter(void)
 		break;
 
 	case STATE_UBUS:
-		// try to reopen incase the wdt was not available before coldplug
+		// try to reopen incase the wdt was not available before
+		// coldplug
 		watchdog_init(0);
 		set_stdio("console");
 		LOG("- ubus -\n");
@@ -160,10 +166,10 @@ static void state_enter(void)
 		/* Allow time for last message to reach serial console, etc */
 		sleep(1);
 
-		/* We have to fork here, since the kernel calls do_exit(EXIT_SUCCESS)
-		 * in linux/kernel/sys.c, which can cause the machine to panic when
-		 * the init process exits... */
-		if (!vfork( )) { /* child */
+		/* We have to fork here, since the kernel calls
+		 * do_exit(EXIT_SUCCESS) in linux/kernel/sys.c, which can cause
+		 * the machine to panic when the init process exits... */
+		if (!vfork()) { /* child */
 			reboot(reboot_event);
 			_exit(EXIT_SUCCESS);
 		}
diff --git a/system.c b/system.c
index 8ed3f93..e7f46ad 100644
--- a/system.c
+++ b/system.c
@@ -16,14 +16,14 @@
 #ifdef linux
 #include <sys/sysinfo.h>
 #endif
+#include <fcntl.h>
+#include <signal.h>
+#include <stdlib.h>
 #include <sys/ioctl.h>
-#include <sys/types.h>
 #include <sys/reboot.h>
 #include <sys/stat.h>
-#include <fcntl.h>
-#include <signal.h>
+#include <sys/types.h>
 #include <unistd.h>
-#include <stdlib.h>
 
 #include <libubox/uloop.h>
 
@@ -36,8 +36,8 @@ static int notify;
 static struct ubus_context *_ctx;
 
 static int system_board(struct ubus_context *ctx, struct ubus_object *obj,
-                 struct ubus_request_data *req, const char *method,
-                 struct blob_attr *msg)
+			struct ubus_request_data *req, const char *method,
+			struct blob_attr *msg)
 {
 	void *c;
 	char line[256];
@@ -47,16 +47,13 @@ static int system_board(struct ubus_context *ctx, struct ubus_object *obj,
 
 	blob_buf_init(&b, 0);
 
-	if (uname(&utsname) >= 0)
-	{
+	if (uname(&utsname) >= 0) {
 		blobmsg_add_string(&b, "kernel", utsname.release);
 		blobmsg_add_string(&b, "hostname", utsname.nodename);
 	}
 
-	if ((f = fopen("/proc/cpuinfo", "r")) != NULL)
-	{
-		while(fgets(line, sizeof(line), f))
-		{
+	if ((f = fopen("/proc/cpuinfo", "r")) != NULL) {
+		while (fgets(line, sizeof(line), f)) {
 			key = strtok(line, "\t:");
 			val = strtok(NULL, "\t\n");
 
@@ -66,13 +63,12 @@ static int system_board(struct ubus_context *ctx, struct ubus_object *obj,
 			if (!strcasecmp(key, "system type") ||
 			    !strcasecmp(key, "processor") ||
 			    !strcasecmp(key, "cpu") ||
-			    !strcasecmp(key, "model name"))
-			{
+			    !strcasecmp(key, "model name")) {
 				strtoul(val + 2, &key, 0);
 
-				if (key == (val + 2) || *key != 0)
-				{
-					blobmsg_add_string(&b, "system", val + 2);
+				if (key == (val + 2) || *key != 0) {
+					blobmsg_add_string(&b, "system",
+							   val + 2);
 					break;
 				}
 			}
@@ -82,10 +78,8 @@ static int system_board(struct ubus_context *ctx, struct ubus_object *obj,
 	}
 
 	if ((f = fopen("/tmp/sysinfo/model", "r")) != NULL ||
-	    (f = fopen("/proc/device-tree/model", "r")) != NULL)
-	{
-		if (fgets(line, sizeof(line), f))
-		{
+	    (f = fopen("/proc/device-tree/model", "r")) != NULL) {
+		if (fgets(line, sizeof(line), f)) {
 			val = strtok(line, "\t\n");
 
 			if (val)
@@ -93,11 +87,8 @@ static int system_board(struct ubus_context *ctx, struct ubus_object *obj,
 		}
 
 		fclose(f);
-	}
-	else if ((f = fopen("/proc/cpuinfo", "r")) != NULL)
-	{
-		while(fgets(line, sizeof(line), f))
-		{
+	} else if ((f = fopen("/proc/cpuinfo", "r")) != NULL) {
+		while (fgets(line, sizeof(line), f)) {
 			key = strtok(line, "\t:");
 			val = strtok(NULL, "\t\n");
 
@@ -105,8 +96,7 @@ static int system_board(struct ubus_context *ctx, struct ubus_object *obj,
 				continue;
 
 			if (!strcasecmp(key, "machine") ||
-			    !strcasecmp(key, "hardware"))
-			{
+			    !strcasecmp(key, "hardware")) {
 				blobmsg_add_string(&b, "model", val + 2);
 				break;
 			}
@@ -115,10 +105,8 @@ static int system_board(struct ubus_context *ctx, struct ubus_object *obj,
 		fclose(f);
 	}
 
-	if ((f = fopen("/tmp/sysinfo/board_name", "r")) != NULL)
-	{
-		if (fgets(line, sizeof(line), f))
-		{
+	if ((f = fopen("/tmp/sysinfo/board_name", "r")) != NULL) {
+		if (fgets(line, sizeof(line), f)) {
 			val = strtok(line, "\t\n");
 
 			if (val)
@@ -126,18 +114,13 @@ static int system_board(struct ubus_context *ctx, struct ubus_object *obj,
 		}
 
 		fclose(f);
-	}
-	else if ((f = fopen("/proc/device-tree/compatible", "r")) != NULL)
-	{
-		if (fgets(line, sizeof(line), f))
-		{
+	} else if ((f = fopen("/proc/device-tree/compatible", "r")) != NULL) {
+		if (fgets(line, sizeof(line), f)) {
 			val = strtok(line, "\t\n");
 
-			if (val)
-			{
+			if (val) {
 				next = val;
-				while ((next = strchr(next, ',')) != NULL)
-				{
+				while ((next = strchr(next, ',')) != NULL) {
 					*next = '-';
 					next++;
 				}
@@ -149,12 +132,10 @@ static int system_board(struct ubus_context *ctx, struct ubus_object *obj,
 		fclose(f);
 	}
 
-	if ((f = fopen("/etc/openwrt_release", "r")) != NULL)
-	{
+	if ((f = fopen("/etc/openwrt_release", "r")) != NULL) {
 		c = blobmsg_open_table(&b, "release");
 
-		while (fgets(line, sizeof(line), f))
-		{
+		while (fgets(line, sizeof(line), f)) {
 			char *dest;
 			char ch;
 
@@ -180,7 +161,8 @@ static int system_board(struct ubus_context *ctx, struct ubus_object *obj,
 			else
 				continue;
 
-			dest = blobmsg_alloc_string_buffer(&b, key, strlen(val));
+			dest = blobmsg_alloc_string_buffer(&b, key,
+							   strlen(val));
 			if (!dest) {
 				ERROR("Failed to allocate blob.\n");
 				continue;
@@ -220,8 +202,8 @@ static int system_board(struct ubus_context *ctx, struct ubus_object *obj,
 }
 
 static int system_info(struct ubus_context *ctx, struct ubus_object *obj,
-                struct ubus_request_data *req, const char *method,
-                struct blob_attr *msg)
+		       struct ubus_request_data *req, const char *method,
+		       struct blob_attr *msg)
 {
 	time_t now;
 	struct tm *tm;
@@ -243,7 +225,7 @@ static int system_info(struct ubus_context *ctx, struct ubus_object *obj,
 	blobmsg_add_u32(&b, "localtime", now + tm->tm_gmtoff);
 
 #ifdef linux
-	blobmsg_add_u32(&b, "uptime",    info.uptime);
+	blobmsg_add_u32(&b, "uptime", info.uptime);
 
 	c = blobmsg_open_array(&b, "load");
 	blobmsg_add_u32(&b, NULL, info.loads[0]);
@@ -252,15 +234,15 @@ static int system_info(struct ubus_context *ctx, struct ubus_object *obj,
 	blobmsg_close_array(&b, c);
 
 	c = blobmsg_open_table(&b, "memory");
-	blobmsg_add_u64(&b, "total",    info.mem_unit * info.totalram);
-	blobmsg_add_u64(&b, "free",     info.mem_unit * info.freeram);
-	blobmsg_add_u64(&b, "shared",   info.mem_unit * info.sharedram);
+	blobmsg_add_u64(&b, "total", info.mem_unit * info.totalram);
+	blobmsg_add_u64(&b, "free", info.mem_unit * info.freeram);
+	blobmsg_add_u64(&b, "shared", info.mem_unit * info.sharedram);
 	blobmsg_add_u64(&b, "buffered", info.mem_unit * info.bufferram);
 	blobmsg_close_table(&b, c);
 
 	c = blobmsg_open_table(&b, "swap");
-	blobmsg_add_u64(&b, "total",    info.mem_unit * info.totalswap);
-	blobmsg_add_u64(&b, "free",     info.mem_unit * info.freeswap);
+	blobmsg_add_u64(&b, "total", info.mem_unit * info.totalswap);
+	blobmsg_add_u64(&b, "free", info.mem_unit * info.freeswap);
 	blobmsg_close_table(&b, c);
 #endif
 
@@ -277,13 +259,7 @@ static int system_reboot(struct ubus_context *ctx, struct ubus_object *obj,
 	return 0;
 }
 
-enum {
-	WDT_FREQUENCY,
-	WDT_TIMEOUT,
-	WDT_MAGICCLOSE,
-	WDT_STOP,
-	__WDT_MAX
-};
+enum { WDT_FREQUENCY, WDT_TIMEOUT, WDT_MAGICCLOSE, WDT_STOP, __WDT_MAX };
 
 static const struct blobmsg_policy watchdog_policy[__WDT_MAX] = {
 	[WDT_FREQUENCY] = { .name = "frequency", .type = BLOBMSG_TYPE_INT32 },
@@ -302,10 +278,12 @@ static int watchdog_set(struct ubus_context *ctx, struct ubus_object *obj,
 	if (!msg)
 		return UBUS_STATUS_INVALID_ARGUMENT;
 
-	blobmsg_parse(watchdog_policy, __WDT_MAX, tb, blob_data(msg), blob_len(msg));
+	blobmsg_parse(watchdog_policy, __WDT_MAX, tb, blob_data(msg),
+		      blob_len(msg));
 	if (tb[WDT_FREQUENCY]) {
-		unsigned int timeout = tb[WDT_TIMEOUT] ? blobmsg_get_u32(tb[WDT_TIMEOUT]) :
-						watchdog_timeout(0);
+		unsigned int timeout =
+			tb[WDT_TIMEOUT] ? blobmsg_get_u32(tb[WDT_TIMEOUT]) :
+					  watchdog_timeout(0);
 		unsigned int freq = blobmsg_get_u32(tb[WDT_FREQUENCY]);
 
 		if (freq) {
@@ -321,7 +299,7 @@ static int watchdog_set(struct ubus_context *ctx, struct ubus_object *obj,
 
 		if (timeout <= frequency)
 			timeout = frequency * 2;
-		 watchdog_timeout(timeout);
+		watchdog_timeout(timeout);
 	}
 
 	if (tb[WDT_MAGICCLOSE])
@@ -347,11 +325,7 @@ static int watchdog_set(struct ubus_context *ctx, struct ubus_object *obj,
 	return 0;
 }
 
-enum {
-	SIGNAL_PID,
-	SIGNAL_NUM,
-	__SIGNAL_MAX
-};
+enum { SIGNAL_PID, SIGNAL_NUM, __SIGNAL_MAX };
 
 static const struct blobmsg_policy signal_policy[__SIGNAL_MAX] = {
 	[SIGNAL_PID] = { .name = "pid", .type = BLOBMSG_TYPE_INT32 },
@@ -359,15 +333,16 @@ static const struct blobmsg_policy signal_policy[__SIGNAL_MAX] = {
 };
 
 static int proc_signal(struct ubus_context *ctx, struct ubus_object *obj,
-			struct ubus_request_data *req, const char *method,
-			struct blob_attr *msg)
+		       struct ubus_request_data *req, const char *method,
+		       struct blob_attr *msg)
 {
 	struct blob_attr *tb[__SIGNAL_MAX];
 
 	if (!msg)
 		return UBUS_STATUS_INVALID_ARGUMENT;
 
-	blobmsg_parse(signal_policy, __SIGNAL_MAX, tb, blob_data(msg), blob_len(msg));
+	blobmsg_parse(signal_policy, __SIGNAL_MAX, tb, blob_data(msg),
+		      blob_len(msg));
 	if (!tb[SIGNAL_PID || !tb[SIGNAL_NUM]])
 		return UBUS_STATUS_INVALID_ARGUMENT;
 
@@ -376,17 +351,16 @@ static int proc_signal(struct ubus_context *ctx, struct ubus_object *obj,
 	return 0;
 }
 
-enum {
-	SYSUPGRADE_PATH,
-	SYSUPGRADE_PREFIX,
-	SYSUPGRADE_COMMAND,
-	__SYSUPGRADE_MAX
-};
+enum { SYSUPGRADE_PATH,
+       SYSUPGRADE_PREFIX,
+       SYSUPGRADE_COMMAND,
+       __SYSUPGRADE_MAX };
 
 static const struct blobmsg_policy sysupgrade_policy[__SYSUPGRADE_MAX] = {
 	[SYSUPGRADE_PATH] = { .name = "path", .type = BLOBMSG_TYPE_STRING },
 	[SYSUPGRADE_PREFIX] = { .name = "prefix", .type = BLOBMSG_TYPE_STRING },
-	[SYSUPGRADE_COMMAND] = { .name = "command", .type = BLOBMSG_TYPE_STRING },
+	[SYSUPGRADE_COMMAND] = { .name = "command",
+				 .type = BLOBMSG_TYPE_STRING },
 };
 
 static int sysupgrade(struct ubus_context *ctx, struct ubus_object *obj,
@@ -398,28 +372,32 @@ static int sysupgrade(struct ubus_context *ctx, struct ubus_object *obj,
 	if (!msg)
 		return UBUS_STATUS_INVALID_ARGUMENT;
 
-	blobmsg_parse(sysupgrade_policy, __SYSUPGRADE_MAX, tb, blob_data(msg), blob_len(msg));
+	blobmsg_parse(sysupgrade_policy, __SYSUPGRADE_MAX, tb, blob_data(msg),
+		      blob_len(msg));
 	if (!tb[SYSUPGRADE_PATH] || !tb[SYSUPGRADE_PREFIX])
 		return UBUS_STATUS_INVALID_ARGUMENT;
 
-	sysupgrade_exec_upgraded(blobmsg_get_string(tb[SYSUPGRADE_PREFIX]),
-				 blobmsg_get_string(tb[SYSUPGRADE_PATH]),
-				 tb[SYSUPGRADE_COMMAND] ? blobmsg_get_string(tb[SYSUPGRADE_COMMAND]) : NULL);
+	sysupgrade_exec_upgraded(
+		blobmsg_get_string(tb[SYSUPGRADE_PREFIX]),
+		blobmsg_get_string(tb[SYSUPGRADE_PATH]),
+		tb[SYSUPGRADE_COMMAND] ?
+			blobmsg_get_string(tb[SYSUPGRADE_COMMAND]) :
+			NULL);
 
-	/* sysupgrade_exec_upgraded() will never return unless something has gone wrong */
+	/* sysupgrade_exec_upgraded() will never return unless something has
+	 * gone wrong */
 	return UBUS_STATUS_UNKNOWN_ERROR;
 }
 
-static void
-procd_subscribe_cb(struct ubus_context *ctx, struct ubus_object *obj)
+static void procd_subscribe_cb(struct ubus_context *ctx,
+			       struct ubus_object *obj)
 {
 	notify = obj->has_subscribers;
 }
 
-
 static const struct ubus_method system_methods[] = {
 	UBUS_METHOD_NOARG("board", system_board),
-	UBUS_METHOD_NOARG("info",  system_info),
+	UBUS_METHOD_NOARG("info", system_info),
 	UBUS_METHOD_NOARG("reboot", system_reboot),
 	UBUS_METHOD("watchdog", watchdog_set, watchdog_policy),
 	UBUS_METHOD("signal", proc_signal, signal_policy),
@@ -437,8 +415,7 @@ static struct ubus_object system_object = {
 	.subscribe_cb = procd_subscribe_cb,
 };
 
-void
-procd_bcast_event(char *event, struct blob_attr *msg)
+void procd_bcast_event(char *event, struct blob_attr *msg)
 {
 	int ret;
 
@@ -447,7 +424,8 @@ procd_bcast_event(char *event, struct blob_attr *msg)
 
 	ret = ubus_notify(_ctx, &system_object, event, msg, -1);
 	if (ret)
-		fprintf(stderr, "Failed to notify log: %s\n", ubus_strerror(ret));
+		fprintf(stderr, "Failed to notify log: %s\n",
+			ubus_strerror(ret));
 }
 
 void ubus_init_system(struct ubus_context *ctx)
diff --git a/sysupgrade.c b/sysupgrade.c
index 07e33f7..cc9f9e4 100644
--- a/sysupgrade.c
+++ b/sysupgrade.c
@@ -13,19 +13,17 @@
  * GNU General Public License for more details.
  */
 
-
-#include "watchdog.h"
 #include "sysupgrade.h"
+#include "watchdog.h"
 
 #include <stdio.h>
 #include <stdlib.h>
 #include <unistd.h>
 
-
 void sysupgrade_exec_upgraded(const char *prefix, char *path, char *command)
 {
 	char *wdt_fd = watchdog_fd();
-	char *argv[] = { "/sbin/upgraded", NULL, NULL, NULL};
+	char *argv[] = { "/sbin/upgraded", NULL, NULL, NULL };
 	int ret;
 
 	ret = chroot(prefix);
diff --git a/sysupgrade.h b/sysupgrade.h
index 8c09fc9..2c0dbd3 100644
--- a/sysupgrade.h
+++ b/sysupgrade.h
@@ -14,8 +14,6 @@
 #ifndef __PROCD_SYSUPGRADE_H
 #define __PROCD_SYSUPGRADE_H
 
-
 void sysupgrade_exec_upgraded(const char *prefix, char *path, char *command);
 
-
 #endif
diff --git a/ubus.c b/ubus.c
index 8d521ac..a69c173 100644
--- a/ubus.c
+++ b/ubus.c
@@ -12,10 +12,10 @@
  * GNU General Public License for more details.
  */
 
-#include <sys/resource.h>
+#include <signal.h>
 #include <stdlib.h>
+#include <sys/resource.h>
 #include <unistd.h>
-#include <signal.h>
 
 #include "procd.h"
 
@@ -37,8 +37,7 @@ static void timeout_retry(void)
 		timeout = 1000;
 }
 
-static void
-ubus_reconnect_cb(struct uloop_timeout *timeout)
+static void ubus_reconnect_cb(struct uloop_timeout *timeout)
 {
 	if (!ubus_reconnect(ctx, ubus_socket)) {
 		ubus_add_uloop(ctx);
@@ -48,16 +47,14 @@ ubus_reconnect_cb(struct uloop_timeout *timeout)
 	timeout_retry();
 }
 
-static void
-ubus_disconnect_cb(struct ubus_context *ctx)
+static void ubus_disconnect_cb(struct ubus_context *ctx)
 {
 	ubus_timer.cb = ubus_reconnect_cb;
 	reset_timeout();
 	timeout_retry();
 }
 
-static void
-ubus_connect_cb(struct uloop_timeout *timeout)
+static void ubus_connect_cb(struct uloop_timeout *timeout)
 {
 	ctx = ubus_connect(ubus_socket);
 
@@ -78,8 +75,7 @@ ubus_connect_cb(struct uloop_timeout *timeout)
 	procd_state_ubus_connect();
 }
 
-void
-procd_connect_ubus(void)
+void procd_connect_ubus(void)
 {
 	ubus_timer.cb = ubus_connect_cb;
 	reset_timeout();
diff --git a/watchdog.c b/watchdog.c
index 9d770b4..e5fd555 100644
--- a/watchdog.c
+++ b/watchdog.c
@@ -14,10 +14,10 @@
 
 #include <linux/watchdog.h>
 
+#include <fcntl.h>
 #include <sys/ioctl.h>
-#include <sys/types.h>
 #include <sys/stat.h>
-#include <fcntl.h>
+#include <sys/types.h>
 
 #include <unistd.h>
 
@@ -26,7 +26,7 @@
 #include "procd.h"
 #include "watchdog.h"
 
-#define WDT_PATH	"/dev/watchdog"
+#define WDT_PATH "/dev/watchdog"
 
 static struct uloop_timeout wdt_timeout;
 static int wdt_fd = -1;
@@ -110,8 +110,7 @@ void watchdog_set_stopped(bool val)
 
 		if (wdt_magicclose)
 			watchdog_close();
-	}
-	else {
+	} else {
 		watchdog_open(true);
 		watchdog_set_drv_timeout();
 		watchdog_timeout_cb(&wdt_timeout);
@@ -146,7 +145,7 @@ int watchdog_frequency(int frequency)
 	return wdt_frequency;
 }
 
-char* watchdog_fd(void)
+char *watchdog_fd(void)
 {
 	static char fd_buf[12];
 
@@ -172,7 +171,6 @@ void watchdog_init(int preinit)
 	DEBUG(4, "Opened watchdog with timeout %ds\n", watchdog_timeout(0));
 }
 
-
 void watchdog_set_cloexec(bool val)
 {
 	if (wdt_fd < 0)
@@ -183,5 +181,5 @@ void watchdog_set_cloexec(bool val)
 		flags |= FD_CLOEXEC;
 	else
 		flags &= ~FD_CLOEXEC;
-	fcntl(wdt_fd, F_SETFD,  flags);
+	fcntl(wdt_fd, F_SETFD, flags);
 }
diff --git a/watchdog.h b/watchdog.h
index 73c75d5..09f6be4 100644
--- a/watchdog.h
+++ b/watchdog.h
@@ -19,7 +19,7 @@
 
 #ifndef DISABLE_INIT
 void watchdog_init(int preinit);
-char* watchdog_fd(void);
+char *watchdog_fd(void);
 int watchdog_timeout(int timeout);
 int watchdog_frequency(int frequency);
 void watchdog_set_magicclose(bool val);
@@ -33,7 +33,7 @@ static inline void watchdog_init(int preinit)
 {
 }
 
-static inline char* watchdog_fd(void)
+static inline char *watchdog_fd(void)
 {
 	return "";
 }
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C6A18D6BA
	for <lists+openwrt-devel@lfdr.de>; Fri, 20 Mar 2020 19:21:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8oSMIxP5wp1uNrSafObTz3CS5ppo6EBHGgLkO3v5NV8=; b=XPtWchtVEpHFc8
	qNo3UC0h/Qlx/H4wikgEsWv7Rl+hUIJU502uGJo9byywpwH/9Tvs5QkrXxCOZITVcAKGRjDKWt9Ee
	3/Bkuvb/6qC2qOBhqyKI0R62XgyGjnCZ2WbiP2FGHkVnZKeMYVZsSMTtd4QLXdRa8gwOaBF7L2IYc
	BbgOruIfL/Eo7D1FkqrA+KzUy9g4mzzH2g9sF47VtSyTm2Nwi67qlgscHehb1FGku8qTH3JlszSIT
	plN+Z0h9Bt0OQC1LVSa+ItI7cKDG1PA/TxEtTBAI0mmK1eUbF2jwsSzbShBMUWJWKBOGk32U3Uskq
	e8mn656mKxu8bHtXwgmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFMGn-0006DT-U8; Fri, 20 Mar 2020 18:21:21 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFMGe-0006D1-TB
 for openwrt-devel@lists.openwrt.org; Fri, 20 Mar 2020 18:21:15 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1jFMGa-0000CF-Rm; Fri, 20 Mar 2020 19:21:11 +0100
Date: Fri, 20 Mar 2020 18:20:51 +0000
From: Daniel Golle <daniel@makrotopia.org>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20200320182051.GA582694@makrotopia.org>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_112113_246550_9590F387 
X-CRM114-Status: GOOD (  17.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH/RFC procd 2/3] jail: add support for userns
 and cgroupsns
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: john@phrozen.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Add options to have jailed process inside new user namespace and
cgroups namespace.
Currently only the root user inside the container is mapped.
Also, mounting /proc currently still fails in the new user namespace
with permission denied for unknown reasons.

Signed-off-by: Daniel Golle <daniel@makrotopia.org>
---
 jail/jail.c        | 291 ++++++++++++++++++++++++++++++++++-----------
 service/instance.c |  43 +++++--
 service/instance.h |   4 +-
 3 files changed, 255 insertions(+), 83 deletions(-)

diff --git a/jail/jail.c b/jail/jail.c
index df1bda7..78f0c6b 100644
--- a/jail/jail.c
+++ b/jail/jail.c
@@ -40,15 +40,7 @@
 #include <libubus.h>
 
 #define STACK_SIZE	(1024 * 1024)
-#define OPT_ARGS	"S:C:n:h:r:w:d:psulocU:G:NR:"
-
-#define NAMESPACE_MOUNT		(1U << 0)
-#define NAMESPACE_IPC		(1U << 1)
-#define NAMESPACE_NET		(1U << 2)
-#define NAMESPACE_PID		(1U << 3)
-#define NAMESPACE_USER		(1U << 4)
-#define NAMESPACE_UTS		(1U << 5)
-#define NAMESPACE_CGROUP	(1U << 6)
+#define OPT_ARGS	"S:C:n:h:r:w:d:psulocU:G:NR:fF"
 
 static struct {
 	char *name;
@@ -64,8 +56,12 @@ static struct {
 	int procfs;
 	int ronly;
 	int sysfs;
+	int pw_uid;
+	int pw_gid;
+	int gr_gid;
 } opts;
 
+
 extern int pivot_root(const char *new_root, const char *put_old);
 
 int debug = 0;
@@ -166,7 +162,7 @@ static int build_jail_fs(void)
 	}
 
 	if (opts.extroot) {
-		if (mount(opts.extroot, jail_root, NULL, MS_BIND | MS_REC, NULL)) {
+		if (mount(opts.extroot, jail_root, NULL, MS_BIND, NULL)) {
 			ERROR("extroot mount failed %m\n");
 			return -1;
 		}
@@ -187,7 +183,7 @@ static int build_jail_fs(void)
 		return -1;
 	}
 
-	if (opts.namespace & NAMESPACE_NET) {
+	if (opts.namespace & CLONE_NEWNET) {
 		char hostdir[PATH_MAX], jailetc[PATH_MAX], jaillink[PATH_MAX];
 
 		snprintf(hostdir, PATH_MAX, "/tmp/resolv.conf-%s.d", opts.name);
@@ -231,6 +227,99 @@ static int build_jail_fs(void)
 	return 0;
 }
 
+static int write_uid_gid_map(pid_t child_pid, bool gidmap, int id)
+{
+	int map_file;
+	char map_path[64];
+	const char *map_format = "%d %d %d\n";
+	if (snprintf(map_path, sizeof(map_path), "/proc/%d/%s",
+		child_pid, gidmap?"gid_map":"uid_map") < 0)
+		return -1;
+
+	if ((map_file = open(map_path, O_WRONLY)) == -1)
+		return -1;
+
+	if (dprintf(map_file, map_format, 0, id, 1) == -1) {
+		close(map_file);
+		return -1;
+	}
+
+	close(map_file);
+	return 0;
+}
+
+static int write_setgroups(pid_t child_pid, bool allow)
+{
+	int setgroups_file;
+	char setgroups_path[64];
+
+	if (snprintf(setgroups_path, sizeof(setgroups_path), "/proc/%d/setgroups",
+		child_pid) < 0) {
+		return -1;
+	}
+
+	if ((setgroups_file = open(setgroups_path, O_WRONLY)) == -1) {
+		return -1;
+	}
+
+	if (dprintf(setgroups_file, allow?"allow":"deny") == -1) {
+		close(setgroups_file);
+		return -1;
+	}
+
+	close(setgroups_file);
+	return 0;
+}
+
+static void get_jail_user(int *user, int *user_gid, int *gr_gid)
+{
+	struct passwd *p = NULL;
+	struct group *g = NULL;
+
+	if (opts.user) {
+		p = getpwnam(opts.user);
+		if (!p) {
+			ERROR("failed to get uid/gid for user %s: %d (%s)\n",
+			      opts.user, errno, strerror(errno));
+			exit(EXIT_FAILURE);
+		}
+		*user = p->pw_uid;
+		*user_gid = p->pw_gid;
+	} else {
+		*user = -1;
+		*user_gid = -1;
+	}
+
+	if (opts.group) {
+		g = getgrnam(opts.group);
+		if (!g) {
+			ERROR("failed to get gid for group %s: %m\n", opts.group);
+			exit(EXIT_FAILURE);
+		}
+		*gr_gid = g->gr_gid;
+	} else {
+		*gr_gid = -1;
+	}
+};
+
+static void set_jail_user(int pw_uid, int user_gid, int gr_gid)
+{
+	if ((user_gid != -1) && initgroups(opts.user, user_gid)) {
+		ERROR("failed to initgroups() for user %s: %m\n", opts.user);
+		exit(EXIT_FAILURE);
+	}
+
+	if ((gr_gid != -1) && setregid(gr_gid, gr_gid)) {
+		ERROR("failed to set group id %d: %m\n", gr_gid);
+		exit(EXIT_FAILURE);
+	}
+
+	if ((pw_uid != -1) && setreuid(pw_uid, pw_uid)) {
+		ERROR("failed to set user id %d: %m\n", pw_uid);
+		exit(EXIT_FAILURE);
+	}
+}
+
 #define MAX_ENVP	8
 static char** build_envp(const char *seccomp)
 {
@@ -253,8 +342,7 @@ static char** build_envp(const char *seccomp)
 		envp[count++] = preload_var;
 	}
 
-	if (is_extroot)
-		envp[count++] = container_var;
+	envp[count++] = container_var;
 
 	if (debug > 1)
 		envp[count++] = debug_var;
@@ -292,62 +380,71 @@ ujail will not use namespace/build a jail,\n\
 and will only drop capabilities/apply seccomp filter.\n\n");
 }
 
-static int exec_jail(void *_notused)
+static int exec_jail(void *pipes_ptr)
 {
-	struct passwd *p = NULL;
-	struct group *g = NULL;
+	int *pipes = (int*)pipes_ptr;
+	char buf[1];
+	int pw_uid, pw_gid, gr_gid;
 
-	if (opts.capabilities && drop_capabilities(opts.capabilities))
-		exit(EXIT_FAILURE);
+	close(pipes[0]);
+	close(pipes[3]);
 
-	if (opts.no_new_privs && prctl(PR_SET_NO_NEW_PRIVS, 1, 0, 0, 0)) {
-                ERROR("prctl(PR_SET_NO_NEW_PRIVS) failed: %m\n");
+
+	buf[0] = 'i';
+	if (write(pipes[1], buf, 1) < 1) {
+		ERROR("can't write to parent\n");
 		exit(EXIT_FAILURE);
 	}
-
-	if (opts.namespace && opts.hostname && strlen(opts.hostname) > 0
-			&& sethostname(opts.hostname, strlen(opts.hostname))) {
-		ERROR("sethostname(%s) failed: %m\n", opts.hostname);
+	if (read(pipes[2], buf, 1) < 1) {
+		ERROR("can't read from parent\n");
 		exit(EXIT_FAILURE);
 	}
-
-	if (opts.namespace && build_jail_fs()) {
-		ERROR("failed to build jail fs\n");
+	if (buf[0] != 'O') {
+		ERROR("parent had an error, child exiting\n");
 		exit(EXIT_FAILURE);
 	}
 
-	if (opts.user) {
-		p = getpwnam(opts.user);
-		if (!p) {
-			ERROR("failed to get uid/gid for user %s: %d (%s)\n",
-			      opts.user, errno, strerror(errno));
+	close(pipes[1]);
+	close(pipes[2]);
+
+	if (opts.namespace & CLONE_NEWUSER) {
+		if (setgid(0) < 0) {
+			ERROR("setgid\n");
 			exit(EXIT_FAILURE);
 		}
-	}
-
-	if (opts.group) {
-		g = getgrnam(opts.group);
-		if (!g) {
-			ERROR("failed to get gid for group %s: %m\n", opts.group);
+		if (setuid(0) < 0) {
+			ERROR("setuid\n");
 			exit(EXIT_FAILURE);
 		}
+//		if (setgroups(0, NULL) < 0) {
+//			ERROR("setgroups\n");
+//			exit(EXIT_FAILURE);
+//		}
 	}
 
-	if (p && p->pw_gid && initgroups(opts.user, p->pw_gid)) {
-		ERROR("failed to initgroups() for user %s: %m\n", opts.user);
+	if (opts.namespace && opts.hostname && strlen(opts.hostname) > 0
+			&& sethostname(opts.hostname, strlen(opts.hostname))) {
+		ERROR("sethostname(%s) failed: %m\n", opts.hostname);
 		exit(EXIT_FAILURE);
 	}
 
-	if (g && g->gr_gid && setgid(g->gr_gid)) {
-		ERROR("failed to set group id %d: %m\n", g?g->gr_gid:p->pw_gid);
+	if (opts.namespace && build_jail_fs()) {
+		ERROR("failed to build jail fs\n");
 		exit(EXIT_FAILURE);
 	}
 
-	if (p && p->pw_uid && setuid(p->pw_uid)) {
-		ERROR("failed to set user id %d: %m\n", p->pw_uid);
+	if (opts.capabilities && drop_capabilities(opts.capabilities))
+		exit(EXIT_FAILURE);
+
+	if (opts.no_new_privs && prctl(PR_SET_NO_NEW_PRIVS, 1, 0, 0, 0)) {
+                ERROR("prctl(PR_SET_NO_NEW_PRIVS) failed: %m\n");
 		exit(EXIT_FAILURE);
 	}
 
+	if (!(opts.namespace & CLONE_NEWUSER)) {
+		get_jail_user(&pw_uid, &pw_gid, &gr_gid);
+		set_jail_user(pw_uid, pw_gid, gr_gid);
+	}
 
 	char **envp = build_envp(opts.seccomp);
 	if (!envp)
@@ -398,12 +495,20 @@ static void jail_handle_signal(int signo)
 	kill(jail_process.pid, signo);
 }
 
-static void netns_updown(bool start)
+static int netns_open_pid(const pid_t target_ns)
+{
+	char pid_net_path[PATH_MAX];
+
+	snprintf(pid_net_path, sizeof(pid_net_path), "/proc/%u/ns/net", target_ns);
+
+	return open(pid_net_path, O_RDONLY);
+}
+
+static void netns_updown(pid_t pid, bool start)
 {
 	struct ubus_context *ctx = ubus_connect(NULL);
 	static struct blob_buf req;
 	uint32_t id;
-	pid_t pid = getpid();
 
 	if (!ctx)
 		return;
@@ -428,6 +533,9 @@ int main(int argc, char **argv)
 	char log[] = "/dev/log";
 	char ubus[] = "/var/run/ubus.sock";
 	int ch, i;
+	int pipes[4];
+	char sig_buf[1];
+	int netns_fd;
 
 	if (uid) {
 		ERROR("not root, aborting: %m\n");
@@ -444,19 +552,24 @@ int main(int argc, char **argv)
 			debug = atoi(optarg);
 			break;
 		case 'p':
-			opts.namespace |= NAMESPACE_MOUNT;
+			opts.namespace |= CLONE_NEWNS;
 			opts.procfs = 1;
 			break;
 		case 'o':
-			opts.namespace |= NAMESPACE_MOUNT;
+			opts.namespace |= CLONE_NEWNS;
 			opts.ronly = 1;
 			break;
+		case 'f':
+			opts.namespace |= CLONE_NEWUSER;
+			break;
+		case 'F':
+			opts.namespace |= CLONE_NEWCGROUP;
+			break;
 		case 'R':
-			opts.namespace |= NAMESPACE_MOUNT | NAMESPACE_UTS;
 			opts.extroot = optarg;
 			break;
 		case 's':
-			opts.namespace |= NAMESPACE_MOUNT;
+			opts.namespace |= CLONE_NEWNS;
 			opts.sysfs = 1;
 			break;
 		case 'S':
@@ -473,25 +586,26 @@ int main(int argc, char **argv)
 			opts.name = optarg;
 			break;
 		case 'N':
-			opts.namespace |= NAMESPACE_NET;
+			opts.namespace |= CLONE_NEWNET;
 			break;
 		case 'h':
+			opts.namespace |= CLONE_NEWUTS;
 			opts.hostname = optarg;
 			break;
 		case 'r':
-			opts.namespace |= NAMESPACE_MOUNT;
+			opts.namespace |= CLONE_NEWNS;
 			add_path_and_deps(optarg, 1, 0, 0);
 			break;
 		case 'w':
-			opts.namespace |= NAMESPACE_MOUNT;
+			opts.namespace |= CLONE_NEWNS;
 			add_path_and_deps(optarg, 0, 0, 0);
 			break;
 		case 'u':
-			opts.namespace |= NAMESPACE_MOUNT;
+			opts.namespace |= CLONE_NEWNS;
 			add_mount(ubus, 0, -1);
 			break;
 		case 'l':
-			opts.namespace |= NAMESPACE_MOUNT;
+			opts.namespace |= CLONE_NEWNS;
 			add_mount(log, 0, -1);
 			break;
 		case 'U':
@@ -503,6 +617,9 @@ int main(int argc, char **argv)
 		}
 	}
 
+	if (opts.namespace)
+		opts.namespace |= CLONE_NEWIPC | CLONE_NEWPID;
+
 	/* no <binary> param found */
 	if (argc - optind < 1) {
 		usage();
@@ -513,13 +630,15 @@ int main(int argc, char **argv)
 		usage();
 		return EXIT_FAILURE;
 	}
-	DEBUG("Using namespaces(%d), capabilities(%d), seccomp(%d)\n",
+	DEBUG("Using namespaces(0x%08x), capabilities(%d), seccomp(%d)\n",
 		opts.namespace,
 		opts.capabilities != 0,
 		opts.seccomp != 0);
 
 	opts.jail_argv = &argv[optind];
 
+	get_jail_user(&opts.pw_uid, &opts.pw_gid, &opts.gr_gid);
+
 	if (!opts.extroot) {
 		if (opts.namespace && add_path_and_deps(*opts.jail_argv, 1, -1, 0)) {
 			ERROR("failed to load dependencies\n");
@@ -551,10 +670,7 @@ int main(int argc, char **argv)
 	}
 
 	if (opts.namespace) {
-		int flags = SIGCHLD | CLONE_NEWPID | CLONE_NEWIPC;
-
-		if (opts.namespace & NAMESPACE_MOUNT) {
-			flags |= CLONE_NEWNS;
+		if (opts.namespace & CLONE_NEWNS) {
 			add_mount("/dev/full", 0, -1);
 			add_mount("/dev/null", 0, -1);
 			add_mount("/dev/random", 0, -1);
@@ -563,7 +679,7 @@ int main(int argc, char **argv)
 			add_mount("/dev/zero", 0, -1);
 			add_mount("/dev/console", 0, -1);
 
-			if (opts.user || opts.group) {
+			if (!opts.extroot && (opts.user || opts.group)) {
 				add_mount("/etc/passwd", 0, -1);
 				add_mount("/etc/group", 0, -1);
 			}
@@ -573,21 +689,50 @@ int main(int argc, char **argv)
 			}
 		}
 
-		if (opts.hostname)
-			flags |= CLONE_NEWUTS;
-
-		if (opts.namespace & NAMESPACE_NET) {
-			unshare(CLONE_NEWNET);
-			netns_updown(true);
-		};
+		if (pipe(&pipes[0]) < 0 || pipe(&pipes[2]) < 0)
+			return -1;
 
-		jail_process.pid = clone(exec_jail, child_stack + STACK_SIZE, flags, NULL);
+		jail_process.pid = clone(exec_jail, child_stack + STACK_SIZE, SIGCHLD | opts.namespace, &pipes);
 	} else {
 		jail_process.pid = fork();
 	}
 
 	if (jail_process.pid > 0) {
+		seteuid(0);
 		/* parent process */
+		close(pipes[1]);
+		close(pipes[2]);
+		if (read(pipes[0], sig_buf, 1) < 1) {
+			ERROR("can't read from child\n");
+			return -1;
+		}
+		close(pipes[0]);
+		if (opts.namespace & CLONE_NEWUSER) {
+			bool has_gr = (opts.gr_gid != -1);
+			if (write_setgroups(jail_process.pid, false)) {
+				ERROR("can't write setgroups\n");
+				return -1;
+			}
+			if (opts.pw_uid != -1) {
+				write_uid_gid_map(jail_process.pid, 0, opts.pw_uid);
+				write_uid_gid_map(jail_process.pid, 1, has_gr?opts.gr_gid:opts.pw_gid);
+			} else {
+				write_uid_gid_map(jail_process.pid, 0, 65534);
+				write_uid_gid_map(jail_process.pid, 1, has_gr?opts.gr_gid:65534);
+			}
+		}
+
+		if (opts.namespace & CLONE_NEWNET) {
+			netns_fd = netns_open_pid(jail_process.pid);
+			netns_updown(jail_process.pid, true);
+		}
+
+		sig_buf[0] = 'O';
+		if (write(pipes[3], sig_buf, 1) < 0) {
+			ERROR("can't write to child\n");
+			return -1;
+		}
+		close(pipes[3]);
 		uloop_process_add(&jail_process);
 		uloop_run();
 		if (jail_running) {
@@ -597,9 +742,11 @@ int main(int argc, char **argv)
 			uloop_run();
 		}
 		uloop_done();
-		if (opts.namespace & NAMESPACE_NET)
-			netns_updown(false);
-
+		if (opts.namespace & CLONE_NEWNET) {
+			setns(netns_fd, CLONE_NEWNET);
+			netns_updown(getpid(), false);
+			close(netns_fd);
+		}
 		return jail_return_code;
 	} else if (jail_process.pid == 0) {
 		/* fork child process */
diff --git a/service/instance.c b/service/instance.c
index 47b7d09..d29aa0d 100644
--- a/service/instance.c
+++ b/service/instance.c
@@ -62,6 +62,7 @@ enum {
 	INSTANCE_ATTR_RELOADSIG,
 	INSTANCE_ATTR_TERMTIMEOUT,
 	INSTANCE_ATTR_FACILITY,
+	INSTANCE_ATTR_EXTROOT,
 	__INSTANCE_ATTR_MAX
 };
 
@@ -89,6 +90,7 @@ static const struct blobmsg_policy instance_attr[__INSTANCE_ATTR_MAX] = {
 	[INSTANCE_ATTR_RELOADSIG] = { "reload_signal", BLOBMSG_TYPE_INT32 },
 	[INSTANCE_ATTR_TERMTIMEOUT] = { "term_timeout", BLOBMSG_TYPE_INT32 },
 	[INSTANCE_ATTR_FACILITY] = { "facility", BLOBMSG_TYPE_STRING },
+	[INSTANCE_ATTR_EXTROOT] = { "extroot", BLOBMSG_TYPE_STRING },
 };
 
 enum {
@@ -101,8 +103,9 @@ enum {
 	JAIL_ATTR_RONLY,
 	JAIL_ATTR_MOUNT,
 	JAIL_ATTR_NETNS,
+	JAIL_ATTR_USERNS,
+	JAIL_ATTR_CGROUPSNS,
 	JAIL_ATTR_REQUIREJAIL,
-	JAIL_ATTR_EXTROOT,
 	__JAIL_ATTR_MAX,
 };
 
@@ -116,8 +119,9 @@ static const struct blobmsg_policy jail_attr[__JAIL_ATTR_MAX] = {
 	[JAIL_ATTR_RONLY] = { "ronly", BLOBMSG_TYPE_BOOL },
 	[JAIL_ATTR_MOUNT] = { "mount", BLOBMSG_TYPE_TABLE },
 	[JAIL_ATTR_NETNS] = { "netns", BLOBMSG_TYPE_BOOL },
+	[JAIL_ATTR_USERNS] = { "userns", BLOBMSG_TYPE_BOOL },
+	[JAIL_ATTR_CGROUPSNS] = { "cgroupsns", BLOBMSG_TYPE_BOOL },
 	[JAIL_ATTR_REQUIREJAIL] = { "requirejail", BLOBMSG_TYPE_BOOL },
-	[JAIL_ATTR_EXTROOT] = { "extroot", BLOBMSG_TYPE_STRING },
 };
 
 struct instance_netdev {
@@ -260,9 +264,15 @@ jail_run(struct service_instance *in, char **argv)
 	if (jail->netns)
 		argv[argc++] = "-N";
 
-	if (jail->extroot) {
+	if (jail->userns)
+		argv[argc++] = "-f";
+
+	if (jail->cgroupsns)
+		argv[argc++] = "-F";
+
+	if (in->extroot) {
 		argv[argc++] = "-R";
-		argv[argc++] = jail->extroot;
+		argv[argc++] = in->extroot;
 	}
 
 	blobmsg_list_for_each(&jail->mount, var) {
@@ -870,9 +880,13 @@ instance_jail_parse(struct service_instance *in, struct blob_attr *attr)
 		jail->netns = blobmsg_get_bool(tb[JAIL_ATTR_NETNS]);
 		jail->argc++;
 	}
-	if (tb[JAIL_ATTR_EXTROOT]) {
-		jail->extroot = strdup(blobmsg_get_string(tb[JAIL_ATTR_EXTROOT]));
-		jail->argc += 2;
+	if (tb[JAIL_ATTR_USERNS]) {
+		jail->userns = blobmsg_get_bool(tb[JAIL_ATTR_USERNS]);
+		jail->argc++;
+	}
+	if (tb[JAIL_ATTR_CGROUPSNS]) {
+		jail->cgroupsns = blobmsg_get_bool(tb[JAIL_ATTR_CGROUPSNS]);
+		jail->argc++;
 	}
 
 	if (tb[JAIL_ATTR_MOUNT]) {
@@ -892,6 +906,10 @@ instance_jail_parse(struct service_instance *in, struct blob_attr *attr)
 	if (in->group)
 		jail->argc += 2;
 
+	if (in->extroot) {
+		jail->argc += 2;
+	}
+
 	if (in->no_new_privs)
 		jail->argc++;
 
@@ -1003,6 +1021,9 @@ instance_config_parse(struct service_instance *in)
 	if (!in->trace && tb[INSTANCE_ATTR_SECCOMP])
 		in->seccomp = strdup(blobmsg_get_string(tb[INSTANCE_ATTR_SECCOMP]));
 
+	if (tb[INSTANCE_ATTR_EXTROOT])
+		in->extroot = strdup(blobmsg_get_string(tb[INSTANCE_ATTR_EXTROOT]));
+
 	if (tb[INSTANCE_ATTR_PIDFILE]) {
 		char *pidfile = blobmsg_get_string(tb[INSTANCE_ATTR_PIDFILE]);
 		if (pidfile)
@@ -1151,7 +1172,7 @@ instance_free(struct service_instance *in)
 	free(in->config);
 	free(in->user);
 	free(in->group);
-	free(in->jail.extroot);
+	free(in->extroot);
 	free(in->jail.name);
 	free(in->jail.hostname);
 	free(in->seccomp);
@@ -1275,14 +1296,16 @@ void instance_dump(struct blob_buf *b, struct service_instance *in, int verbose)
 			blobmsg_add_string(b, "name", in->jail.name);
 		if (in->jail.hostname)
 			blobmsg_add_string(b, "hostname", in->jail.hostname);
-		if (in->jail.extroot)
-			blobmsg_add_string(b, "extroot", in->jail.extroot);
+		if (in->extroot)
+			blobmsg_add_string(b, "extroot", in->extroot);
 		blobmsg_add_u8(b, "procfs", in->jail.procfs);
 		blobmsg_add_u8(b, "sysfs", in->jail.sysfs);
 		blobmsg_add_u8(b, "ubus", in->jail.ubus);
 		blobmsg_add_u8(b, "log", in->jail.log);
 		blobmsg_add_u8(b, "ronly", in->jail.ronly);
 		blobmsg_add_u8(b, "netns", in->jail.netns);
+		blobmsg_add_u8(b, "userns", in->jail.userns);
+		blobmsg_add_u8(b, "cgroupsns", in->jail.cgroupsns);
 		blobmsg_close_table(b, r);
 		if (!avl_is_empty(&in->jail.mount.avl)) {
 			struct blobmsg_list_node *var;
diff --git a/service/instance.h b/service/instance.h
index 29406c9..7e80c61 100644
--- a/service/instance.h
+++ b/service/instance.h
@@ -30,9 +30,10 @@ struct jail {
 	bool log;
 	bool ronly;
 	bool netns;
+	bool userns;
+	bool cgroupsns;
 	char *name;
 	char *hostname;
-	char *extroot;
 	struct blobmsg_list mount;
 	int argc;
 };
@@ -65,6 +66,7 @@ struct service_instance {
 	struct jail jail;
 	char *seccomp;
 	char *pidfile;
+	char *extroot;
 	int syslog_facility;
 	int exit_code;
 
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

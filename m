Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6FCB18D6B5
	for <lists+openwrt-devel@lfdr.de>; Fri, 20 Mar 2020 19:20:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=O47gQv3b/emI1El0T9+MIkGVADNl054IyjXVvciUkDo=; b=nDZUkF4L9pUISJ
	YF83osDr4hcF8Cp5GGIw/vRRl1dfT/1qOUDU+M4HwgJO3KfQyXPQjkQebvjlQMao6RyqauI0WtpN/
	BIB1xV6es5YpnnTp0WkfDMn2wtMyLz/umjvGZI/KgIYOpAUKcYzAAIXqCv5AOO6dd0Hc1I+neo9HJ
	9H5EaOzVZC0e2VGYC24lJ29ZEys8aYG8MDL6ydyCEVsH7v3x3Y5NwTXz6Mi66qaZXQQJV4leRqNmo
	GjVjxYz+T0/YxUy/5lgY60c1zO8PLEwS1eBON5kmIH2kDlHf/I+sRQGroPTE/BIcv42c8KOhHA8mI
	fJx+nzUwhPqcSSC2Pyrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFMFv-0004YJ-6v; Fri, 20 Mar 2020 18:20:27 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFMFj-0004XD-Cp
 for openwrt-devel@lists.openwrt.org; Fri, 20 Mar 2020 18:20:17 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1jFMFf-0000B3-Oe; Fri, 20 Mar 2020 19:20:12 +0100
Date: Fri, 20 Mar 2020 18:19:53 +0000
From: Daniel Golle <daniel@makrotopia.org>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20200320181953.GA582683@makrotopia.org>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_112015_437386_786D9BD4 
X-CRM114-Status: GOOD (  13.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH/RFC procd 1/3] jail: add support for
 launching extroot containers
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

Add option to ujail to use an existing rootfs when launching a
containerized service. Later on this option will also be used to
launch full-system containers.

Signed-off-by: Daniel Golle <daniel@makrotopia.org>
---
 jail/jail.c        | 45 ++++++++++++++++++++++++++++++++++-----------
 service/instance.c | 15 +++++++++++++++
 service/instance.h |  1 +
 3 files changed, 50 insertions(+), 11 deletions(-)

diff --git a/jail/jail.c b/jail/jail.c
index 5414519..df1bda7 100644
--- a/jail/jail.c
+++ b/jail/jail.c
@@ -40,7 +40,7 @@
 #include <libubus.h>
 
 #define STACK_SIZE	(1024 * 1024)
-#define OPT_ARGS	"S:C:n:h:r:w:d:psulocU:G:N"
+#define OPT_ARGS	"S:C:n:h:r:w:d:psulocU:G:NR:"
 
 #define NAMESPACE_MOUNT		(1U << 0)
 #define NAMESPACE_IPC		(1U << 1)
@@ -58,6 +58,7 @@ static struct {
 	char *capabilities;
 	char *user;
 	char *group;
+	char *extroot;
 	int no_new_privs;
 	int namespace;
 	int procfs;
@@ -164,9 +165,16 @@ static int build_jail_fs(void)
 		return -1;
 	}
 
-	if (mount("tmpfs", jail_root, "tmpfs", MS_NOATIME, "mode=0755")) {
-		ERROR("tmpfs mount failed %m\n");
-		return -1;
+	if (opts.extroot) {
+		if (mount(opts.extroot, jail_root, NULL, MS_BIND | MS_REC, NULL)) {
+			ERROR("extroot mount failed %m\n");
+			return -1;
+		}
+	} else {
+		if (mount("tmpfs", jail_root, "tmpfs", MS_NOATIME, "mode=0755")) {
+			ERROR("tmpfs mount failed %m\n");
+			return -1;
+		}
 	}
 
 	if (chdir(jail_root)) {
@@ -230,6 +238,7 @@ static char** build_envp(const char *seccomp)
 	static char preload_var[PATH_MAX];
 	static char seccomp_var[PATH_MAX];
 	static char debug_var[] = "LD_DEBUG=all";
+	static char container_var[] = "container=ujail";
 	const char *preload_lib = find_lib("libpreload-seccomp.so");
 	int count = 0;
 
@@ -243,6 +252,10 @@ static char** build_envp(const char *seccomp)
 		snprintf(preload_var, sizeof(preload_var), "LD_PRELOAD=%s", preload_lib);
 		envp[count++] = preload_var;
 	}
+
+	if (is_extroot)
+		envp[count++] = container_var;
+
 	if (debug > 1)
 		envp[count++] = debug_var;
 
@@ -269,6 +282,7 @@ static void usage(void)
 	fprintf(stderr, "  -U <name>\tuser to run jailed process\n");
 	fprintf(stderr, "  -G <name>\tgroup to run jailed process\n");
 	fprintf(stderr, "  -o\t\tremont jail root (/) read only\n");
+	fprintf(stderr, "  -R <dir>\texternal jail rootfs (system container)\n");
 	fprintf(stderr, "\nWarning: by default root inside the jail is the same\n\
 and he has the same powers as root outside the jail,\n\
 thus he can escape the jail and/or break stuff.\n\
@@ -437,6 +451,10 @@ int main(int argc, char **argv)
 			opts.namespace |= NAMESPACE_MOUNT;
 			opts.ronly = 1;
 			break;
+		case 'R':
+			opts.namespace |= NAMESPACE_MOUNT | NAMESPACE_UTS;
+			opts.extroot = optarg;
+			break;
 		case 's':
 			opts.namespace |= NAMESPACE_MOUNT;
 			opts.sysfs = 1;
@@ -502,14 +520,16 @@ int main(int argc, char **argv)
 
 	opts.jail_argv = &argv[optind];
 
-	if (opts.namespace && add_path_and_deps(*opts.jail_argv, 1, -1, 0)) {
-		ERROR("failed to load dependencies\n");
-		return -1;
-	}
+	if (!opts.extroot) {
+		if (opts.namespace && add_path_and_deps(*opts.jail_argv, 1, -1, 0)) {
+			ERROR("failed to load dependencies\n");
+			return -1;
+		}
 
-	if (opts.namespace && opts.seccomp && add_path_and_deps("libpreload-seccomp.so", 1, -1, 1)) {
-		ERROR("failed to load libpreload-seccomp.so\n");
-		return -1;
+		if (opts.namespace && opts.seccomp && add_path_and_deps("libpreload-seccomp.so", 1, -1, 1)) {
+			ERROR("failed to load libpreload-seccomp.so\n");
+			return -1;
+		}
 	}
 
 	if (opts.name)
@@ -537,8 +557,11 @@ int main(int argc, char **argv)
 			flags |= CLONE_NEWNS;
 			add_mount("/dev/full", 0, -1);
 			add_mount("/dev/null", 0, -1);
+			add_mount("/dev/random", 0, -1);
 			add_mount("/dev/urandom", 0, -1);
+			add_mount("/dev/tty", 0, -1);
 			add_mount("/dev/zero", 0, -1);
+			add_mount("/dev/console", 0, -1);
 
 			if (opts.user || opts.group) {
 				add_mount("/etc/passwd", 0, -1);
diff --git a/service/instance.c b/service/instance.c
index ffaaaa1..47b7d09 100644
--- a/service/instance.c
+++ b/service/instance.c
@@ -102,6 +102,7 @@ enum {
 	JAIL_ATTR_MOUNT,
 	JAIL_ATTR_NETNS,
 	JAIL_ATTR_REQUIREJAIL,
+	JAIL_ATTR_EXTROOT,
 	__JAIL_ATTR_MAX,
 };
 
@@ -116,6 +117,7 @@ static const struct blobmsg_policy jail_attr[__JAIL_ATTR_MAX] = {
 	[JAIL_ATTR_MOUNT] = { "mount", BLOBMSG_TYPE_TABLE },
 	[JAIL_ATTR_NETNS] = { "netns", BLOBMSG_TYPE_BOOL },
 	[JAIL_ATTR_REQUIREJAIL] = { "requirejail", BLOBMSG_TYPE_BOOL },
+	[JAIL_ATTR_EXTROOT] = { "extroot", BLOBMSG_TYPE_STRING },
 };
 
 struct instance_netdev {
@@ -258,6 +260,11 @@ jail_run(struct service_instance *in, char **argv)
 	if (jail->netns)
 		argv[argc++] = "-N";
 
+	if (jail->extroot) {
+		argv[argc++] = "-R";
+		argv[argc++] = jail->extroot;
+	}
+
 	blobmsg_list_for_each(&jail->mount, var) {
 		const char *type = blobmsg_data(var->data);
 
@@ -863,6 +870,11 @@ instance_jail_parse(struct service_instance *in, struct blob_attr *attr)
 		jail->netns = blobmsg_get_bool(tb[JAIL_ATTR_NETNS]);
 		jail->argc++;
 	}
+	if (tb[JAIL_ATTR_EXTROOT]) {
+		jail->extroot = strdup(blobmsg_get_string(tb[JAIL_ATTR_EXTROOT]));
+		jail->argc += 2;
+	}
+
 	if (tb[JAIL_ATTR_MOUNT]) {
 		struct blob_attr *cur;
 		int rem;
@@ -1139,6 +1151,7 @@ instance_free(struct service_instance *in)
 	free(in->config);
 	free(in->user);
 	free(in->group);
+	free(in->jail.extroot);
 	free(in->jail.name);
 	free(in->jail.hostname);
 	free(in->seccomp);
@@ -1262,6 +1275,8 @@ void instance_dump(struct blob_buf *b, struct service_instance *in, int verbose)
 			blobmsg_add_string(b, "name", in->jail.name);
 		if (in->jail.hostname)
 			blobmsg_add_string(b, "hostname", in->jail.hostname);
+		if (in->jail.extroot)
+			blobmsg_add_string(b, "extroot", in->jail.extroot);
 		blobmsg_add_u8(b, "procfs", in->jail.procfs);
 		blobmsg_add_u8(b, "sysfs", in->jail.sysfs);
 		blobmsg_add_u8(b, "ubus", in->jail.ubus);
diff --git a/service/instance.h b/service/instance.h
index 003a8c9..29406c9 100644
--- a/service/instance.h
+++ b/service/instance.h
@@ -32,6 +32,7 @@ struct jail {
 	bool netns;
 	char *name;
 	char *hostname;
+	char *extroot;
 	struct blobmsg_list mount;
 	int argc;
 };
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

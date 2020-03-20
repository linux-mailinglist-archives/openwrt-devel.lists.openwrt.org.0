Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF2718D6BE
	for <lists+openwrt-devel@lfdr.de>; Fri, 20 Mar 2020 19:22:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pzflXWKIvHCqPzaE4uW67mTJrSKDsWJ65JcZDGCwORo=; b=o/10PTzQTtizCc
	xqP8ioXe/SqYySZMCP5MLuKbbNKM3cglvczzArpJfe2wx6WpEHSArWncngRowDAce8e3TvxvZk+SM
	CiRKyzRXxcqWCea2Sa0T3OrqFhOFvc5bMmLK/GSksNVvXXha5J3appmWNG3tw6VFxgIfILTRpY/6k
	GdRXPnTZ4/o0ePU3QmfubiurAYHW+Q5vy9vv0ALovBpWAlYvTdc7eX63N2ASQAlEaqgyZ56PgjyUQ
	/1XrX996GhSoUPYSm6W3WQyY74JABL+6NT1uHO1juFP+H06y/3PAW34gTYPqSNkFIKwxsksVrW9JM
	suF+KNEfgHmIOkUACEyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFMHe-0006Yb-2I; Fri, 20 Mar 2020 18:22:14 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFMHV-0006Y4-Px
 for openwrt-devel@lists.openwrt.org; Fri, 20 Mar 2020 18:22:07 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1jFMHU-0000Cy-1I; Fri, 20 Mar 2020 19:22:04 +0100
Date: Fri, 20 Mar 2020 18:21:43 +0000
From: Daniel Golle <daniel@makrotopia.org>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20200320182143.GA582704@makrotopia.org>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_112206_002260_33C095BD 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH/RFC procd 3/3] jail: add support for
 (ram-)overlayfs
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

Add support for running service with a read/write filesystem overlay.
This can either be a user-defined directory for persistency or reside
on a tmpfs with fixed size in the RAM.

Signed-off-by: Daniel Golle <daniel@makrotopia.org>
---
 jail/jail.c        | 95 +++++++++++++++++++++++++++++++++++++++++++---
 service/instance.c | 36 +++++++++++++++++-
 service/instance.h |  2 +
 3 files changed, 126 insertions(+), 7 deletions(-)

diff --git a/jail/jail.c b/jail/jail.c
index 78f0c6b..ec106d2 100644
--- a/jail/jail.c
+++ b/jail/jail.c
@@ -40,7 +40,7 @@
 #include <libubus.h>
 
 #define STACK_SIZE	(1024 * 1024)
-#define OPT_ARGS	"S:C:n:h:r:w:d:psulocU:G:NR:fF"
+#define OPT_ARGS	"S:C:n:h:r:w:d:psulocU:G:NR:fFO:T:"
 
 static struct {
 	char *name;
@@ -51,6 +51,8 @@ static struct {
 	char *user;
 	char *group;
 	char *extroot;
+	char *overlaydir;
+	char *tmpoverlaysize;
 	int no_new_privs;
 	int namespace;
 	int procfs;
@@ -147,9 +149,46 @@ int mount_bind(const char *root, const char *path, int readonly, int error) {
 	return _mount_bind(root, path, NULL, readonly, 0, error);
 }
 
+static int mount_overlay(char *jail_root, char *overlaydir) {
+	char *upperdir, *workdir, *optsstr;
+	const char mountoptsformat[] = "lowerdir=%s,upperdir=%s,workdir=%s";
+	int ret = -1;
+
+	if (asprintf(&upperdir, "%s%s", overlaydir, "/upper") < 0)
+		goto out;
+
+	if (asprintf(&workdir, "%s%s", overlaydir, "/work") < 0)
+		goto upper_printf;
+
+	if (asprintf(&optsstr, mountoptsformat, jail_root, upperdir, workdir) < 0)
+		goto work_printf;
+
+	if (mkdir_p(upperdir, 0755) || mkdir_p(workdir, 0755))
+		goto opts_printf;
+
+	DEBUG("mount -t overlay %s %s (%s)\n", jail_root, jail_root, optsstr);
+
+	if (mount(jail_root, jail_root, "overlay", MS_NOATIME, optsstr))
+		goto opts_printf;
+
+	ret = 0;
+
+opts_printf:
+	free(optsstr);
+work_printf:
+	free(workdir);
+upper_printf:
+	free(upperdir);
+out:
+	return ret;
+}
+
 static int build_jail_fs(void)
 {
 	char jail_root[] = "/tmp/ujail-XXXXXX";
+	char tmpovdir[] = "/tmp/ujail-overlay-XXXXXX";
+	char *overlaydir = NULL;
+
 	if (mkdtemp(jail_root) == NULL) {
 		ERROR("mkdtemp(%s) failed: %m\n", jail_root);
 		return -1;
@@ -173,6 +212,29 @@ static int build_jail_fs(void)
 		}
 	}
 
+	if (opts.tmpoverlaysize) {
+		char mountoptsstr[] = "mode=0755,size=XXXXXXXX";
+
+		snprintf(mountoptsstr, sizeof(mountoptsstr),
+			 "mode=0755,size=%s", opts.tmpoverlaysize);
+		if (mkdtemp(tmpovdir) == NULL) {
+			ERROR("mkdtemp(%s) failed: %m\n", jail_root);
+			return -1;
+		}
+		if (mount("tmpfs", tmpovdir, "tmpfs", MS_NOATIME,
+			  mountoptsstr)) {
+			ERROR("failed to mount tmpfs for overlay (size=%s)\n", opts.tmpoverlaysize);
+			return -1;
+		}
+		overlaydir = tmpovdir;
+	}
+
+	if (opts.overlaydir)
+		overlaydir = opts.overlaydir;
+
+	if (overlaydir)
+		mount_overlay(jail_root, overlaydir);
+
 	if (chdir(jail_root)) {
 		ERROR("chdir(%s) (jail_root) failed: %m\n", jail_root);
 		return -1;
@@ -209,7 +271,15 @@ static int build_jail_fs(void)
 	}
 
 	snprintf(dirbuf, sizeof(dirbuf), "/old%s", jail_root);
+	umount2(dirbuf, MNT_DETACH);
 	rmdir(dirbuf);
+	if (opts.tmpoverlaysize) {
+		char tmpdirbuf[sizeof(tmpovdir) + 4];
+		snprintf(tmpdirbuf, sizeof(tmpdirbuf), "/old%s", tmpovdir);
+		umount2(tmpdirbuf, MNT_DETACH);
+		rmdir(tmpdirbuf);
+	}
+
 	umount2("/old", MNT_DETACH);
 	rmdir("/old");
 
@@ -361,6 +431,8 @@ static void usage(void)
 	fprintf(stderr, "namespace jail options:\n");
 	fprintf(stderr, "  -h <hostname>\tchange the hostname of the jail\n");
 	fprintf(stderr, "  -N\t\tjail has network namespace\n");
+	fprintf(stderr, "  -f\t\tjail has user namespace\n");
+	fprintf(stderr, "  -F\t\tjail has cgroups namespace\n");
 	fprintf(stderr, "  -r <file>\treadonly files that should be staged\n");
 	fprintf(stderr, "  -w <file>\twriteable files that should be staged\n");
 	fprintf(stderr, "  -p\t\tjail has /proc\n");
@@ -371,6 +443,8 @@ static void usage(void)
 	fprintf(stderr, "  -G <name>\tgroup to run jailed process\n");
 	fprintf(stderr, "  -o\t\tremont jail root (/) read only\n");
 	fprintf(stderr, "  -R <dir>\texternal jail rootfs (system container)\n");
+	fprintf(stderr, "  -O <dir>\tdirectory for r/w overlayfs\n");
+	fprintf(stderr, "  -T <size>\tuse tmpfs r/w overlayfs with <size>\n");
 	fprintf(stderr, "\nWarning: by default root inside the jail is the same\n\
 and he has the same powers as root outside the jail,\n\
 thus he can escape the jail and/or break stuff.\n\
@@ -614,12 +688,23 @@ int main(int argc, char **argv)
 		case 'G':
 			opts.group = optarg;
 			break;
+		case 'O':
+			opts.overlaydir = optarg;
+			break;
+		case 'T':
+			opts.tmpoverlaysize = optarg;
+			break;
 		}
 	}
 
 	if (opts.namespace)
 		opts.namespace |= CLONE_NEWIPC | CLONE_NEWPID;
 
+	if (opts.tmpoverlaysize && strlen(opts.tmpoverlaysize) > 8) {
+		ERROR("size parameter too long: \"%s\"\n", opts.tmpoverlaysize);
+		return -1;
+	}
+
 	/* no <binary> param found */
 	if (argc - optind < 1) {
 		usage();
@@ -644,11 +729,11 @@ int main(int argc, char **argv)
 			ERROR("failed to load dependencies\n");
 			return -1;
 		}
+	}
 
-		if (opts.namespace && opts.seccomp && add_path_and_deps("libpreload-seccomp.so", 1, -1, 1)) {
-			ERROR("failed to load libpreload-seccomp.so\n");
-			return -1;
-		}
+	if (opts.namespace && opts.seccomp && add_path_and_deps("libpreload-seccomp.so", 1, -1, 1)) {
+		ERROR("failed to load libpreload-seccomp.so\n");
+		return -1;
 	}
 
 	if (opts.name)
diff --git a/service/instance.c b/service/instance.c
index d29aa0d..c941157 100644
--- a/service/instance.c
+++ b/service/instance.c
@@ -63,6 +63,8 @@ enum {
 	INSTANCE_ATTR_TERMTIMEOUT,
 	INSTANCE_ATTR_FACILITY,
 	INSTANCE_ATTR_EXTROOT,
+	INSTANCE_ATTR_OVERLAYDIR,
+	INSTANCE_ATTR_TMPOVERLAYSIZE,
 	__INSTANCE_ATTR_MAX
 };
 
@@ -91,6 +93,8 @@ static const struct blobmsg_policy instance_attr[__INSTANCE_ATTR_MAX] = {
 	[INSTANCE_ATTR_TERMTIMEOUT] = { "term_timeout", BLOBMSG_TYPE_INT32 },
 	[INSTANCE_ATTR_FACILITY] = { "facility", BLOBMSG_TYPE_STRING },
 	[INSTANCE_ATTR_EXTROOT] = { "extroot", BLOBMSG_TYPE_STRING },
+	[INSTANCE_ATTR_OVERLAYDIR] = { "overlaydir", BLOBMSG_TYPE_STRING },
+	[INSTANCE_ATTR_TMPOVERLAYSIZE] = { "tmpoverlaysize", BLOBMSG_TYPE_STRING },
 };
 
 enum {
@@ -275,6 +279,16 @@ jail_run(struct service_instance *in, char **argv)
 		argv[argc++] = in->extroot;
 	}
 
+	if (in->overlaydir) {
+		argv[argc++] = "-O";
+		argv[argc++] = in->overlaydir;
+	}
+
+	if (in->tmpoverlaysize) {
+		argv[argc++] = "-T";
+		argv[argc++] = in->tmpoverlaysize;
+	}
+
 	blobmsg_list_for_each(&jail->mount, var) {
 		const char *type = blobmsg_data(var->data);
 
@@ -906,9 +920,14 @@ instance_jail_parse(struct service_instance *in, struct blob_attr *attr)
 	if (in->group)
 		jail->argc += 2;
 
-	if (in->extroot) {
+	if (in->extroot)
+		jail->argc += 2;
+
+	if (in->overlaydir)
+		jail->argc += 2;
+
+	if (in->tmpoverlaysize)
 		jail->argc += 2;
-	}
 
 	if (in->no_new_privs)
 		jail->argc++;
@@ -1024,6 +1043,12 @@ instance_config_parse(struct service_instance *in)
 	if (tb[INSTANCE_ATTR_EXTROOT])
 		in->extroot = strdup(blobmsg_get_string(tb[INSTANCE_ATTR_EXTROOT]));
 
+	if (tb[INSTANCE_ATTR_OVERLAYDIR])
+		in->overlaydir = strdup(blobmsg_get_string(tb[INSTANCE_ATTR_OVERLAYDIR]));
+
+	if (tb[INSTANCE_ATTR_TMPOVERLAYSIZE])
+		in->tmpoverlaysize = strdup(blobmsg_get_string(tb[INSTANCE_ATTR_TMPOVERLAYSIZE]));
+
 	if (tb[INSTANCE_ATTR_PIDFILE]) {
 		char *pidfile = blobmsg_get_string(tb[INSTANCE_ATTR_PIDFILE]);
 		if (pidfile)
@@ -1173,6 +1198,8 @@ instance_free(struct service_instance *in)
 	free(in->user);
 	free(in->group);
 	free(in->extroot);
+	free(in->overlaydir);
+	free(in->tmpoverlaysize);
 	free(in->jail.name);
 	free(in->jail.hostname);
 	free(in->seccomp);
@@ -1298,6 +1325,11 @@ void instance_dump(struct blob_buf *b, struct service_instance *in, int verbose)
 			blobmsg_add_string(b, "hostname", in->jail.hostname);
 		if (in->extroot)
 			blobmsg_add_string(b, "extroot", in->extroot);
+		if (in->overlaydir)
+			blobmsg_add_string(b, "overlaydir", in->overlaydir);
+		if (in->tmpoverlaysize)
+			blobmsg_add_string(b, "tmpoverlaysize", in->tmpoverlaysize);
+
 		blobmsg_add_u8(b, "procfs", in->jail.procfs);
 		blobmsg_add_u8(b, "sysfs", in->jail.sysfs);
 		blobmsg_add_u8(b, "ubus", in->jail.ubus);
diff --git a/service/instance.h b/service/instance.h
index 7e80c61..43a6561 100644
--- a/service/instance.h
+++ b/service/instance.h
@@ -67,6 +67,8 @@ struct service_instance {
 	char *seccomp;
 	char *pidfile;
 	char *extroot;
+	char *overlaydir;
+	char *tmpoverlaysize;
 	int syslog_facility;
 	int exit_code;
 
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

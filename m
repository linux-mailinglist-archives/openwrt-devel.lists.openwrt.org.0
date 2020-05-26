Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37ADA1B8A20
	for <lists+openwrt-devel@lfdr.de>; Sun, 26 Apr 2020 01:48:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H9mdU8mQzae0Yk86fMjvoc4JEhxqiMieympBPbkGfE0=; b=Dt3ZCp6im4asEZ
	5zc7snQegEX5Yo4IhlotZLYqlvmWaT8lbWUTaW0tR3C8+viteL3n62qAIHoIBmczER4Ox+bzXKWqQ
	uDrA1JCdyLCnvEyYHhbsWy2XGl1s+LBApK3r+ZEsAB2fvkTq7mcIo01iHV72OPY510ge/hIAsb8UE
	j7Q/APHw5BRwiGrf4ZIb71ktTb95lfDZW3hEyiKdLjK7vqlmA8cpIplV0TOm7cfv7duTo6Et687vA
	rVjBnxNh8lBWSJONstvfCCthXnuK+A/DjGa6e+py8MQf6Y/syvw4hH0cgLpvm2xpCzyR9M53fzXWw
	axyTnOiJQOpcsiVhlE1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSUXE-0005Tc-TZ; Sat, 25 Apr 2020 23:48:36 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSUX7-0005Ri-1w
 for openwrt-devel@lists.openwrt.org; Sat, 25 Apr 2020 23:48:31 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.3) (envelope-from <daniel@makrotopia.org>)
 id 1jSUX1-0007V2-DU; Sun, 26 Apr 2020 01:48:23 +0200
Date: Sun, 26 Apr 2020 00:48:14 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: john@phrozen.org, nbd@nbd.name
Message-ID: <20200425234650.GA1336466@makrotopia.org>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_164829_396876_292D2CA7 
X-CRM114-Status: GOOD (  20.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH RFC procd] jail: add option to provide
 /dev/console to containers
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Create UNIX/98 PTY, pass master fd to procd and setup mount-bind of
slave PTS device on /dev/console inside jail.
Allow attaching to an instance's console by using the newly introduced
ujail-console command (no multiplexing for now).

Signed-off-by: Daniel Golle <daniel@makrotopia.org>
---
 CMakeLists.txt     |   6 ++
 jail/console.c     | 209 +++++++++++++++++++++++++++++++++++++++++++++
 jail/jail.c        |  83 +++++++++++++++++-
 service/instance.c |  70 +++++++++++++++
 service/instance.h |   3 +
 service/service.c  |  71 +++++++++++++++
 6 files changed, 438 insertions(+), 4 deletions(-)
 create mode 100644 jail/console.c

diff --git a/CMakeLists.txt b/CMakeLists.txt
index cff47cf..3eb79f9 100644
--- a/CMakeLists.txt
+++ b/CMakeLists.txt
@@ -110,6 +110,12 @@ INSTALL(TARGETS ujail
 	RUNTIME DESTINATION ${CMAKE_INSTALL_SBINDIR}
 )
 ADD_DEPENDENCIES(ujail capabilities-names-h)
+
+ADD_EXECUTABLE(ujail-console jail/console.c)
+TARGET_LINK_LIBRARIES(ujail-console ${ubox} ${ubus} ${blobmsg_json})
+INSTALL(TARGETS ujail-console
+	RUNTIME DESTINATION ${CMAKE_INSTALL_SBINDIR}
+)
 endif()
 
 IF(UTRACE_SUPPORT)
diff --git a/jail/console.c b/jail/console.c
new file mode 100644
index 0000000..75ce9c5
--- /dev/null
+++ b/jail/console.c
@@ -0,0 +1,209 @@
+/*
+ * Copyright (C) 2020 Daniel Golle <daniel@makrotopia.org>
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU Lesser General Public License version 2.1
+ * as published by the Free Software Foundation
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <stdlib.h>
+#include <fcntl.h>
+#include <libubox/ustream.h>
+#include <libubus.h>
+#include <signal.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <unistd.h>
+#include <fcntl.h>
+#include <errno.h>
+#include <sys/types.h>
+#include <termios.h>
+
+static inline int setup_tios(int fd, struct termios *oldtios)
+{
+	struct termios newtios;
+
+	if (!isatty(fd)) {
+		return -1;
+	}
+
+	/* Get current termios */
+	if (tcgetattr(fd, oldtios))
+		return -1;
+
+	newtios = *oldtios;
+
+	/* Remove the echo characters and signal reception, the echo
+	 * will be done with master proxying */
+	newtios.c_iflag &= ~IGNBRK;
+	newtios.c_iflag &= BRKINT;
+	newtios.c_lflag &= ~(ECHO|ICANON|ISIG);
+	newtios.c_cc[VMIN] = 1;
+	newtios.c_cc[VTIME] = 0;
+
+	/* Set new attributes */
+	if (tcsetattr(fd, TCSAFLUSH, &newtios))
+	        return -1;
+
+	return 0;
+}
+
+
+
+#define OPT_ARGS	"i:s:"
+
+static struct ustream_fd cufd;
+static struct ustream_fd lufd;
+
+static void usage()
+{
+	fprintf(stderr, "ujail-console -s <service> [-i <instance>]\n");
+	exit(1);
+}
+
+static void client_cb(struct ustream *s, int bytes)
+{
+	char *buf;
+	int len, rv;
+
+	do {
+		buf = ustream_get_read_buf(s, &len);
+		if (!buf)
+			break;
+
+		rv = ustream_write(&lufd.stream, buf, len, false);
+
+		if (rv > 0)
+			ustream_consume(s, rv);
+
+		if (rv <= len)
+			break;
+	} while(1);
+}
+
+static void local_cb(struct ustream *s, int bytes)
+{
+	char *buf;
+	int len, rv;
+
+	do {
+		buf = ustream_get_read_buf(s, &len);
+		if (!buf)
+			break;
+
+		if ((len > 0) && (buf[0] == 2))
+				uloop_end();
+
+		rv = ustream_write(&cufd.stream, buf, len, false);
+
+		if (rv > 0)
+			ustream_consume(s, rv);
+
+		if (rv <= len)
+			break;
+	} while(1);
+}
+
+int main(int argc, char **argv)
+{
+	struct ubus_context *ctx;
+	uint32_t id;
+	static struct blob_buf req;
+	char *service_name = NULL, *instance_name = NULL;
+	int client_fd, server_fd, tty_fd;
+	struct termios oldtermios;
+	int ch;
+
+	while ((ch = getopt(argc, argv, OPT_ARGS)) != -1) {
+		switch (ch) {
+		case 'i':
+			instance_name = optarg;
+			break;
+		case 's':
+			service_name = optarg;
+			break;
+		default:
+			usage();
+		}
+	}
+
+	if (!service_name)
+		usage();
+
+	ctx = ubus_connect(NULL);
+	if (!ctx) {
+		fprintf(stderr, "can't connect to ubus!\n");
+		return -1;
+	}
+
+	/* open pseudo-terminal pair */
+	client_fd = posix_openpt(O_RDWR | O_NOCTTY);
+	if (client_fd < 0) {
+		fprintf(stderr, "can't create virtual console!\n");
+		ubus_free(ctx);
+		return -1;
+	}
+	setup_tios(client_fd, &oldtermios);
+	grantpt(client_fd);
+	unlockpt(client_fd);
+	server_fd = open(ptsname(client_fd), O_RDWR | O_NOCTTY);
+	if (server_fd < 0) {
+		fprintf(stderr, "can't open virtual console!\n");
+		close(client_fd);
+		ubus_free(ctx);
+		return -1;
+	}
+
+	setup_tios(server_fd, &oldtermios);
+	tty_fd = open("/dev/tty", O_RDWR);
+	setup_tios(tty_fd, &oldtermios);
+
+	/* register server-side with procd */
+	blob_buf_init(&req, 0);
+	blobmsg_add_string(&req, "name", service_name);
+	if (instance_name)
+		blobmsg_add_string(&req, "instance", instance_name);
+
+	if (ubus_lookup_id(ctx, "service", &id) ||
+	    ubus_invoke_fd(ctx, id, "console_attach", req.head, NULL, NULL, 3000, server_fd)) {
+		fprintf(stderr, "ubus request failed\n");
+		close(server_fd);
+		close(client_fd);
+		blob_buf_free(&req);
+		ubus_free(ctx);
+		return -2;
+	}
+
+	close(server_fd);
+	blob_buf_free(&req);
+	ubus_free(ctx);
+
+	uloop_init();
+
+	/* forward between stdio and client_fd until detach is requested */
+	lufd.stream.notify_read = local_cb;
+	ustream_fd_init(&lufd, tty_fd);
+
+	cufd.stream.notify_read = client_cb;
+/* ToDo: handle remote close and other events */
+//	cufd.stream.notify_state = client_state_cb;
+	ustream_fd_init(&cufd, client_fd);
+
+	fprintf(stderr, "attaching to jail console. press [CTRL]+[B] to exit.\n");
+	close(0);
+	close(1);
+	close(2);
+	uloop_run();
+
+	tcsetattr(tty_fd, TCSAFLUSH, &oldtermios);
+	ustream_free(&lufd.stream);
+	ustream_free(&cufd.stream);
+	close(client_fd);
+
+	return 0;
+}
diff --git a/jail/jail.c b/jail/jail.c
index 8ae477c..9257001 100644
--- a/jail/jail.c
+++ b/jail/jail.c
@@ -40,7 +40,7 @@
 #include <libubus.h>
 
 #define STACK_SIZE	(1024 * 1024)
-#define OPT_ARGS	"S:C:n:h:r:w:d:psulocU:G:NR:fFO:T:E"
+#define OPT_ARGS	"S:C:n:h:r:w:d:psulocU:G:NR:fFO:T:Ey"
 
 static struct {
 	char *name;
@@ -58,6 +58,7 @@ static struct {
 	int procfs;
 	int ronly;
 	int sysfs;
+	int console;
 	int pw_uid;
 	int pw_gid;
 	int gr_gid;
@@ -71,6 +72,8 @@ int debug = 0;
 
 static char child_stack[STACK_SIZE];
 
+int console_fd;
+
 static int mkdir_p(char *dir, mode_t mask)
 {
 	char *l = strrchr(dir, '/');
@@ -184,6 +187,72 @@ out:
 	return ret;
 }
 
+static void pass_console(int console_fd)
+{
+	struct ubus_context *ctx = ubus_connect(NULL);
+	static struct blob_buf req;
+	uint32_t id;
+
+	if (!ctx)
+		return;
+
+	blob_buf_init(&req, 0);
+	blobmsg_add_string(&req, "name", opts.name);
+
+	if (ubus_lookup_id(ctx, "service", &id) ||
+	    ubus_invoke_fd(ctx, id, "console_set", req.head, NULL, NULL, 3000, console_fd))
+		INFO("ubus request failed\n");
+
+	close(console_fd);
+	blob_buf_free(&req);
+	ubus_free(ctx);
+}
+
+static int create_dev_console(const char *jail_root)
+{
+	char *console_fname;
+	char dev_console_path[PATH_MAX];
+	int slave_console_fd;
+
+	/* Open UNIX/98 virtual console */
+	console_fd = posix_openpt(O_RDWR | O_NOCTTY);
+	if (console_fd == -1)
+		return -1;
+
+	console_fname = ptsname(console_fd);
+	DEBUG("got console fd %d and PTS client name %s\n", console_fd, console_fname);
+	if (!console_fname)
+		goto no_console;
+
+	grantpt(console_fd);
+	unlockpt(console_fd);
+
+	/* pass PTY master to procd */
+	pass_console(console_fd);
+
+	/* mount-bind PTY slave to /dev/console in jail */
+	snprintf(dev_console_path, sizeof(dev_console_path), "%s/dev/console", jail_root);
+	close(creat(dev_console_path, 0620));
+
+	if (mount(console_fname, dev_console_path, NULL, MS_BIND, NULL))
+		goto no_console;
+
+	/* use PTY slave for stdio */
+	slave_console_fd = open(console_fname, O_RDWR | O_NOCTTY);
+	dup2(slave_console_fd, 0);
+	dup2(slave_console_fd, 1);
+	dup2(slave_console_fd, 2);
+	close(slave_console_fd);
+
+	INFO("using guest console %s\n", console_fname);
+
+	return 0;
+
+no_console:
+	close(console_fd);
+	return 1;
+}
+
 static int build_jail_fs(void)
 {
 	char jail_root[] = "/tmp/ujail-XXXXXX";
@@ -247,6 +316,9 @@ static int build_jail_fs(void)
 	if (mount(NULL, tmpdevdir, "tmpfs", MS_NOATIME | MS_NOEXEC | MS_NOSUID, "size=1M"))
 		return -1;
 
+	if (opts.console)
+		create_dev_console(jail_root);
+
 	if (mount_all(jail_root)) {
 		ERROR("mount_all() failed\n");
 		return -1;
@@ -468,6 +540,7 @@ static void usage(void)
 	fprintf(stderr, "  -O <dir>\tdirectory for r/w overlayfs\n");
 	fprintf(stderr, "  -T <size>\tuse tmpfs r/w overlayfs with <size>\n");
 	fprintf(stderr, "  -E\t\tfail if jail cannot be setup\n");
+	fprintf(stderr, "  -y\t\tprovide jail console\n");
 	fprintf(stderr, "\nWarning: by default root inside the jail is the same\n\
 and he has the same powers as root outside the jail,\n\
 thus he can escape the jail and/or break stuff.\n\
@@ -486,7 +559,6 @@ static int exec_jail(void *pipes_ptr)
 	close(pipes[0]);
 	close(pipes[3]);
 
-
 	buf[0] = 'i';
 	if (write(pipes[1], buf, 1) < 1) {
 		ERROR("can't write to parent\n");
@@ -720,6 +792,9 @@ int main(int argc, char **argv)
 		case 'E':
 			opts.require_jail = 1;
 			break;
+		case 'y':
+			opts.console = 1;
+			break;
 		}
 	}
 
@@ -788,9 +863,9 @@ int main(int argc, char **argv)
 			add_mount("/dev/null", 0, -1);
 			add_mount("/dev/random", 0, -1);
 			add_mount("/dev/urandom", 0, -1);
-			add_mount("/dev/tty", 0, -1);
 			add_mount("/dev/zero", 0, -1);
-			add_mount("/dev/console", 0, -1);
+			add_mount("/dev/ptmx", 0, -1);
+			add_mount("/dev/tty", 0, -1);
 
 			if (!opts.extroot && (opts.user || opts.group)) {
 				add_mount("/etc/passwd", 0, -1);
diff --git a/service/instance.c b/service/instance.c
index 75fd91f..142208a 100644
--- a/service/instance.c
+++ b/service/instance.c
@@ -109,6 +109,7 @@ enum {
 	JAIL_ATTR_NETNS,
 	JAIL_ATTR_USERNS,
 	JAIL_ATTR_CGROUPSNS,
+	JAIL_ATTR_CONSOLE,
 	JAIL_ATTR_REQUIREJAIL,
 	__JAIL_ATTR_MAX,
 };
@@ -125,6 +126,7 @@ static const struct blobmsg_policy jail_attr[__JAIL_ATTR_MAX] = {
 	[JAIL_ATTR_NETNS] = { "netns", BLOBMSG_TYPE_BOOL },
 	[JAIL_ATTR_USERNS] = { "userns", BLOBMSG_TYPE_BOOL },
 	[JAIL_ATTR_CGROUPSNS] = { "cgroupsns", BLOBMSG_TYPE_BOOL },
+	[JAIL_ATTR_CONSOLE] = { "console", BLOBMSG_TYPE_BOOL },
 	[JAIL_ATTR_REQUIREJAIL] = { "requirejail", BLOBMSG_TYPE_BOOL },
 };
 
@@ -274,6 +276,9 @@ jail_run(struct service_instance *in, char **argv)
 	if (jail->cgroupsns)
 		argv[argc++] = "-F";
 
+	if (jail->console)
+		argv[argc++] = "-y";
+
 	if (in->extroot) {
 		argv[argc++] = "-R";
 		argv[argc++] = in->extroot;
@@ -453,6 +458,18 @@ instance_free_stdio(struct service_instance *in)
 		close(in->_stderr.fd.fd);
 		in->_stderr.fd.fd = -1;
 	}
+
+	if (in->console.fd.fd > -1) {
+		ustream_free(&in->console.stream);
+		close(in->console.fd.fd);
+		in->console.fd.fd = -1;
+	}
+
+	if (in->console_client.fd.fd > -1) {
+		ustream_free(&in->console_client.stream);
+		close(in->console_client.fd.fd);
+		in->console_client.fd.fd = -1;
+	}
 }
 
 void
@@ -570,6 +587,46 @@ instance_stdout(struct ustream *s, int bytes)
 	               container_of(s, struct service_instance, _stdout.stream));
 }
 
+static void
+instance_console(struct ustream *s, int bytes)
+{
+	struct service_instance *in = container_of(s, struct service_instance, console.stream);
+	char *buf;
+	int len;
+
+	do {
+		buf = ustream_get_read_buf(s, &len);
+		if (!buf)
+			break;
+
+		ulog(LOG_INFO, "out: %s\n", buf);
+
+		/* test if console client is attached */
+		if (in->console_client.fd.fd > -1)
+			ustream_write(&in->console_client.stream, buf, len, false);
+
+		ustream_consume(s, len);
+	} while (1);
+}
+
+static void
+instance_console_client(struct ustream *s, int bytes)
+{
+	struct service_instance *in = container_of(s, struct service_instance, console_client.stream);
+	char *buf;
+	int len;
+
+	do {
+		buf = ustream_get_read_buf(s, &len);
+		if (!buf)
+			break;
+
+		ulog(LOG_INFO, "in: %s\n", buf);
+		ustream_write(&in->console.stream, buf, len, false);
+		ustream_consume(s, len);
+	} while (1);
+}
+
 static void
 instance_stderr(struct ustream *s, int bytes)
 {
@@ -905,6 +962,10 @@ instance_jail_parse(struct service_instance *in, struct blob_attr *attr)
 		jail->cgroupsns = blobmsg_get_bool(tb[JAIL_ATTR_CGROUPSNS]);
 		jail->argc++;
 	}
+	if (tb[JAIL_ATTR_CONSOLE]) {
+		jail->console = blobmsg_get_bool(tb[JAIL_ATTR_CONSOLE]);
+		jail->argc++;
+	}
 
 	if (tb[JAIL_ATTR_MOUNT]) {
 		struct blob_attr *cur;
@@ -1232,6 +1293,14 @@ instance_init(struct service_instance *in, struct service *s, struct blob_attr *
 	in->_stderr.stream.string_data = true;
 	in->_stderr.stream.notify_read = instance_stderr;
 
+	in->console.fd.fd = -2;
+	in->console.stream.string_data = true;
+	in->console.stream.notify_read = instance_console;
+
+	in->console_client.fd.fd = -2;
+	in->console_client.stream.string_data = true;
+	in->console_client.stream.notify_read = instance_console_client;
+
 	blobmsg_list_init(&in->netdev, struct instance_netdev, node, instance_netdev_cmp);
 	blobmsg_list_init(&in->file, struct instance_file, node, instance_file_cmp);
 	blobmsg_list_simple_init(&in->env);
@@ -1335,6 +1404,7 @@ void instance_dump(struct blob_buf *b, struct service_instance *in, int verbose)
 		blobmsg_add_u8(b, "netns", in->jail.netns);
 		blobmsg_add_u8(b, "userns", in->jail.userns);
 		blobmsg_add_u8(b, "cgroupsns", in->jail.cgroupsns);
+		blobmsg_add_u8(b, "console", (in->console.fd.fd > -1));
 		blobmsg_close_table(b, r);
 		if (!avl_is_empty(&in->jail.mount.avl)) {
 			struct blobmsg_list_node *var;
diff --git a/service/instance.h b/service/instance.h
index 43a6561..4400cd4 100644
--- a/service/instance.h
+++ b/service/instance.h
@@ -32,6 +32,7 @@ struct jail {
 	bool netns;
 	bool userns;
 	bool cgroupsns;
+	bool console;
 	char *name;
 	char *hostname;
 	struct blobmsg_list mount;
@@ -82,6 +83,8 @@ struct service_instance {
 	struct uloop_timeout timeout;
 	struct ustream_fd _stdout;
 	struct ustream_fd _stderr;
+	struct ustream_fd console;
+	struct ustream_fd console_client;
 
 	struct blob_attr *command;
 	struct blob_attr *trigger;
diff --git a/service/service.c b/service/service.c
index 755147c..1d26291 100644
--- a/service/service.c
+++ b/service/service.c
@@ -274,6 +274,17 @@ static const struct blobmsg_policy get_data_policy[] = {
 	[DATA_TYPE] = { "type", BLOBMSG_TYPE_STRING },
 };
 
+enum {
+	SERVICE_CONSOLE_NAME,
+	SERVICE_CONSOLE_INSTANCE,
+	__SERVICE_CONSOLE_MAX,
+};
+
+static const struct blobmsg_policy service_console_policy[__SERVICE_CONSOLE_MAX] = {
+	[SERVICE_CONSOLE_NAME] = { "name", BLOBMSG_TYPE_STRING },
+	[SERVICE_CONSOLE_INSTANCE] = { "instance", BLOBMSG_TYPE_STRING },
+};
+
 static int
 service_handle_set(struct ubus_context *ctx, struct ubus_object *obj,
 		   struct ubus_request_data *req, const char *method,
@@ -672,6 +683,64 @@ service_get_data(struct ubus_context *ctx, struct ubus_object *obj,
 	return 0;
 }
 
+static int
+service_handle_console(struct ubus_context *ctx, struct ubus_object *obj,
+			struct ubus_request_data *req, const char *method,
+			struct blob_attr *msg)
+{
+	bool attach = !strcmp(method, "console_attach");
+	struct blob_attr *tb[__SERVICE_CONSOLE_MAX];
+	struct service *s;
+	struct service_instance *in;
+	int console_fd = -1;
+
+	console_fd = ubus_request_get_caller_fd(req);
+	if (console_fd < 0)
+		return UBUS_STATUS_INVALID_ARGUMENT;
+
+	if (!msg)
+		goto err_console_fd;
+
+	blobmsg_parse(service_console_policy, __SERVICE_CONSOLE_MAX, tb, blobmsg_data(msg), blobmsg_data_len(msg));
+	if (!tb[SERVICE_CONSOLE_NAME])
+		goto err_console_fd;
+
+	s = avl_find_element(&services, blobmsg_data(tb[SERVICE_CONSOLE_NAME]), s, avl);
+	if (!s)
+		goto err_console_fd;
+
+	if (tb[SERVICE_CONSOLE_INSTANCE]) {
+		in = vlist_find(&s->instances, blobmsg_data(tb[SERVICE_CONSOLE_INSTANCE]), in, node);
+	} else {
+		/* use first element in instances list */
+		vlist_for_each_element(&s->instances, in, node)
+			break;
+	}
+	if (!in)
+		goto err_console_fd;
+
+	if (attach) {
+		if (in->console.fd.fd < 0) {
+			close(console_fd);
+			return UBUS_STATUS_NOT_SUPPORTED;
+		}
+
+		/* close and replace existing attached console */
+		if (in->console_client.fd.fd > -1)
+			close(in->console_client.fd.fd);
+
+		ustream_fd_init(&in->console_client, console_fd);
+	} else {
+		ustream_fd_init(&in->console, console_fd);
+	}
+
+	return UBUS_STATUS_OK;
+err_console_fd:
+	close(console_fd);
+	return UBUS_STATUS_INVALID_ARGUMENT;
+}
+
+
 static struct ubus_method main_object_methods[] = {
 	UBUS_METHOD("set", service_handle_set, service_set_attrs),
 	UBUS_METHOD("add", service_handle_set, service_set_attrs),
@@ -684,6 +753,8 @@ static struct ubus_method main_object_methods[] = {
 	UBUS_METHOD("validate", service_handle_validate, validate_policy),
 	UBUS_METHOD("get_data", service_get_data, get_data_policy),
 	UBUS_METHOD("state", service_handle_state, service_state_attrs),
+	UBUS_METHOD("console_set", service_handle_console, service_console_policy),
+	UBUS_METHOD("console_attach", service_handle_console, service_console_policy),
 };
 
 static struct ubus_object_type main_object_type =
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

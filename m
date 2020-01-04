Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE4F5130293
	for <lists+openwrt-devel@lfdr.de>; Sat,  4 Jan 2020 15:16:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=exyVWYxVWqNtBc8ZscYxo7+Hu+2YE0xULK1Hvkiibhs=; b=axAcMEHO0FSUFm
	3yenTqfKnDS+y8IRD5/luujtGv+x4vHtUQLNCQRdiwSmVuIdjiQMausj+z1LjjcAoAgRBYsdz0y7u
	BNgotn3X3SivzVqJX7cEagAqo8ebAUfYromtZSPCjErdOwYKIdYun4woyaPR4mg7gGvk7xSQnBl/c
	B2JlqyKqBiM2i3nxTDpNoKPgjBkjXdWw22nPi8XCDYN4EwFRajlum0CY1rPz+eaFr1DW3x0Nsu+Sd
	YLi4ort7T+7EDSFvxjelLxhLnAL15gObj4HrSabQ4igKZ2Y2JdlOjAtX5VLpayHdozQUm0UfaHdYw
	a2GZiWcBzoIHlPMwdM5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inkEL-0004m7-7L; Sat, 04 Jan 2020 14:16:41 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inkEC-0004l7-E3
 for openwrt-devel@lists.openwrt.org; Sat, 04 Jan 2020 14:16:34 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1inkE6-0002lF-7l; Sat, 04 Jan 2020 15:16:29 +0100
Date: Sat, 4 Jan 2020 16:16:12 +0200
From: Daniel Golle <daniel@makrotopia.org>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20200104141612.GA2070994@makrotopia.org>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_061632_473602_837A0C49 
X-CRM114-Status: UNSURE (   7.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH procd] instance: strdup string attributes
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
Cc: Etienne CHAMPETIER <champetier.etienne@gmail.com>,
 Felix Fietkau <nbd@nbd.name>, John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Previously string attributes were set to pointers returned by
blobmsg_get_string() which caused use-after-free problems.
Use strdup() to have copies of all stored strings and free them
during cleanup.

Signed-off-by: Daniel Golle <daniel@makrotopia.org>
---
 service/instance.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/service/instance.c b/service/instance.c
index abd1f34..b0c9807 100644
--- a/service/instance.c
+++ b/service/instance.c
@@ -805,11 +805,11 @@ instance_jail_parse(struct service_instance *in, struct blob_attr *attr)
 	jail->argc = 2;
 
 	if (tb[JAIL_ATTR_NAME]) {
-		jail->name = blobmsg_get_string(tb[JAIL_ATTR_NAME]);
+		jail->name = strdup(blobmsg_get_string(tb[JAIL_ATTR_NAME]));
 		jail->argc += 2;
 	}
 	if (tb[JAIL_ATTR_HOSTNAME]) {
-		jail->hostname = blobmsg_get_string(tb[JAIL_ATTR_HOSTNAME]);
+		jail->hostname = strdup(blobmsg_get_string(tb[JAIL_ATTR_HOSTNAME]));
 		jail->argc += 2;
 	}
 	if (tb[JAIL_ATTR_PROCFS]) {
@@ -957,12 +957,12 @@ instance_config_parse(struct service_instance *in)
 		in->no_new_privs = blobmsg_get_bool(tb[INSTANCE_ATTR_NO_NEW_PRIVS]);
 
 	if (!in->trace && tb[INSTANCE_ATTR_SECCOMP])
-		in->seccomp = blobmsg_get_string(tb[INSTANCE_ATTR_SECCOMP]);
+		in->seccomp = strdup(blobmsg_get_string(tb[INSTANCE_ATTR_SECCOMP]));
 
 	if (tb[INSTANCE_ATTR_PIDFILE]) {
 		char *pidfile = blobmsg_get_string(tb[INSTANCE_ATTR_PIDFILE]);
 		if (pidfile)
-			in->pidfile = pidfile;
+			in->pidfile = strdup(pidfile);
 	}
 
 	if (tb[INSTANCE_ATTR_RELOADSIG])
@@ -1077,6 +1077,10 @@ instance_free(struct service_instance *in)
 	free(in->config);
 	free(in->user);
 	free(in->group);
+	free(in->jail.name);
+	free(in->jail.hostname);
+	free(in->seccomp);
+	free(in->pidfile);
 	free(in);
 }
 
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

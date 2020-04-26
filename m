Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7617D1B9022
	for <lists+openwrt-devel@lfdr.de>; Sun, 26 Apr 2020 14:47:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iJxM5OckqSLnBi/gtXJj84aiF9HvofcVozZQ46G6/dU=; b=haXH4pRAU6rqoD
	oDOy6GjavLxddkeGF6OCg358JldZnj+chDlESFlb0SaU9uUUsZtqpOuGPLxjhE+BFamVRJjpA7Bie
	xma3uHcuCivwhvdHC1yRqLN+k4TNkaMxYR5nNxacUqa6hK0naVkR412cTmnmNOz5MOUPn9Zb5/SZD
	VvrRB8yuyBpUA0tIcBeEMjgYXv3OhWFdjnp8GF/K+AyXXdHM38jXJQ+8kpawpNODYqP4zpKMiQi8Y
	1rZJezloWRjzDVf4j7Gn1Qdve8KV5UeGujQKXA1ZaBruOKOQiTVfA3hxFuHVdiYzXS5Lx5WUw8V5+
	RR/lVLfOOvZ1lLrOITUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSggZ-0001qt-Tc; Sun, 26 Apr 2020 12:47:03 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSggQ-0001pg-M4
 for openwrt-devel@lists.openwrt.org; Sun, 26 Apr 2020 12:46:56 +0000
Received: by mail-wr1-x434.google.com with SMTP id x18so17167809wrq.2
 for <openwrt-devel@lists.openwrt.org>; Sun, 26 Apr 2020 05:46:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vZDakE6vANU/xmh/rzp5qoqgDpJrvO5m6KVPUYfLrL0=;
 b=UqrtEvWh3cdQRr7jTqO0TYn+y8pOuvtyb4O620ile89SD6GPmq72TxpbBeKfWOXYwA
 1GB2U6ibH3uaHrZJdw7AVUnEp1fQdIzFAMNV9w9FVNHL683rxppb3KrvH80tU7vO4sXl
 hZVbiR5petSD/KzwwTxtzHvx1gfnyXf3AktnYuL6EikjAuMsexM6GL9TJeSeLdgaza+d
 OdvQwvAD7c0sTRgzqaKD8Y+IQAPfS2CZOwDLXUA6kn6/VIbZJVs0dDIH3d0YApHsF59n
 Ebr2dfnUytkJriIhrNoENxsSWizQZonCwvUnyuG8D6smb6fAfeU8mSUnmFAXgaSzfbiI
 wf0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=vZDakE6vANU/xmh/rzp5qoqgDpJrvO5m6KVPUYfLrL0=;
 b=bDgtmfzQ5/UHdUFwF4sAE1TuTPlmu10MSZbqFKHsuJYtdmaw+AwS6+Kfzil+KsWuJ8
 uDjIKWk2zUgt1TNAlUxmX7kzKGzp7EGLRfVzpSyt8yWy+Xl4xwO/z9K8AqW8huHcZhsW
 hif9hl2Fni2497tdEaLaVCMH/MaSUJ/1NP8qfzBo1H/5LT8r9ESI7hZM4BNO1xED/9xp
 zPGRzMHnl7ocpWJlBz20+lFUxMFlf1PiPQQYKRq9YVX6Y/r1UoUgkUdUrEO/ntqdm4wV
 iAPxpEtcd/+B4DOGjtuCyMH3rjsZYrvTRKM0+LxLcvMS/5sNuCYQtBYu5q6yjxmslx9+
 hpKw==
X-Gm-Message-State: AGi0PuboMbtHdYOcr/Q874oiuoJJS6tcVjMU+zjXi3V/vGLfDJrEjZKn
 DGIvbf5XmKOotTlbo/O2EK1Mx8e6
X-Google-Smtp-Source: APiQypIAM83eaw5qI1QIpWtLqXnjybQM3c3kCBRsDL0adOlGuuTyA/YseBmbxD/XQLsecRRPrOvOsg==
X-Received: by 2002:adf:ee4c:: with SMTP id w12mr24225144wro.347.1587905212370; 
 Sun, 26 Apr 2020 05:46:52 -0700 (PDT)
Received: from srvbsdfenssv.interne.associated-bears.org
 (lstlambert-658-1-110-48.w217-128.abo.wanadoo.fr. [217.128.200.48])
 by smtp.gmail.com with ESMTPSA id s17sm10887305wmc.48.2020.04.26.05.46.51
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Apr 2020 05:46:51 -0700 (PDT)
Received: from srvbsdfenssv.interne.associated-bears.org (localhost
 [127.0.0.1])
 by srvbsdfenssv.interne.associated-bears.org (Postfix) with ESMTP id DD164126C;
 Sun, 26 Apr 2020 14:46:50 +0200 (CEST)
X-Virus-Scanned: amavisd-new at interne.associated-bears.org
Received: from srvbsdfenssv.interne.associated-bears.org ([127.0.0.1])
 by srvbsdfenssv.interne.associated-bears.org
 (srvbsdfenssv.interne.associated-bears.org [127.0.0.1]) (amavisd-new,
 port 10024)
 with ESMTP id MdrzdZ6FVpEg; Sun, 26 Apr 2020 14:46:45 +0200 (CEST)
Received: by srvbsdfenssv.interne.associated-bears.org (Postfix,
 from userid 1001)
 id DDFF61267; Sun, 26 Apr 2020 14:46:45 +0200 (CEST)
From: Eric Masson <emss@free.fr>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 26 Apr 2020 14:46:45 +0200
Message-Id: <20200426124645.7457-1-emss@free.fr>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_054654_744759_0F843CE1 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:434 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [emss.mail[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
Subject: [OpenWrt-Devel] [PATCH] Add basic instance support to nsd init
 script
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
Cc: Eric Masson <emss@srvbsdfenssv.interne.associated-bears.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Eric Masson <emss@srvbsdfenssv.interne.associated-bears.org>

---
 net/nsd/files/nsd.init | 31 +++++++++++++++++++++++++++----
 1 file changed, 27 insertions(+), 4 deletions(-)

diff --git a/net/nsd/files/nsd.init b/net/nsd/files/nsd.init
index 8b1cf1deb..69fdce512 100644
--- a/net/nsd/files/nsd.init
+++ b/net/nsd/files/nsd.init
@@ -5,12 +5,35 @@ START=60
 USE_PROCD=1
 PROG=/usr/sbin/nsd
 
+append_arg() {
+	local cfg="$1"
+	local var="$2"
+	local opt="$3"
+	local def="$4"
+	local val
+
+	config_get val "$cfg" "$var"
+	[ -n "$val" -o -n "$def" ] && procd_append_param command "$opt" "${val:-$def}"
+}
+
+start_instance()
+{
+	local cfg="$1"
+	procd_open_instance
+	procd_set_param respawn
+	procd_set_param stderr 1
+	procd_set_param command "$PROG" -d
+	append_arg "$cfg" config_file "-c"
+	append_arg "$cfg" db_file "-f"
+	append_arg "$cfg" pid_file "-P"
+	procd_close_instance
+}
+
 start_service() {
 	mkdir -p /var/db/nsd
 	chown network /var/db/nsd
 	chmod 640 /etc/nsd/*.conf 2>/dev/null
 	chgrp network /etc/nsd/*.conf 2>/dev/null
-	procd_open_instance
-	procd_set_param command "$PROG" -d
-	procd_close_instance
-}
+	config_load nsd
+	config_foreach start_instance nsd
+}
\ No newline at end of file
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

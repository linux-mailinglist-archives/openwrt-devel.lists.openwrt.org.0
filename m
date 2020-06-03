Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C426D1ECEE0
	for <lists+openwrt-devel@lfdr.de>; Wed,  3 Jun 2020 13:48:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Q7JZXywBeOQEtlsb7oYGyDi7u7jBeNtrvSWgviuRtLU=; b=ZzT
	36CwZNdJpxdNM6nouMgHcQDDCIb7B/HYTQRhl3wmkMCzu+yU3HFtiCNdS7rcQB/UuEJJkgzoOcNJj
	dNtsg23tOlKmBIC5s4GiO3To7QjvCOnnqDciEMzomF52Vuv4OV/RDxJJRnitapBL7L4X2Z6kwWJDt
	u0t0Y0rnnI1Gt5vyYB8GzSekJzW70Rg24MgDZUhREom392aKACyQezo0BcF/U6ytnZX533ncZejpc
	TA7IExENKwK3Ft0mjlP6vjt1akAsQl2KyP8tUR4c6rEgetxEAJ9f1XBXABxFH9WFNPBx1wUiKdUs3
	Ywct5/usMSSiXWvcR3qjwHHXWBYSFKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgRsl-0002NQ-8a; Wed, 03 Jun 2020 11:48:31 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgRsE-00027P-39
 for openwrt-devel@lists.openwrt.org; Wed, 03 Jun 2020 11:47:59 +0000
Received: by mail-wr1-x443.google.com with SMTP id c3so1993046wru.12
 for <openwrt-devel@lists.openwrt.org>; Wed, 03 Jun 2020 04:47:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=melmac.net; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=iuuoJUyWNxFhglLgC9L7MCZqx2/O+W5osjy7F+DYfmE=;
 b=B9eAmW0cb20O3ipXom4pgoIxFB7zekHyzxYcg4wE8IUD8bj2zgDmeI9zIi7Cgu0d7a
 elYKoNINxELFygS3iRQGYgy2CYlBvDjEYqayi8ewy1cQvrOMoSFuM0aGGhURDyYm1UIt
 C3hx5KQdJ2wSws4CvRKw9VhwLz+7MNL53rxUs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=iuuoJUyWNxFhglLgC9L7MCZqx2/O+W5osjy7F+DYfmE=;
 b=UtgC/0+tu2GjHfTU+spjlimwtaa4rX00+M/YyL8rIsS1Zb3tYEJpAfoZsdRhAroLQy
 X+eLlEySm99+F+t/pk0AtULF0M55/PUNhnSaZRgYx//G8tt2JjpzOd6QDQ8jalgtq+Lm
 faFEoG90sY2VPkcW7H5iEjs0JFLvYxD52eIUNUzdQBSOkRw0o1neFQ0mnOdaeShnRNFB
 VbEdqYL66wjdh0fwWE4U4eKU2utTwOgpHEIlMO858t4KTIlHHSYptDTJ4ZGRnMpx0bav
 vuVXFnUWaSVLx032afs6e4/govLwSx8+B6LSOVz2RxH5keWn7Y5Mm7OjtM+DlEm4aQQu
 nNmQ==
X-Gm-Message-State: AOAM533lQ3mdBHRgrNZHvg3Sxdc055MOy6fbYvujD/nGJD38HW2Q5SdD
 Qaf0lL9lNGc4I4/7RbHR3BP5YfU7vE93yDu2fI5IkGVJZ95eLEII
X-Google-Smtp-Source: ABdhPJwcQ1VWHgsklvMs32LObvfBzrIGdfznABFCNHS/kaWUNIvxtENxWCjXHwv380YruvWfi+95lhxsDMKMz6ev7Es=
X-Received: by 2002:adf:edc8:: with SMTP id v8mr29376757wro.176.1591184876166; 
 Wed, 03 Jun 2020 04:47:56 -0700 (PDT)
MIME-Version: 1.0
From: Stan Grishin <stangri@melmac.net>
Date: Wed, 3 Jun 2020 04:47:45 -0700
Message-ID: <CALu2O0QqhNN7kr5ntuazybt0qYz1aFpWoO+9xj2EzJssDYtJoQ@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_044758_171087_D5D0D6EF 
X-CRM114-Status: UNSURE (   6.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] base-files: add status-ubus to init script
 parameters in /etc/rc.common
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Implement $initscript status-ubus as a short-hand for
ubus call service list "{'name': '$initscript'}"

Signed-off-by: Stan Grishin <stangri@melmac.net>
---
 package/base-files/files/etc/rc.common | 24 ++++++++++++++++--------
 1 file changed, 16 insertions(+), 8 deletions(-)

diff --git a/package/base-files/files/etc/rc.common
b/package/base-files/files/etc/rc.common
index 7c11544405..f57895c822 100755
--- a/package/base-files/files/etc/rc.common
+++ b/package/base-files/files/etc/rc.common
@@ -67,13 +67,14 @@ help() {
 Syntax: $initscript [command]

 Available commands:
- start Start the service
- stop Stop the service
- restart Restart the service
- reload Reload configuration files (or restart if service does not
implement reload)
- enable Enable service autostart
- disable Disable service autostart
+ start Start the service
+ stop Stop the service
+ restart Restart the service
+ reload Reload configuration files (or restart if service does not
implement reload)
+ enable Enable service autostart
+ disable Disable service autostart
  enabled Check if service is started on boot
+ status-ubus Show ubus info for the service
 $EXTRA_HELP
 EOF
 }
@@ -165,6 +166,13 @@ ${EXTRA_HELP}"
  }
 }

-ALL_COMMANDS="start stop reload restart boot shutdown enable disable
enabled depends ${EXTRA_COMMANDS}"
-list_contains ALL_COMMANDS "$action" || action=help
+status_ubus() {
+ name="$(basename "${initscript}")"
+ /bin/ubus call service list "{'name': '$name'}"
+ return 0
+}
+
+ALL_COMMANDS="start stop reload restart boot shutdown enable disable
enabled depends status-ubus ${EXTRA_COMMANDS}"
+list_contains ALL_COMMANDS "$action" && action="${action/-/_}" || action=help
 $action "$@"
+
-- 
2.25.1

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

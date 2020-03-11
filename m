Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C292118195D
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Mar 2020 14:13:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7G+dzJInSYNyk4zogXAY1g/sjmXZvwNMB19eB/dHIxM=; b=oimJDsDP/1gO4H
	1Na6jyzA3+Jd4GYxOM69+5Bvj8KYrNmdukOuoCJ9pYRHa92d5PGkMhl+rCXzzexpXqYXWbX9YPCTF
	qeL5z4r4JKmaxN2ackrGLYDDpub0ogpvQPtzyzHzGfq8l/NHQGYS0/ubFf2slO5lgUDQBMB+Rogp/
	YwQNgGxR2UXNDlDZ7I2k3/LdP5rMFPdHCiiHwyAhsjD+GT6Th3xM/qnOAC0XP3McdE/HSBSHkFZ9e
	HdRVbkWlzc8tHwDI985htD/kxWDfPyqcnqZL81/2M9pLqsLoaW4NCx8jNzZOM1PFhG8PNhIg5e2tX
	QOaHSx2SXKMs8EacQMDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC1At-0006s4-BQ; Wed, 11 Mar 2020 13:13:27 +0000
Received: from mail-lj1-f194.google.com ([209.85.208.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC1Am-0006rZ-LH
 for openwrt-devel@lists.openwrt.org; Wed, 11 Mar 2020 13:13:22 +0000
Received: by mail-lj1-f194.google.com with SMTP id g12so2274686ljj.3
 for <openwrt-devel@lists.openwrt.org>; Wed, 11 Mar 2020 06:13:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kY1xgr+U+06YY7q8PUHTi34esUDGb58g3zxZceImaFE=;
 b=G4eQcKiTwHWV9PctgsW6UQiaXBv36B6EcaNdIOeN+PGsZlpO2SkZahAjiHChElZHwl
 OmUAusM/qZ8IYaXpF0tm9RcoglVgvRRcF8FjIGBWBucOpHee0mlDWIp39ZGtzYXIDoR2
 kV8l7prHrVx+O9XvEzLbiCfG7Hd6I/8fKp/rr7gaIqcgQrHScQCINDGWiXNQ0iX8tTyj
 dOry1OXe5Sk7Gqbt7J7QVonANqiJzgnaES0ucE9gJYc1m3mKjMOAyqePjjWhXWMNwhAC
 X8XtIYu+aGn30CKmO/MGurbHLNdxEO51MSzTID09C9dmqBXMTUY+CxUxhf8Ru/c9Wi/X
 NNKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kY1xgr+U+06YY7q8PUHTi34esUDGb58g3zxZceImaFE=;
 b=shzV6Berx1AXmwTtQsKiCYjs8YCymNE6rV02uIajMOz1RkULLoK+Sw/X+7vQJyW/qR
 gKLlm6Sjf6EoI1dXTxYTb0nW4CSY3XVwR2bC5oNcVaeVDbbuZQ/jZhRrkeg/FdJ8DA1T
 I7WNAW09fB1+yi2Bm8KNbwczAxmTtW516uBDu3+fXimY2BDKXHCh+bAWNu50Jl72yaP+
 Sk4h+RXaCdoqje1GWhEHLnykBNxkvrg9zGZassgnjwVX419Py2vb9RpmSD9Upvt65tVa
 tlKKnMAtyugzFVAZACpN7yKvyMiJa6lwRFweK9qla85Ox8N/EoI0A2X7EqcI16FIWV5Z
 p0wQ==
X-Gm-Message-State: ANhLgQ3L+0CY4o7U/BeEsBWBeinbiXCIjlvYzL//wof6BPQJJeuvthiB
 mpS6XjgrW3YGkTfp4rhP8tgIltWOs/0=
X-Google-Smtp-Source: ADFU+vvH2aTvJJ2JbiLi2K0porTKIQ44DaBKouQpLp9aWnq4CHujglLVq2rFlOZ8JqPbni8LmllYjA==
X-Received: by 2002:a2e:8945:: with SMTP id b5mr2079337ljk.140.1583932393205; 
 Wed, 11 Mar 2020 06:13:13 -0700 (PDT)
Received: from kristrev-XPS-15-9570.lan ([31.179.130.194])
 by smtp.gmail.com with ESMTPSA id g25sm25066596ljn.107.2020.03.11.06.13.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Mar 2020 06:13:12 -0700 (PDT)
From: Kristian Evensen <kristian.evensen@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 11 Mar 2020 14:13:10 +0100
Message-Id: <20200311131310.32594-1-kristian.evensen@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_061320_698913_04E67771 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kristian.evensen[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.194 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] netifd: Improve handling of device rename
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
Cc: Kristian Evensen <kristian.evensen@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

After an interface has been renamed on a "fast" device (for example
x86_64), the interface is sometimes not handled correctly by netifd.
Looking in the logs, I see the following messages when renaming fails:

Wed Mar 11 08:52:44 2020 kern.info kernel: [68383.522038] igb 0000:03:00.0 nlw_1: renamed from eth2
Wed Mar 11 08:52:44 2020 daemon.err netifd[2739]: __device_add_user(710): Add user for device 'nlw_1', refcount=2
Wed Mar 11 08:52:44 2020 daemon.err netifd[2739]: device_claim(413): Claim Network device nlw_1, new active count: 2
Wed Mar 11 08:52:44 2020 daemon.err netifd[2739]: device_claim(432): claim Network device nlw_1 failed: -1

Instrumenting netifd further reveals that there is a race between the hotplug
"@move" event and ioctl(SIOCGIFINDEX). When the above error happens, the
ioctl-call fails with ENODEV. Looking closer at the kernel code, it seems the
hotplug-event is triggered before the renaming is completed. The easiest way to
trigger the race, is if an interface name with the old name is not handled by
netifd and an interface with the new name is. If only the old name is handled,
or both names, I was not able to provoke the race.

When the renaming is complete, a NEWLINK-message is generated. This patch
modifies the logic surrounding renaming, so that we wait for the
NEWLINK-message before marking an interface as present. The changes made are:

* We only handle move-events for interfaces we know, and we return after
device has been set as not present.
* When we receive a NEWLINK message for an interface managed by netifd,
we call device_set_present. device_set_present is guarded by the same
checks as the add hotplug-event.

After these changes, renaming works properly on both "fast" and "slow"
devices. Removing a device is also handled correctly.

Signed-off-by: Kristian Evensen <kristian.evensen@gmail.com>
---
 system-linux.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/system-linux.c b/system-linux.c
index d533be8..aff67d6 100644
--- a/system-linux.c
+++ b/system-linux.c
@@ -590,6 +590,11 @@ static int cb_rtnl_event(struct nl_msg *msg, void *arg)
 	if (!system_get_dev_sysctl("/sys/class/net/%s/carrier", dev->ifname, buf, sizeof(buf)))
 		link_state = strtoul(buf, NULL, 0);
 
+	if (dev->type == &simple_device_type &&
+	    !system_if_force_external(dev->ifname) &&
+	    !dev->present)
+		device_set_present(dev, true);
+
 	device_set_link(dev, link_state ? true : false);
 
 out:
@@ -652,13 +657,15 @@ handle_hotplug_msg(char *data, int size)
 move:
 	dev = device_find(interface_old);
 	if (!dev)
-		goto found;
+		return;
 
 	if (dev->type != &simple_device_type)
 		goto found;
 
 	device_set_present(dev, false);
 
+	return;
+
 found:
 	dev = device_find(interface);
 	if (!dev)
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

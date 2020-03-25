Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A145193453
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Mar 2020 00:13:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2y4WQuATV0rzK8PIIcpGzEO8b4MnAwZknuVy5RwiI9U=; b=W+YZHqZIoUw688
	untlKqh31u8d0iG9zjCEnl/Q/mx9M5h3WMNyQr07DZ6GqPQAyIC98hLyJZRK0fpWrjSqMu3S0Lj8R
	aT8pS9Bf8MvXEkk3Nnfwfozfta2Mu3tuzsBnfLZg3Mur1R9hSUltA3Ggy+ZpdWIcpo5baGN4qiftY
	4qviiKH8xkjjXBz1SC70Mx4InNGe9Yu6neoaprl7VD8kzgbbnGP8F7F5eqRJVCkh6nDtJEkO/9WKF
	/6dn7JHe0SspaJuPLyeJBX6Y+gd/knrwMHOcXBPFVSKRnYKctANPRK4xdF1pzFNqU9AsTqVWbPbGZ
	zEuLFpEiUmGGbERONneg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHFDH-0004Wc-As; Wed, 25 Mar 2020 23:13:31 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHFD9-0004WL-FN
 for openwrt-devel@lists.openwrt.org; Wed, 25 Mar 2020 23:13:24 +0000
Received: by mail-pj1-x102a.google.com with SMTP id np9so1679746pjb.4
 for <openwrt-devel@lists.openwrt.org>; Wed, 25 Mar 2020 16:13:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oBjIT8qj14LlJk6WPyofBUAlJb1iHFe5qzhTPtQlfH8=;
 b=tYHjKRw5zvDdZOIKnrEpSLWaQWIDil5lo727/kFiuB/feZdOWIE2m8FwHbJI9Yq/Me
 ZkoSO4FU/tqzaEV6J1PhSgOsDEim277XIyhrTDAez5LbH/sLeHa1KA7LDsFFDyHqdNre
 gHBgO0nZda49yE977Wg2YieGABGb7GW/L4XC6oz+3hojPVKeo0y4YMeb5KylA3jazVQz
 9YpMTHcqQJnr8xUPbJCnB1pSyiC6WABvwiVhwHJN90gyGji0SWnO0r1Hcul2OcKn8IuW
 olsh6E+kMQ3OZWJhZFydm8ckqnzvpM92velMDG0NB2ebHmPLpTEI4xmRBauA2oXCNAfT
 Rrzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oBjIT8qj14LlJk6WPyofBUAlJb1iHFe5qzhTPtQlfH8=;
 b=JQREuLEMZnhsHKaREv3qpq8NDhYmy79x+IsS8yKifc5WqpSgGyvKutzldIScEkzrXD
 3OLcBeb1t2LIk60bZIfahRlbTkcPkuH9lAKQglRWeJH01ghfctAxWy/jk7yU2BfL7DOl
 taegXGJp//z9VQ8nzvFRJadWKWrlnmUgauHD6Bc9H/TNH8VDJLBnwadEt6NSC+q8GTRP
 v+xPuKj8cjW8Bh2Y5J9piB5OQnyNQnZdWR5wFSJcwlqmV5VKw5iIM2cMFcFyI02XcxIo
 WjmHjCGaaeX4kuH6DlafAzV9VcV2tLQcavmx81V9Eg7T6Cz46SfBLDJzR2z+mGSWZ8Tc
 xNSw==
X-Gm-Message-State: ANhLgQ3CJwDZvp0xD/2MVDfpCjr0Wqzdn8WJZBW9p4cnV95SRaM33NgZ
 JPgyu9U85Hjg1rCd6y+RZojnRcReovA=
X-Google-Smtp-Source: ADFU+vtDPyZlzVM7qWHW8UAvdv6T8mwHfH4Cz3TJtIkK2uugvCac3xrQGTdyrUMHavn5hxnsIZXpcw==
X-Received: by 2002:a17:90a:7184:: with SMTP id
 i4mr6113165pjk.40.1585178001159; 
 Wed, 25 Mar 2020 16:13:21 -0700 (PDT)
Received: from localhost.localdomain (astound-69-42-19-227.ca.astound.net.
 [69.42.19.227])
 by smtp.gmail.com with ESMTPSA id x24sm175625pfn.140.2020.03.25.16.13.20
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 16:13:20 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 25 Mar 2020 16:13:19 -0700
Message-Id: <20200325231319.6778-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_161323_515339_C250D8B1 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCHv3] odhcpd: fix compilation with musl 1.2.0
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

SYS_clock_gettime is gone with musl 1.2.0. Switched to the function.

Also fixed two format strings that fail as time_t is 64-bit with 1.2.0.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 v3: no need for linking to librt
 v2: switch to function
 src/dhcpv6-ia.c | 8 ++++----
 src/odhcpd.c    | 2 +-
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/src/dhcpv6-ia.c b/src/dhcpv6-ia.c
index 1a13945..01b0939 100644
--- a/src/dhcpv6-ia.c
+++ b/src/dhcpv6-ia.c
@@ -338,12 +338,12 @@ void dhcpv6_ia_write_statefile(void)
 					odhcpd_hexlify(duidbuf, ctxt.c->clid_data, ctxt.c->clid_len);
 
 					/* iface DUID iaid hostname lifetime assigned length [addrs...] */
-					ctxt.buf_idx = snprintf(ctxt.buf, ctxt.buf_len, "# %s %s %x %s%s %ld %x %u ",
+					ctxt.buf_idx = snprintf(ctxt.buf, ctxt.buf_len, "# %s %s %x %s%s %lld %x %u ",
 								ctxt.iface->ifname, duidbuf, ntohl(ctxt.c->iaid),
 								(ctxt.c->flags & OAF_BROKEN_HOSTNAME) ? "broken\\x20" : "",
 								(ctxt.c->hostname ? ctxt.c->hostname : "-"),
 								(ctxt.c->valid_until > now ?
-									(ctxt.c->valid_until - now + wall_time) :
+									(int64_t)(ctxt.c->valid_until - now + wall_time) :
 									(INFINITE_VALID(ctxt.c->valid_until) ? -1 : 0)),
 								ctxt.c->assigned, (unsigned)ctxt.c->length);
 
@@ -368,12 +368,12 @@ void dhcpv6_ia_write_statefile(void)
 					odhcpd_hexlify(duidbuf, c->hwaddr, sizeof(c->hwaddr));
 
 					/* iface DUID iaid hostname lifetime assigned length [addrs...] */
-					ctxt.buf_idx = snprintf(ctxt.buf, ctxt.buf_len, "# %s %s ipv4 %s%s %ld %x 32 ",
+					ctxt.buf_idx = snprintf(ctxt.buf, ctxt.buf_len, "# %s %s ipv4 %s%s %lld %x 32 ",
 								ctxt.iface->ifname, duidbuf,
 								(c->flags & OAF_BROKEN_HOSTNAME) ? "broken\\x20" : "",
 								(c->hostname ? c->hostname : "-"),
 								(c->valid_until > now ?
-									(c->valid_until - now + wall_time) :
+									(int64_t)(c->valid_until - now + wall_time) :
 									(INFINITE_VALID(c->valid_until) ? -1 : 0)),
 								ntohl(c->addr));
 
diff --git a/src/odhcpd.c b/src/odhcpd.c
index 4b8e589..26094b1 100644
--- a/src/odhcpd.c
+++ b/src/odhcpd.c
@@ -440,7 +440,7 @@ int odhcpd_urandom(void *data, size_t len)
 time_t odhcpd_time(void)
 {
 	struct timespec ts;
-	syscall(SYS_clock_gettime, CLOCK_MONOTONIC, &ts);
+	clock_gettime(CLOCK_MONOTONIC, &ts);
 	return ts.tv_sec;
 }
 
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

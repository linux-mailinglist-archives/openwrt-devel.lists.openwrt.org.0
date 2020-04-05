Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A189A19EEAB
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Apr 2020 01:48:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=czxcDL4xsEtANEmuLJQ4ey1LNRVXZCdzKq+CZN5FXpE=; b=rLym1DOtQ8IEwR
	SFyR3c4WBDDRd0V2KE9V3BAW7wlC/EYAWXqh1GZ+btCc6bADGJw0Q0eV/xsQFCrROF5wXiMMmEdrE
	ElvcJDEqYoioDBIE5Z//SwzWcX5KLlQe4AjD3VK7co+e2U+fpx2v5XW9SDqE77lfeBmliesz5XNI6
	JkYeTckdGsVoRQFWlDj8N8dTa43SBWYbsCLQzTV7UBu2GgGmE2oln0bUvIam21hEgIcgpeoV+tERP
	oG5x/J4KoUm8F6pDdPxEb70kzYVBf09eCz+6kgQhhhArJl/wxE96D37QF5rXdYtNSDj39jDVz1dsd
	2t9rkYSS0r7plWs2S8ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLEzs-0004H1-HL; Sun, 05 Apr 2020 23:48:12 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLEzn-0004Gb-AW
 for openwrt-devel@lists.openwrt.org; Sun, 05 Apr 2020 23:48:08 +0000
Received: by mail-pj1-x1042.google.com with SMTP id l36so5716623pjb.3
 for <openwrt-devel@lists.openwrt.org>; Sun, 05 Apr 2020 16:48:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TDoGSpFDF2R8P11qVyivnLcYpeD+lJywT/n/SxiHhgU=;
 b=WYlSCvFFe7+sOHe9jSQd3WnTDght1QJ84e3WmFDm/XLqohPX/Mz9DXTeXgEGmUW1nD
 fS3L/NaFyTyk/S90Xc1OjsZUZdj+bCyrivA9dmIium6zP+eHjF1CIRoGbGFvM4a0SCKR
 LjsssXll5fn62kufLUucQfPuFkNMtw2s/UtP/WCijz9P79n7OTW1GZ3K4rfFvpRK8Ozg
 NWGmO5OpwEidzzKqYBAnSjW4aXz7OMxpsg0hPRUEA1+C82owiCTgfPuulPbq7IKHP70F
 HlyzWKSljlSTMFdbgqz06YJCop8WNCIad+8FowMqRuYaSU7bNQU8qJXIQnr16i039+HE
 A+6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TDoGSpFDF2R8P11qVyivnLcYpeD+lJywT/n/SxiHhgU=;
 b=S+cNi8S1Cv4AjsyW6vzejDQTN5w/DjL7RemyEb1TXP/JYBJk21RiObUKt+PbLaixlc
 lbLbqkOt0AMFPK/nBQ4XSBUSvBVYw83DkTVdzJSIFVeex/L1TiLtJQYRiY7+3gMHGIG+
 5YbkONkQ+ghh1naUJ+Rx/MrEyG48XKn5URPUEBfD1RVN52dIQWWzKOh/KGkieviZ3dt+
 J+1ld8JR6viqRGcMYrCgJg8jV+qfApyPUhY7eAhQv3BIVmKmAoWL7IegL6q+iLtd5WX4
 4i8hjyETgc5BaPumAP6bjMYm2+JYEo+z5VfXa2KwDNsQYee1fg+44/o0ujE/UnIjfma9
 TJEg==
X-Gm-Message-State: AGi0PuZqHxKsYSOF+reaLsdJvVsGcy5n4ogB7IVjoqq4obx7/v3Xawb7
 wHj7vbVUi0RVmlkdnm5Z1S1qc963Nq4=
X-Google-Smtp-Source: APiQypKo2GneujR0bpDChNzHxpuGdvL+GpjMI2ChTZmbISTa6xtAIUeQNdkjxE62exjUeX6L2hpobQ==
X-Received: by 2002:a17:902:6b86:: with SMTP id
 p6mr17950614plk.150.1586130485614; 
 Sun, 05 Apr 2020 16:48:05 -0700 (PDT)
Received: from localhost.localdomain (astound-69-42-19-227.ca.astound.net.
 [69.42.19.227])
 by smtp.gmail.com with ESMTPSA id y30sm10286995pff.67.2020.04.05.16.48.04
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Apr 2020 16:48:05 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  5 Apr 2020 16:48:03 -0700
Message-Id: <20200405234803.631826-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_164807_386438_1713A36D 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] odhcpd: fix compilation with musl 1.2.0
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
 src/dhcpv6-ia.c | 8 ++++----
 src/odhcpd.c    | 2 +-
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/src/dhcpv6-ia.c b/src/dhcpv6-ia.c
index 1a13945..93bbe45 100644
--- a/src/dhcpv6-ia.c
+++ b/src/dhcpv6-ia.c
@@ -338,12 +338,12 @@ void dhcpv6_ia_write_statefile(void)
 					odhcpd_hexlify(duidbuf, ctxt.c->clid_data, ctxt.c->clid_len);
 
 					/* iface DUID iaid hostname lifetime assigned length [addrs...] */
-					ctxt.buf_idx = snprintf(ctxt.buf, ctxt.buf_len, "# %s %s %x %s%s %ld %x %u ",
+					ctxt.buf_idx = snprintf(ctxt.buf, ctxt.buf_len, "# %s %s %x %s%s %" PRId64 " %x %u ",
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
+					ctxt.buf_idx = snprintf(ctxt.buf, ctxt.buf_len, "# %s %s ipv4 %s%s %" PRId64 " %x 32 ",
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

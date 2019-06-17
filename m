Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 104D748FE7
	for <lists+openwrt-devel@lfdr.de>; Mon, 17 Jun 2019 21:46:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:From:
	List-Post:List-Id:Message-ID:MIME-Version:To:Date:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=LK1WSabR/twtBWXHaiRRubgit+7nBhjFENBDKEsWXpA=; b=m4k
	Ksd/tJoJtsmZsKTUMCdOQCQ5ElpJBULtuzSGB9T0cXmIc65WV12xOyeZT3RjYI2tOLxxZjxXMNX0O
	37w4IDhmrZjB6PaYCEDPkh4VNnb1v1J2X+fq+5zPIwNsmB75jjyCBSJLNwWjsWsBlU5UAnOkdeaTW
	7w+w7xS7WQ02tWI8e+iv1HUysa9A0wsj/BxXsPjni1s6e8hTjKn0lYWQkM5t/tlVcIl61VXULvjp+
	ju/HFgJsNA7c8GkaPRsFRLkGhDzGW15+iQpWm1a7s2q3LfDR8MPnmT/b3HnrhOPzsMWcOyYh6gECw
	H1f67l73q0SPauAg3eRH88E68EArmGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcxZm-00068f-PE; Mon, 17 Jun 2019 19:45:58 +0000
Date: Mon, 17 Jun 2019 19:45:34 +0000
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
MIME-Version: 1.0
Message-ID: <mailman.2650.1560800749.19300.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Kristupas Savickas via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Kristupas Savickas <kristupas.savickas@pm.me>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: [OpenWrt-Devel] [PATCH] libubox: add macros for remaining logging
 severities
Content-Type: multipart/mixed; boundary="===============1519926826741639781=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1519926826741639781==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============1519926826741639781==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail4.protonmail.ch ([185.70.40.27])
	by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
	id 1hcxZa-00067w-QE
	for openwrt-devel@lists.openwrt.org; Mon, 17 Jun 2019 19:45:48 +0000
Date: Mon, 17 Jun 2019 19:45:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me; s=proton;
	t=1560800742; bh=V3vuGOKj7FcVuj5r6zm3fZzZ53Xbg4058gmWGdpouXg=;
	h=Date:To:From:Reply-To:Subject:Feedback-ID:From;
	b=oBzfO7EsmOz2uHn3ZI26Tk6JNNcu/HbQytLc5Ujx9N3whZzQ95HE3wjF4eycFCNU1
	 3STmEkC/PLUEQ1CYkwgKFK3+lQC+fYhf4Kz2UTz5EPcaU+khknnhUkToOO4QCCMI2a
	 s4j8Oj5FKtTb2X7Nv/SWcz0XVegnYAqnOIrKNvocrgWlI2MIp6CL0ZjIQWa00Lsv+E
	 3G5EE7G46QxpZgvBlLsuHrzD6qpBaKJXdG+/+sG7e2Slgad6k1o/sNRSToq1cOpFCM
	 kKXvoLnIM1Nn199wUx+oob5GOVCjwZijPhgaVnnoiMBpqxfto9gFqsWm8V2uPJYrAm
	 Pc/rvpFzgIwgw==
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
From: Kristupas Savickas <kristupas.savickas@pm.me>
Reply-To: Kristupas Savickas <kristupas.savickas@pm.me>
Subject: [PATCH] libubox: add macros for remaining logging severities
Message-ID: <rb09oxTmTs-fZNqagXF-g_dmrLVKW9EruPFd7Jb_HrndGapZMD7AgoUBBxKlWAghXQSx0l0yG5MG7VQJbHndcpf2z4ap6IibUr_mU_kmljo=@pm.me>
Feedback-ID: OO6Qekt5SozZRcQsppu_sIiJNye2UAmckYzS0yD3RixZpqot4b-pS2NyWLUlL11YXq5tWWT3VHHqU36k-t5Row==:Ext:ProtonMail
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.2 required=7.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF autolearn=ham
	autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.protonmail.ch
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_124547_168403_489552C4 
X-CRM114-Status: UNSURE (   4.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [185.70.40.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature

From b9d08136e73cbe56e794e6d0c23ca10684d9e37d Mon Sep 17 00:00:00 2001
From: Kritstupas Savickas <kristupas.savickas@pm.me>
Date: Mon, 17 Jun 2019 22:38:55 +0300
Subject: [PATCH] libubox: add macros for remaining logging severities

Signed-off-by: Kritstupas Savickas <kristupas.savickas@pm.me>
---
 ulog.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/ulog.h b/ulog.h
index 46d3c77..9892100 100644
--- a/ulog.h
+++ b/ulog.h
@@ -35,9 +35,13 @@ void ulog_threshold(int threshold);
 void ulog(int priority, const char *fmt, ...)
        __attribute__ ((format (printf, 2, 3)));

+#define ULOG_DBG(fmt, ...) ulog(LOG_DEBUG, fmt, ## __VA_ARGS__)
 #define ULOG_INFO(fmt, ...) ulog(LOG_INFO, fmt, ## __VA_ARGS__)
 #define ULOG_NOTE(fmt, ...) ulog(LOG_NOTICE, fmt, ## __VA_ARGS__)
 #define ULOG_WARN(fmt, ...) ulog(LOG_WARNING, fmt, ## __VA_ARGS__)
 #define ULOG_ERR(fmt, ...) ulog(LOG_ERR, fmt, ## __VA_ARGS__)
+#define ULOG_CRIT(fmt, ...) ulog(LOG_CRIT, fmt, ## __VA_ARGS__)
+#define ULOG_ALERT(fmt, ...) ulog(LOG_ALERT, fmt, ## __VA_ARGS__)
+#define ULOG_EMERG(fmt, ...) ulog(LOG_EMERG, fmt, ## __VA_ARGS__)

 #endif
--
2.22.0



--===============1519926826741639781==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1519926826741639781==--

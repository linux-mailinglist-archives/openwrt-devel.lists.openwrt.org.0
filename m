Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56A27184C22
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Mar 2020 17:14:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xBlVOhQxlQ20s6PA7vWy4X5MmRL32IEGimVH4aH9AYY=; b=oEZFUWIG04e7OgQZqiq/Nu+6bo
	8a2qNH45TkqI4y8u42nZKBOCsOmfv5+3iRPFqBbIl5mnP5RjTdm/fvrOOLqvRq0tf3pueoeHonzuE
	Nk2RMxYhX+MAZ/kbP7vrslf4GRMLvHDlNXpKhBnKq+kd0UvePrqYjnneK5nh7ZGc36+cDYCQOEeQf
	9NRXnvDemvXS4UzImUu/haebrnJOHorUd6ekYWsgr5rIYj07sqORw8a1QwQ2FZgbDqsiYeI4dg+gW
	hkz9TsiVgNPBCfR0lilNh2QC3ze/jI0uGtm4ATQZANArLtsvTv0zJlgCILdZJRqzjD0iTqp8tOVU6
	Muu7W7ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCmwv-00068t-V4; Fri, 13 Mar 2020 16:14:13 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCmwG-0005Pu-HE
 for openwrt-devel@lists.openwrt.org; Fri, 13 Mar 2020 16:13:40 +0000
Received: from buildfff.adridolf.com ([188.193.174.43]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1Mati7-1jiplb1ZGd-00cS1u for <openwrt-devel@lists.openwrt.org>; Fri, 13
 Mar 2020 17:13:28 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 13 Mar 2020 17:11:21 +0100
Message-Id: <20200313161122.32858-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200313161122.32858-1-freifunk@adrianschmutzler.de>
References: <20200313161122.32858-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:qekDDC+S7+WvGUM0rvcu6EPFP5jFHA/kPbI5ILBZA5BzFGDIOCa
 cEc383piE+5F9+6+BnkHYToRA9uDf2yykhgWud7f2KHt8Z+R6uV8UKRA976n78pyXHTcOSS
 DOK8muMSw/CLRXieEsxBcn4M4peNXm5R7LT9pfaCsPKP93XicV0aRfGst6FOy0y7yj/UGpv
 6uTyrUpqW2fn78+ep0ChA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:DO4drNAFIDE=:pNdgYdk5aHgHbSgqeFyUC3
 uxSP8WK9tnUUaFhWRS2X4nRbHlSTQL06faqGxQyCSRj44By5SCYdqaPCJR+c1MNa/2OyuUqrA
 yhFteZJirvxy5QEfaeEBoi7ZzwllgLjs/hs6kBJjoFSAuVEz5FYcy/klvsXn/0d4PYBwmGEwU
 owxqLNQZ0ZV84aIpSOEJGcrrJd6iH/WhzSrR7zuWwA25mRnWQbEmkG53bs25sm/l8T7iMvl1A
 4ukVUB8CNoSDfSm7oGALX4KHxXRpEwRq8MfO/4zs7JbE+32MZhG2CDSlGu1cEdYi9o385QTa9
 ioGOsV0+4ME8zMraaJre3/TrxUdmDpEonL66x1vS0rr094ge7hU8EL3cz+m+UI2yY9O/iudZO
 lptXgWsiO73ehBjXfdcaRb2mtIYTa6xHeK4PFtKpL8ELHrX9+Bcx/s2VOfLvfipgELVBVCylP
 dogh4XlmIh11v+u2s7lDdtfjIKTiexKCV2yxhIk9FaRYurX/zPcDYqL/atbAMlXnvzgsrZSMn
 aqtjQB4Clw1u5GBycjmzhsn7jv841qiJZTgOyS9S3OZlCCz/ECz2Y4fxA5lttiBRZ7qdIVbAP
 EtSXScvjpMEQna3B3qeFMBAaDsKILyfTtqdnAeOgbEZRv5KQaeOjxK8FW9AVbgfTltWS3nv0S
 OTA9dH7T0Ly2ttM7sCO9JM5O16g7+OlqFBvgLhORQTmHDBXqCoa01E2uTXYXC9guEEgPqYtB4
 15TxoUtmKIkdOKrVTc4MTp02yIes4E4Fz4Bca50CDbGa8cgFLANPqV2JjChvFeHQ2y85uVArP
 wB6t8W4kKYl4qvYIqmsgkhZjFgiuSETuJSNG+y88NeCM3I1MIMkYl6dTKwG09Z4gF6wsW6/
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_091332_890775_79FA5499 
X-CRM114-Status: UNSURE (   7.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 2/3] base-files: source functions.sh in
 /lib/functions/system.sh
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

The file /lib/functions/system.sh depends on find_mtd_index() and
find_mtd_part() located in /lib/function.sh, so let's source that
file.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 package/base-files/files/lib/functions/system.sh | 1 +
 1 file changed, 1 insertion(+)

diff --git a/package/base-files/files/lib/functions/system.sh b/package/base-files/files/lib/functions/system.sh
index c9f8eb0c31..c7aa7bf75c 100644
--- a/package/base-files/files/lib/functions/system.sh
+++ b/package/base-files/files/lib/functions/system.sh
@@ -1,5 +1,6 @@
 # Copyright (C) 2006-2013 OpenWrt.org
 
+. /lib/functions.sh
 . /usr/share/libubox/jshn.sh
 
 get_mac_binary() {
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

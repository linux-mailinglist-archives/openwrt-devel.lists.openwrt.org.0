Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD311CCBA1
	for <lists+openwrt-devel@lfdr.de>; Sun, 10 May 2020 16:49:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=W4d9Mf4gN/tc2CtB6R9mtEI1+F4lg/s8ralk2/Ksocg=; b=heZI4nvUj74scF5ylXq/ctvBNJ
	tagb1nGkyjbfuQOI0EuTQFMqbn/JkmYMTMsQ191mDdDqdDdDxrxWfAr3wk4SXDNGg2W3Fw+xfMVft
	AZYB3vzPS0Ipmk4ZK4ocBGrzXvTJMrnJG0S+IlGL/WPgjLBI1D5GwNo8RXRnARp/3wcQAx0fBM0Xk
	GmnW23AeWS89kxDs7Wb92cORJsdMXg+/wcmh/GA0ZKoAdwjOUTRFljxJluaSFLtzsIuwlRYdeUdYq
	yX8gMlxesmAHM3sJrppyJM9vZpl4Q98NbGB7WGA2rRqFwrgyuwh8ALky2infrDwGIiWG099jaEzjT
	H1l0rtEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXnGg-0006ph-Fq; Sun, 10 May 2020 14:49:26 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXnG5-0006CO-Cz
 for openwrt-devel@lists.openwrt.org; Sun, 10 May 2020 14:48:53 +0000
Received: from buildfff.adridolf.com ([178.26.243.176]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MyseA-1jCXJm0Ugk-00vv3z for <openwrt-devel@lists.openwrt.org>; Sun, 10
 May 2020 16:48:44 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 10 May 2020 16:47:54 +0200
Message-Id: <20200510144754.10751-10-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200510144754.10751-1-freifunk@adrianschmutzler.de>
References: <20200510144754.10751-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:KDcpOA2TKplufDjabBdWoOMVJWKdkfRhdaj9SQR+wxABGkIPFSW
 t10gp0QFEBmxEEX8Qhq9JCQTnCVs2uhEdrijB9BQN0jiEdVxqVWhR0bxPwBAodjuC1xZRqj
 CDfFWyv47YDIFDpAidutyq8L4D3hwbk0TQezc/pROpVBmB6FGN0x77GeiBNEohN8U6tbXxe
 unR8BDV+X73tcu3nJQvvg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:4G83bEGTus4=:lc6lpVS+S5KQ9iNkbDBi6Y
 UzmToZaQTFJNDGe1f9riGC+howzrGdvjsp5v0jplXf8bHLn8gmmblkhw/ml2j/njv4ndLA82D
 qKtl2vLl4GKl4Tk8i9jU7dD0vH1NTFRLEV3dqTrIilmULOyd41vrNzEXNL/j/7SL4mbTFmizZ
 5n38ah4nq7wEhSL7UJTz48+z0NKtittlT3kWR4+qst4QWuye3E6r4S4Ze94iKBLMmU5BKGoRx
 DEkVmT7XYqyun41B08H8SEZ3U/nJOI2wd1QXYz1Ul8KEb/7ZS77kvbdrT2oopF8VqUQhUvBlr
 XKtGD8pjqoYgzKkQGYoX5N0YuE9Kh/yYZOsPbOv709d+f9PFlnCXE35fsu8xzlqj/vMGu0xC7
 gq4UHUCUgen1xpr4tQVD5UZO9ZiVD2lvgg+Pgu1b9xWSlb0Vw/TwbI0C9eFCJZZOWQJ/S3wXC
 rDdWXfQjVtD94M9VCMYDpSgX5QYi89c+pn5c9XglC2KUAWvNVdAz7FJ8GXgG9cY7c1qTik1x1
 N7LObgHcqTv9hxmWpwonM4DAswfmHWWgn30csNKt1xi1eFoBFs36KpcR7lGjl5UiJYeQcP8Ip
 a/mWQ16A05e2+QSKp0UFp7AkAOPLpVvE7ZfN4FTBVcXWw4VfBMOJiIAZGb7p/RQ1PQL9hkk47
 VckVJdmZt32lrMaiTOABNT8NK1t8GRX6dBq+gxQusCZfD78T/PxKJkETnIQIGBExtsZrjx0Pv
 MQ7K9tUQLVp9iPwGJUG9vbUDHHcXk7vDCapXMsmKqYTBG74TJvVzeH7u0VBVCUCydC4RTepx3
 DaONT+iaga/w2hcfDZ0BLXmJDmXjMJBx+FsW6tMfrb/Pnj9qESO0SzLFaVwecmhaUNEof4r
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200510_074849_753217_1CE71712 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.130 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 10/10] base-files: remove useless cat
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

Check file contents directly instead of using cat.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 package/base-files/files/sbin/pkg_check | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/package/base-files/files/sbin/pkg_check b/package/base-files/files/sbin/pkg_check
index 775e401b26..28e87925ae 100755
--- a/package/base-files/files/sbin/pkg_check
+++ b/package/base-files/files/sbin/pkg_check
@@ -91,7 +91,7 @@ while [ "$1" ]; do
 
 	# Do we have changed files or not?
 	if [ -z "$ERR" ]; then
-		[ $QUIET = yes ] || [ -z "$(cat "/usr/lib/opkg/info/$1.files-sha256sum")" ] || echo "$CHECK" | sed 's|^|   - |'
+		[ $QUIET = yes ] || [ ! -s "/usr/lib/opkg/info/$1.files-sha256sum" ] || echo "$CHECK" | sed 's|^|   - |'
 		[ $QUIET = yes ] || echo " * Package $1 is ok"
 		[ $QUIET = yes ] || echo
 	else
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

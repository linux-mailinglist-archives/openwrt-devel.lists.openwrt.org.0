Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC8C5FFC20
	for <lists+openwrt-devel@lfdr.de>; Mon, 18 Nov 2019 00:01:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=I5LlwxDSPiAB7ag+CRZQgZROOFw05M6nD0o7Q/H6mKM=; b=XQcL8Y33cFm1Is
	U55qHfRFSMZ9pKI98GkyTjORgnxoef5UdzONWPpujC3ihqt4OA9ddUUw47DBGhb7hwnxL9krDYqtv
	KeD97dJ1strrH1Z86AkYS/ZU1Xz0po2EcU4y3fggTWFaeSNbznaeli52f4ozE0wIoQfOfe9J3HAzg
	8njSO41N5cp4kuJM2p5xIno85UqibJLotLXp8iMK4KDKvouIcwyijin4qIEAMlwQhAdI+G9hLsA80
	m73ZltwbrtgpRLRNqTLRvXA0jyLZTR1l6JoNjdfR7YKfLsdlweNRZL0un0Al6/AuM/zC75Ei8x+Hk
	iGytud9BwjVr+V8GtnVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWTXE-0002qJ-3p; Sun, 17 Nov 2019 23:00:48 +0000
Received: from mout-u-107.mailbox.org ([91.198.250.252])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWTX7-0002p8-CF
 for openwrt-devel@lists.openwrt.org; Sun, 17 Nov 2019 23:00:44 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-u-107.mailbox.org (Postfix) with ESMTPS id 47GSGx26yKzKmmM;
 Mon, 18 Nov 2019 00:00:25 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter01.heinlein-hosting.de (spamfilter01.heinlein-hosting.de
 [80.241.56.115]) (amavisd-new, port 10030)
 with ESMTP id 9gGl8JbyGqPR; Mon, 18 Nov 2019 00:00:22 +0100 (CET)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 17 Nov 2019 23:59:37 +0100
Message-Id: <20191117225937.5599-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_150041_722773_BD50EE34 
X-CRM114-Status: GOOD (  20.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] wireless-regdb: Make it build with python2
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This backports a patch to build it work with python2 in addition to
python3.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---

After this patch went into master I would like to backport all the 
changes for wireless-regdb from master to OpenWrt 19.07.
There are already some changes to the regulatory rules in this database 
and I would like to stay close to the current legal guidelines for
OpenWrt 19.07 as well.

 ...regdb-fix-compatibility-with-python2.patch | 58 +++++++++++++++++++
 1 file changed, 58 insertions(+)
 create mode 100644 package/firmware/wireless-regdb/patches/010-regdb-fix-compatibility-with-python2.patch

diff --git a/package/firmware/wireless-regdb/patches/010-regdb-fix-compatibility-with-python2.patch b/package/firmware/wireless-regdb/patches/010-regdb-fix-compatibility-with-python2.patch
new file mode 100644
index 0000000000..81f50f5dc0
--- /dev/null
+++ b/package/firmware/wireless-regdb/patches/010-regdb-fix-compatibility-with-python2.patch
@@ -0,0 +1,58 @@
+From 651e39dee8605995b736b6056c6f7dc5c5a9c948 Mon Sep 17 00:00:00 2001
+From: Johannes Berg <johannes.berg@intel.com>
+Date: Thu, 22 Aug 2019 21:46:27 +0200
+Subject: [PATCH] regdb: fix compatibility with python2
+
+Various changes in the commit mentioned below broke
+compatibility with python2. Restore it in a way that
+makes it worth with both versions.
+
+Fixes: f3c4969c2485 ("wireless-regdb: make scripts compatible with Python 3")
+Signed-off-by: Johannes Berg <johannes.berg@intel.com>
+Signed-off-by: Seth Forshee <seth.forshee@canonical.com>
+---
+ db2bin.py  | 2 +-
+ db2fw.py   | 2 +-
+ dbparse.py | 3 +--
+ 3 files changed, 3 insertions(+), 4 deletions(-)
+
+--- a/db2bin.py
++++ b/db2bin.py
+@@ -118,7 +118,7 @@ reg_country_ptr.set()
+ for alpha2 in countrynames:
+     coll = countries[alpha2]
+     # struct regdb_file_reg_country
+-    output.write(struct.pack('>BBxBI', alpha2[0], alpha2[1], coll.dfs_region, reg_rules_collections[coll.permissions]))
++    output.write(struct.pack('>2sxBI', alpha2, coll.dfs_region, reg_rules_collections[coll.permissions]))
+ 
+ 
+ if len(sys.argv) > 3:
+--- a/db2fw.py
++++ b/db2fw.py
+@@ -85,7 +85,7 @@ countrynames = list(countries)
+ countrynames.sort()
+ for alpha2 in countrynames:
+     coll = countries[alpha2]
+-    output.write(struct.pack('>BB', alpha2[0], alpha2[1]))
++    output.write(struct.pack('>2s', alpha2))
+     country_ptrs[alpha2] = PTR(output)
+ output.write(b'\x00' * 4)
+ 
+--- a/dbparse.py
++++ b/dbparse.py
+@@ -1,6 +1,5 @@
+ #!/usr/bin/env python
+ 
+-from builtins import bytes
+ from functools import total_ordering
+ import sys, math
+ from math import ceil, log
+@@ -359,7 +358,7 @@ class DBParser(object):
+         for cname in cnames:
+             if len(cname) != 2:
+                 self._warn("country '%s' not alpha2" % cname)
+-            cname = bytes(cname, 'ascii')
++            cname = cname.encode('ascii')
+             if not cname in self._countries:
+                 self._countries[cname] = Country(dfs_region, comments=self._comments)
+             self._current_countries[cname] = self._countries[cname]
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

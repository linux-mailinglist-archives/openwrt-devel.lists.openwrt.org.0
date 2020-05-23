Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1552C1DF71B
	for <lists+openwrt-devel@lfdr.de>; Sat, 23 May 2020 14:08:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CNzMSWYc7Es83LRM7OkR1dtdPP0JkfT6wbf3sYri9lM=; b=QskiuUeKCQGkPC
	Cqd42NPASZv4FmiflOEguNz7JdBH5AiDSaU5EMqWrGSmUeDIARzmal/h8qSh18bqBv+vs4O78Y3Ar
	Z88r+9geT0nQNlPAS5JFQZiI9CoMe0UmiS5ogwJygOGtX5SeguuIg1KipWblUSYqMA36WmoTeoxaJ
	QdUAZQlOTG6ijSEhwwlwJLtCDvv1DERhmJMINd0m+bgRAmKdJTSEYYJmOvsRHZdypFpFaCxzDl105
	lve+wigyRPnryN5WLBImlxVKXZU1JB4Zevbh0aXcEnEbPaK6EYYpPiZ4BEHCS6lDpwPFIPA2SB5yU
	YZDz06pWYL+OPCVGQzrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcSx9-0007S0-BS; Sat, 23 May 2020 12:08:35 +0000
Received: from orthanc.universe-factory.net ([104.238.176.138])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcSx2-0007RX-8R
 for openwrt-devel@lists.openwrt.org; Sat, 23 May 2020 12:08:29 +0000
Received: from localhost.localdomain (unknown [IPv6:2001:19f0:6c01:100::2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by orthanc.universe-factory.net (Postfix) with ESMTPSA id A039926457;
 Sat, 23 May 2020 14:08:25 +0200 (CEST)
From: Matthias Schiffer <mschiffer@universe-factory.net>
To: openwrt-devel@lists.openwrt.org,
	ynezz@true.cz
Date: Sat, 23 May 2020 14:08:20 +0200
Message-Id: <6f8966b5c0646622a9dee50f8fd28e7fc1a582a0.1590235652.git.mschiffer@universe-factory.net>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200517081350.GG69771@meh.true.cz>
References: <20200517081350.GG69771@meh.true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_050828_451924_2C5C21C8 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH v3] blob: make blob_parse_untrusted more
 permissive
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
Cc: Matthias Schiffer <mschiffer@universe-factory.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Some tools like ucert use concatenations of multiple blobs. Account for
this case by allowing the underlying buffer length to be greater than
the blob length.

Signed-off-by: Matthias Schiffer <mschiffer@universe-factory.net>
---

v2: added testcase
v3: fixed typo in commit messages I forgot in v2. Ugh


 blob.c                            |   2 +-
 tests/cram/inputs/signature.ucert | Bin 0 -> 516 bytes
 tests/cram/test_blob_parse.t      |  46 ++++++++++++++++++++++++++++++
 3 files changed, 47 insertions(+), 1 deletion(-)
 create mode 100644 tests/cram/inputs/signature.ucert

diff --git a/blob.c b/blob.c
index 528e717615d6..433becb904f5 100644
--- a/blob.c
+++ b/blob.c
@@ -277,7 +277,7 @@ blob_parse_untrusted(struct blob_attr *attr, size_t attr_len, struct blob_attr *
 		return 0;
 
 	len = blob_raw_len(attr);
-	if (len != attr_len)
+	if (attr_len < len)
 		return 0;
 
 	memset(data, 0, sizeof(struct blob_attr *) * max);
diff --git a/tests/cram/inputs/signature.ucert b/tests/cram/inputs/signature.ucert
new file mode 100644
index 0000000000000000000000000000000000000000..4a1da75d0d8daf4054c2aeff6d79ad07b0699535
GIT binary patch
literal 516
zcmbu5J(HSH6o!vQcCywMThd#os3@7)LNSVp^5rU0?Cb^Z%7?%exUi(mZu<0T@()s_
z-(r8*qNy^IF4Z~bY2Nd^05t~ye$XgOXqsV%vEwkrQTB;Ry+c&pR>=goWNb9-Bgg5m
zJmz{9vg+Dyvvg5cTVhi>wRLM42qI5f-LXBLQfHVfBGc36LaD7?-?9ic^+IO1Zcxn7
z${A39$F}x*zUj)`fQ;Mffo?hb%Yi8UKr(ux<rt~G+d9+$-o667!Ut;OB!h1N4fuFo
zvy$NIbAZ|lzztmI=;%3*NgQ6_{jbLFKO8?1FTp9wF8txU*nb8H;fheJ@;bwRxJ$8(
zj*LaUqjR?ZTekBVDd{PX4BDKYq?KsS^+A+R4uwy&nB)Cs=5p9`XSo{JFQEWGtNFhj
z^V=OS%vU811+}+mds9VH_eRp%=XY+=mN!X3beA>A5^1KoHU;BR9>(!X7V;UpQR0Nn
W@x)I9QR!%`HdE#z=?{ug)$uzzLZ2Z3

literal 0
HcmV?d00001

diff --git a/tests/cram/test_blob_parse.t b/tests/cram/test_blob_parse.t
index b6cbbaa811b7..5e8b5ff57171 100644
--- a/tests/cram/test_blob_parse.t
+++ b/tests/cram/test_blob_parse.t
@@ -21,6 +21,29 @@ check that blob_parse is producing expected results:
   }
   ---
 
+  $ valgrind --quiet --leak-check=full test-blob-parse $TEST_INPUTS/signature.ucert
+  === CHAIN ELEMENT 01 ===
+  signature:
+  ---
+  untrusted comment: signed by key ca85add129e64bab
+  RWTKha3RKeZLq0Sb8kCH9p/3BcFFud8rJnZiRICyRNhjbbpeZSwO2VhkwGaMd7ujW2/YSvT3O67pB0QguV6czgpP5kLX4AKBaQ4=
+  ---
+  payload:
+  ---
+  "ucert": {
+  \t"certtype": 1, (esc)
+  \t"validfrom": 1588532405, (esc)
+  \t"expiresat": 1620068405, (esc)
+  \t"pubkey": "untrusted comment: Local build key\\nRWTKha3RKeZLq1EaPsqvnXu+FqLMHZIS7nvDgwjpRo69j+th6eihGvQo\\n" (esc)
+  }
+  ---
+  === CHAIN ELEMENT 02 ===
+  signature:
+  ---
+  untrusted comment: signed by key ca85add129e64bab
+  RWTKha3RKeZLq9VW9CIMyumCQ4J0iFPLQYXr/YvUhw0OTrwpSh2XpKaRZQNZCXfO8ooMOCvG2TPor2veDjskHP1R2RGPIHp57wA=
+  ---
+
   $ valgrind --quiet --leak-check=full test-blob-parse $TEST_INPUTS/invalid.ucert
   cannot parse cert invalid.ucert
 
@@ -41,6 +64,29 @@ check that blob_parse is producing expected results:
   }
   ---
 
+  $ test-blob-parse-san $TEST_INPUTS/signature.ucert
+  === CHAIN ELEMENT 01 ===
+  signature:
+  ---
+  untrusted comment: signed by key ca85add129e64bab
+  RWTKha3RKeZLq0Sb8kCH9p/3BcFFud8rJnZiRICyRNhjbbpeZSwO2VhkwGaMd7ujW2/YSvT3O67pB0QguV6czgpP5kLX4AKBaQ4=
+  ---
+  payload:
+  ---
+  "ucert": {
+  \t"certtype": 1, (esc)
+  \t"validfrom": 1588532405, (esc)
+  \t"expiresat": 1620068405, (esc)
+  \t"pubkey": "untrusted comment: Local build key\\nRWTKha3RKeZLq1EaPsqvnXu+FqLMHZIS7nvDgwjpRo69j+th6eihGvQo\\n" (esc)
+  }
+  ---
+  === CHAIN ELEMENT 02 ===
+  signature:
+  ---
+  untrusted comment: signed by key ca85add129e64bab
+  RWTKha3RKeZLq9VW9CIMyumCQ4J0iFPLQYXr/YvUhw0OTrwpSh2XpKaRZQNZCXfO8ooMOCvG2TPor2veDjskHP1R2RGPIHp57wA=
+  ---
+
   $ test-blob-parse-san $TEST_INPUTS/invalid.ucert
   cannot parse cert invalid.ucert
 
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1090DAD10C
	for <lists+openwrt-devel@lfdr.de>; Mon,  9 Sep 2019 00:32:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AFBzCVEu+1+2B1KhAdHMsAcBXHEculNLN833NcyhFVs=; b=au2EU0Ew30Bf3V
	7//4zld0IGUet1YWl1xDYf2INMTBZZr3JuBEprjqYEFSkkUDmV7Xax68H+BZ4Of6r1t7i4duoZwcB
	0w2JWLms5j57BeWuifay4l2VGgwyC8HFKFpSh8AXKyzXXcne4sZOdx3Z1jxi6SA7F950RvgK757P/
	ddyfsp59pB+lH1hl+qxlW49nUTJwa1YbS5IguekJ4UwLI9h8L5An8OvVNE3JzyGvY3Gn5GptzmleV
	RwkBlzv1kdaEok2bQiDsiDpdx66s+csSmMhZ5/6EN2qiGAMBKQyL6dkFxaCeFqGmNBJA+k1XqgGzW
	u+S1ou4z6AMnxVLi8FQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i75jO-0007La-BO; Sun, 08 Sep 2019 22:32:26 +0000
Received: from mx2.mailbox.org ([80.241.60.215])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i75j8-0007Di-TY
 for openwrt-devel@lists.openwrt.org; Sun, 08 Sep 2019 22:32:13 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id D8C56A0127;
 Mon,  9 Sep 2019 00:32:06 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter04.heinlein-hosting.de (spamfilter04.heinlein-hosting.de
 [80.241.56.122]) (amavisd-new, port 10030)
 with ESMTP id mfhuIdayPCwx; Mon,  9 Sep 2019 00:32:03 +0200 (CEST)
From: Hauke Mehrtens <hauke@hauke-m.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  9 Sep 2019 00:31:47 +0200
Message-Id: <20190908223147.6924-2-hauke@hauke-m.de>
In-Reply-To: <20190908223147.6924-1-hauke@hauke-m.de>
References: <20190908223147.6924-1-hauke@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_153211_259943_CF8FF0BB 
X-CRM114-Status: GOOD (  21.06  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.215 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 19.07 2/2] hostapd: SAE/EAP-pwd side-channel
 attack update
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
Cc: hauke@hauke-m.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Fixes this security problem:
* SAE/EAP-pwd side-channel attack update
https://w1.fi/security/2019-6/sae-eap-pwd-side-channel-attack-update.txt

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 ...-ECC-groups-with-a-prime-under-256-b.patch | 40 ++++++++++++
 ...itable-groups-based-on-REVmd-changes.patch | 54 +++++++++++++++
 ...me_memcmp-for-pwd_value-prime-compar.patch | 26 ++++++++
 ...t_time_memcmp-for-pwd_value-prime-co.patch | 65 +++++++++++++++++++
 ...n2binpad-or-BN_bn2bin_padded-if-avai.patch | 61 +++++++++++++++++
 ...prf-result-processing-even-if-it-pri.patch | 54 +++++++++++++++
 ...ugh-prf-result-processing-even-if-it.patch | 52 +++++++++++++++
 ...e-use-of-groups-using-Brainpool-curv.patch | 44 +++++++++++++
 8 files changed, 396 insertions(+)
 create mode 100644 package/network/services/hostapd/patches/066-0000-EAP-pwd-Disallow-ECC-groups-with-a-prime-under-256-b.patch
 create mode 100644 package/network/services/hostapd/patches/066-0000-SAE-Reject-unsuitable-groups-based-on-REVmd-changes.patch
 create mode 100644 package/network/services/hostapd/patches/066-0001-SAE-Use-const_time_memcmp-for-pwd_value-prime-compar.patch
 create mode 100644 package/network/services/hostapd/patches/066-0002-EAP-pwd-Use-const_time_memcmp-for-pwd_value-prime-co.patch
 create mode 100644 package/network/services/hostapd/patches/066-0003-OpenSSL-Use-BN_bn2binpad-or-BN_bn2bin_padded-if-avai.patch
 create mode 100644 package/network/services/hostapd/patches/066-0004-SAE-Run-through-prf-result-processing-even-if-it-pri.patch
 create mode 100644 package/network/services/hostapd/patches/066-0005-EAP-pwd-Run-through-prf-result-processing-even-if-it.patch
 create mode 100644 package/network/services/hostapd/patches/066-0006-dragonfly-Disable-use-of-groups-using-Brainpool-curv.patch

diff --git a/package/network/services/hostapd/patches/066-0000-EAP-pwd-Disallow-ECC-groups-with-a-prime-under-256-b.patch b/package/network/services/hostapd/patches/066-0000-EAP-pwd-Disallow-ECC-groups-with-a-prime-under-256-b.patch
new file mode 100644
index 0000000000..2d40516c7c
--- /dev/null
+++ b/package/network/services/hostapd/patches/066-0000-EAP-pwd-Disallow-ECC-groups-with-a-prime-under-256-b.patch
@@ -0,0 +1,40 @@
+From 92e1b96c26a84e503847bdd22ebadf697c4031ad Mon Sep 17 00:00:00 2001
+From: Jouni Malinen <j@w1.fi>
+Date: Sat, 13 Apr 2019 17:20:57 +0300
+Subject: EAP-pwd: Disallow ECC groups with a prime under 256 bits
+
+Based on the SAE implementation guidance update to not allow ECC groups
+with a prime that is under 256 bits, reject groups 25, 26, and 27 in
+EAP-pwd.
+
+Signed-off-by: Jouni Malinen <j@w1.fi>
+---
+ src/eap_common/eap_pwd_common.c | 13 +++++++++++++
+ 1 file changed, 13 insertions(+)
+
+--- a/src/eap_common/eap_pwd_common.c
++++ b/src/eap_common/eap_pwd_common.c
+@@ -85,10 +85,23 @@ static int eap_pwd_kdf(const u8 *key, si
+ }
+ 
+ 
++static int eap_pwd_suitable_group(u16 num)
++{
++	/* Do not allow ECC groups with prime under 256 bits based on guidance
++	 * for the similar design in SAE. */
++	return num == 19 || num == 20 || num == 21 ||
++		num == 28 || num == 29 || num == 30;
++}
++
++
+ EAP_PWD_group * get_eap_pwd_group(u16 num)
+ {
+ 	EAP_PWD_group *grp;
+ 
++	if (!eap_pwd_suitable_group(num)) {
++		wpa_printf(MSG_INFO, "EAP-pwd: unsuitable group %u", num);
++		return NULL;
++	}
+ 	grp = os_zalloc(sizeof(EAP_PWD_group));
+ 	if (!grp)
+ 		return NULL;
diff --git a/package/network/services/hostapd/patches/066-0000-SAE-Reject-unsuitable-groups-based-on-REVmd-changes.patch b/package/network/services/hostapd/patches/066-0000-SAE-Reject-unsuitable-groups-based-on-REVmd-changes.patch
new file mode 100644
index 0000000000..e1e743f52d
--- /dev/null
+++ b/package/network/services/hostapd/patches/066-0000-SAE-Reject-unsuitable-groups-based-on-REVmd-changes.patch
@@ -0,0 +1,54 @@
+From db54db11aec763b6fc74715c36e0f9de0d65e206 Mon Sep 17 00:00:00 2001
+From: Jouni Malinen <jouni@codeaurora.org>
+Date: Mon, 8 Apr 2019 18:01:07 +0300
+Subject: SAE: Reject unsuitable groups based on REVmd changes
+
+The rules defining which DH groups are suitable for SAE use were
+accepted into IEEE 802.11 REVmd based on this document:
+https://mentor.ieee.org/802.11/dcn/19/11-19-0387-02-000m-addressing-some-sae-comments.docx
+
+Enforce those rules in production builds of wpa_supplicant and hostapd.
+CONFIG_TESTING_OPTIONS=y builds can still be used to select any o the
+implemented groups to maintain testing coverage.
+
+Signed-off-by: Jouni Malinen <jouni@codeaurora.org>
+---
+ src/common/sae.c | 23 +++++++++++++++++++++++
+ 1 file changed, 23 insertions(+)
+
+--- a/src/common/sae.c
++++ b/src/common/sae.c
+@@ -18,10 +18,33 @@
+ #include "sae.h"
+ 
+ 
++static int sae_suitable_group(int group)
++{
++#ifdef CONFIG_TESTING_OPTIONS
++	/* Allow all groups for testing purposes in non-production builds. */
++	return 1;
++#else /* CONFIG_TESTING_OPTIONS */
++	/* Enforce REVmd rules on which SAE groups are suitable for production
++	 * purposes: FFC groups whose prime is >= 3072 bits and ECC groups
++	 * defined over a prime field whose prime is >= 256 bits. Furthermore,
++	 * ECC groups defined over a characteristic 2 finite field and ECC
++	 * groups with a co-factor greater than 1 are not suitable. */
++	return group == 19 || group == 20 || group == 21 ||
++		group == 28 || group == 29 || group == 30 ||
++		group == 15 || group == 16 || group == 17 || group == 18;
++#endif /* CONFIG_TESTING_OPTIONS */
++}
++
++
+ int sae_set_group(struct sae_data *sae, int group)
+ {
+ 	struct sae_temporary_data *tmp;
+ 
++	if (!sae_suitable_group(group)) {
++		wpa_printf(MSG_DEBUG, "SAE: Reject unsuitable group %d", group);
++		return -1;
++	}
++
+ 	sae_clear_data(sae);
+ 	tmp = sae->tmp = os_zalloc(sizeof(*tmp));
+ 	if (tmp == NULL)
diff --git a/package/network/services/hostapd/patches/066-0001-SAE-Use-const_time_memcmp-for-pwd_value-prime-compar.patch b/package/network/services/hostapd/patches/066-0001-SAE-Use-const_time_memcmp-for-pwd_value-prime-compar.patch
new file mode 100644
index 0000000000..d637a52826
--- /dev/null
+++ b/package/network/services/hostapd/patches/066-0001-SAE-Use-const_time_memcmp-for-pwd_value-prime-compar.patch
@@ -0,0 +1,26 @@
+From e43f08991f00820c1f711ca254021d5f83b5cd7d Mon Sep 17 00:00:00 2001
+From: Jouni Malinen <jouni@codeaurora.org>
+Date: Thu, 25 Apr 2019 18:52:34 +0300
+Subject: [PATCH 1/6] SAE: Use const_time_memcmp() for pwd_value >= prime
+ comparison
+
+This reduces timing and memory access pattern differences for an
+operation that could depend on the used password.
+
+Signed-off-by: Jouni Malinen <jouni@codeaurora.org>
+(cherry picked from commit 8e14b030e558d23f65d761895c07089404e61cf1)
+---
+ src/common/sae.c | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+--- a/src/common/sae.c
++++ b/src/common/sae.c
+@@ -317,7 +317,7 @@ static int sae_test_pwd_seed_ecc(struct
+ 	wpa_hexdump_key(MSG_DEBUG, "SAE: pwd-value",
+ 			pwd_value, sae->tmp->prime_len);
+ 
+-	if (os_memcmp(pwd_value, prime, sae->tmp->prime_len) >= 0)
++	if (const_time_memcmp(pwd_value, prime, sae->tmp->prime_len) >= 0)
+ 		return 0;
+ 
+ 	x_cand = crypto_bignum_init_set(pwd_value, sae->tmp->prime_len);
diff --git a/package/network/services/hostapd/patches/066-0002-EAP-pwd-Use-const_time_memcmp-for-pwd_value-prime-co.patch b/package/network/services/hostapd/patches/066-0002-EAP-pwd-Use-const_time_memcmp-for-pwd_value-prime-co.patch
new file mode 100644
index 0000000000..6bbda2bdb6
--- /dev/null
+++ b/package/network/services/hostapd/patches/066-0002-EAP-pwd-Use-const_time_memcmp-for-pwd_value-prime-co.patch
@@ -0,0 +1,65 @@
+From 20d7bd83c43fb24c4cf84d3045254d3ee1957166 Mon Sep 17 00:00:00 2001
+From: Jouni Malinen <jouni@codeaurora.org>
+Date: Thu, 25 Apr 2019 19:07:05 +0300
+Subject: [PATCH 2/6] EAP-pwd: Use const_time_memcmp() for pwd_value >= prime
+ comparison
+
+This reduces timing and memory access pattern differences for an
+operation that could depend on the used password.
+
+Signed-off-by: Jouni Malinen <jouni@codeaurora.org>
+(cherry picked from commit 7958223fdcfe82479e6ed71019a84f6d4cbf799c)
+---
+ src/eap_common/eap_pwd_common.c | 13 ++++++++-----
+ 1 file changed, 8 insertions(+), 5 deletions(-)
+
+--- a/src/eap_common/eap_pwd_common.c
++++ b/src/eap_common/eap_pwd_common.c
+@@ -144,6 +144,7 @@ int compute_password_element(EAP_PWD_gro
+ 	u8 qnr_bin[MAX_ECC_PRIME_LEN];
+ 	u8 qr_or_qnr_bin[MAX_ECC_PRIME_LEN];
+ 	u8 x_bin[MAX_ECC_PRIME_LEN];
++	u8 prime_bin[MAX_ECC_PRIME_LEN];
+ 	struct crypto_bignum *tmp1 = NULL, *tmp2 = NULL, *pm1 = NULL;
+ 	struct crypto_hash *hash;
+ 	unsigned char pwe_digest[SHA256_MAC_LEN], *prfbuf = NULL, ctr;
+@@ -161,6 +162,11 @@ int compute_password_element(EAP_PWD_gro
+ 	os_memset(x_bin, 0, sizeof(x_bin));
+ 
+ 	prime = crypto_ec_get_prime(grp->group);
++	primebitlen = crypto_ec_prime_len_bits(grp->group);
++	primebytelen = crypto_ec_prime_len(grp->group);
++	if (crypto_bignum_to_bin(prime, prime_bin, sizeof(prime_bin),
++				 primebytelen) < 0)
++		return -1;
+ 	cofactor = crypto_bignum_init();
+ 	grp->pwe = crypto_ec_point_init(grp->group);
+ 	tmp1 = crypto_bignum_init();
+@@ -176,8 +182,6 @@ int compute_password_element(EAP_PWD_gro
+ 			   "curve");
+ 		goto fail;
+ 	}
+-	primebitlen = crypto_ec_prime_len_bits(grp->group);
+-	primebytelen = crypto_ec_prime_len(grp->group);
+ 	if ((prfbuf = os_malloc(primebytelen)) == NULL) {
+ 		wpa_printf(MSG_INFO, "EAP-pwd: unable to malloc space for prf "
+ 			   "buffer");
+@@ -243,6 +247,8 @@ int compute_password_element(EAP_PWD_gro
+ 		if (primebitlen % 8)
+ 			buf_shift_right(prfbuf, primebytelen,
+ 					8 - primebitlen % 8);
++		if (const_time_memcmp(prfbuf, prime_bin, primebytelen) >= 0)
++			continue;
+ 
+ 		crypto_bignum_deinit(x_candidate, 1);
+ 		x_candidate = crypto_bignum_init_set(prfbuf, primebytelen);
+@@ -252,9 +258,6 @@ int compute_password_element(EAP_PWD_gro
+ 			goto fail;
+ 		}
+ 
+-		if (crypto_bignum_cmp(x_candidate, prime) >= 0)
+-			continue;
+-
+ 		wpa_hexdump_key(MSG_DEBUG, "EAP-pwd: x_candidate",
+ 				prfbuf, primebytelen);
+ 		const_time_select_bin(found, x_bin, prfbuf, primebytelen,
diff --git a/package/network/services/hostapd/patches/066-0003-OpenSSL-Use-BN_bn2binpad-or-BN_bn2bin_padded-if-avai.patch b/package/network/services/hostapd/patches/066-0003-OpenSSL-Use-BN_bn2binpad-or-BN_bn2bin_padded-if-avai.patch
new file mode 100644
index 0000000000..67684cb140
--- /dev/null
+++ b/package/network/services/hostapd/patches/066-0003-OpenSSL-Use-BN_bn2binpad-or-BN_bn2bin_padded-if-avai.patch
@@ -0,0 +1,61 @@
+From ee34d8cfbd0fbf7ba7429531d4bee1c43b074d8b Mon Sep 17 00:00:00 2001
+From: Jouni Malinen <jouni@codeaurora.org>
+Date: Thu, 25 Apr 2019 19:23:05 +0300
+Subject: [PATCH 3/6] OpenSSL: Use BN_bn2binpad() or BN_bn2bin_padded() if
+ available
+
+This converts crypto_bignum_to_bin() to use the OpenSSL/BoringSSL
+functions BN_bn2binpad()/BN_bn2bin_padded(), when available, to avoid
+differences in runtime and memory access patterns depending on the
+leading bytes of the BIGNUM value.
+
+OpenSSL 1.0.2 and LibreSSL do not include such functions, so those cases
+are still using the previous implementation where the BN_num_bytes()
+call may result in different memory access pattern.
+
+Signed-off-by: Jouni Malinen <jouni@codeaurora.org>
+(cherry picked from commit 1e237903f5b5d3117342daf006c5878cdb45e3d3)
+---
+ src/crypto/crypto_openssl.c | 16 ++++++++++++++++
+ 1 file changed, 16 insertions(+)
+
+--- a/src/crypto/crypto_openssl.c
++++ b/src/crypto/crypto_openssl.c
+@@ -1227,7 +1227,13 @@ void crypto_bignum_deinit(struct crypto_
+ int crypto_bignum_to_bin(const struct crypto_bignum *a,
+ 			 u8 *buf, size_t buflen, size_t padlen)
+ {
++#ifdef OPENSSL_IS_BORINGSSL
++#else /* OPENSSL_IS_BORINGSSL */
++#if OPENSSL_VERSION_NUMBER >= 0x10100000L && !defined(LIBRESSL_VERSION_NUMBER)
++#else
+ 	int num_bytes, offset;
++#endif
++#endif /* OPENSSL_IS_BORINGSSL */
+ 
+ 	if (TEST_FAIL())
+ 		return -1;
+@@ -1235,6 +1241,14 @@ int crypto_bignum_to_bin(const struct cr
+ 	if (padlen > buflen)
+ 		return -1;
+ 
++#ifdef OPENSSL_IS_BORINGSSL
++	if (BN_bn2bin_padded(buf, padlen, (const BIGNUM *) a) == 0)
++		return -1;
++	return padlen;
++#else /* OPENSSL_IS_BORINGSSL */
++#if OPENSSL_VERSION_NUMBER >= 0x10100000L && !defined(LIBRESSL_VERSION_NUMBER)
++	return BN_bn2binpad((const BIGNUM *) a, buf, padlen);
++#else
+ 	num_bytes = BN_num_bytes((const BIGNUM *) a);
+ 	if ((size_t) num_bytes > buflen)
+ 		return -1;
+@@ -1247,6 +1261,8 @@ int crypto_bignum_to_bin(const struct cr
+ 	BN_bn2bin((const BIGNUM *) a, buf + offset);
+ 
+ 	return num_bytes + offset;
++#endif
++#endif /* OPENSSL_IS_BORINGSSL */
+ }
+ 
+ 
diff --git a/package/network/services/hostapd/patches/066-0004-SAE-Run-through-prf-result-processing-even-if-it-pri.patch b/package/network/services/hostapd/patches/066-0004-SAE-Run-through-prf-result-processing-even-if-it-pri.patch
new file mode 100644
index 0000000000..7337cb35bd
--- /dev/null
+++ b/package/network/services/hostapd/patches/066-0004-SAE-Run-through-prf-result-processing-even-if-it-pri.patch
@@ -0,0 +1,54 @@
+From a25b48118d75f3c2d7cb1b2c3b4cffb13091a34c Mon Sep 17 00:00:00 2001
+From: Jouni Malinen <j@w1.fi>
+Date: Mon, 24 Jun 2019 23:01:06 +0300
+Subject: [PATCH 4/6] SAE: Run through prf result processing even if it >=
+ prime
+
+This reduces differences in timing and memory access within the
+hunting-and-pecking loop for ECC groups that have a prime that is not
+close to a power of two (e.g., Brainpool curves).
+
+Signed-off-by: Jouni Malinen <j@w1.fi>
+(cherry picked from commit 147bf7b88a9c231322b5b574263071ca6dbb0503)
+---
+ src/common/sae.c | 15 ++++++++++++---
+ 1 file changed, 12 insertions(+), 3 deletions(-)
+
+--- a/src/common/sae.c
++++ b/src/common/sae.c
+@@ -304,6 +304,8 @@ static int sae_test_pwd_seed_ecc(struct
+ 	struct crypto_bignum *y_sqr, *x_cand;
+ 	int res;
+ 	size_t bits;
++	int cmp_prime;
++	unsigned int in_range;
+ 
+ 	wpa_hexdump_key(MSG_DEBUG, "SAE: pwd-seed", pwd_seed, SHA256_MAC_LEN);
+ 
+@@ -317,8 +319,13 @@ static int sae_test_pwd_seed_ecc(struct
+ 	wpa_hexdump_key(MSG_DEBUG, "SAE: pwd-value",
+ 			pwd_value, sae->tmp->prime_len);
+ 
+-	if (const_time_memcmp(pwd_value, prime, sae->tmp->prime_len) >= 0)
+-		return 0;
++	cmp_prime = const_time_memcmp(pwd_value, prime, sae->tmp->prime_len);
++	/* Create a const_time mask for selection based on prf result
++	 * being smaller than prime. */
++	in_range = const_time_fill_msb((unsigned int) cmp_prime);
++	/* The algorithm description would skip the next steps if
++	 * cmp_prime >= 0 (reutnr 0 here), but go through them regardless to
++	 * minimize externally observable differences in behavior. */
+ 
+ 	x_cand = crypto_bignum_init_set(pwd_value, sae->tmp->prime_len);
+ 	if (!x_cand)
+@@ -330,7 +337,9 @@ static int sae_test_pwd_seed_ecc(struct
+ 
+ 	res = is_quadratic_residue_blind(sae, prime, bits, qr, qnr, y_sqr);
+ 	crypto_bignum_deinit(y_sqr, 1);
+-	return res;
++	if (res < 0)
++		return res;
++	return const_time_select_int(in_range, res, 0);
+ }
+ 
+ 
diff --git a/package/network/services/hostapd/patches/066-0005-EAP-pwd-Run-through-prf-result-processing-even-if-it.patch b/package/network/services/hostapd/patches/066-0005-EAP-pwd-Run-through-prf-result-processing-even-if-it.patch
new file mode 100644
index 0000000000..9ad474757d
--- /dev/null
+++ b/package/network/services/hostapd/patches/066-0005-EAP-pwd-Run-through-prf-result-processing-even-if-it.patch
@@ -0,0 +1,52 @@
+From 00a6cc73da61b03c146b6c341d0d1e572bcef432 Mon Sep 17 00:00:00 2001
+From: Jouni Malinen <j@w1.fi>
+Date: Mon, 24 Jun 2019 23:02:51 +0300
+Subject: [PATCH 5/6] EAP-pwd: Run through prf result processing even if it >=
+ prime
+
+This reduces differences in timing and memory access within the
+hunting-and-pecking loop for ECC groups that have a prime that is not
+close to a power of two (e.g., Brainpool curves).
+
+Signed-off-by: Jouni Malinen <j@w1.fi>
+(cherry picked from commit cd803299ca485eb857e37c88f973fccfbb8600e5)
+---
+ src/eap_common/eap_pwd_common.c | 13 ++++++++++---
+ 1 file changed, 10 insertions(+), 3 deletions(-)
+
+--- a/src/eap_common/eap_pwd_common.c
++++ b/src/eap_common/eap_pwd_common.c
+@@ -155,6 +155,8 @@ int compute_password_element(EAP_PWD_gro
+ 	struct crypto_bignum *x_candidate = NULL, *cofactor = NULL;
+ 	const struct crypto_bignum *prime;
+ 	u8 mask, found_ctr = 0, is_odd = 0;
++	int cmp_prime;
++	unsigned int in_range;
+ 
+ 	if (grp->pwe)
+ 		return -1;
+@@ -247,8 +249,13 @@ int compute_password_element(EAP_PWD_gro
+ 		if (primebitlen % 8)
+ 			buf_shift_right(prfbuf, primebytelen,
+ 					8 - primebitlen % 8);
+-		if (const_time_memcmp(prfbuf, prime_bin, primebytelen) >= 0)
+-			continue;
++		cmp_prime = const_time_memcmp(prfbuf, prime_bin, primebytelen);
++		/* Create a const_time mask for selection based on prf result
++		 * being smaller than prime. */
++		in_range = const_time_fill_msb((unsigned int) cmp_prime);
++		/* The algorithm description would skip the next steps if
++		 * cmp_prime >= 0, but go through them regardless to minimize
++		 * externally observable differences in behavior. */
+ 
+ 		crypto_bignum_deinit(x_candidate, 1);
+ 		x_candidate = crypto_bignum_init_set(prfbuf, primebytelen);
+@@ -311,7 +318,7 @@ int compute_password_element(EAP_PWD_gro
+ 			goto fail;
+ 		mask = const_time_eq(res, check);
+ 		found_ctr = const_time_select_u8(found, found_ctr, ctr);
+-		found |= mask;
++		found |= mask & in_range;
+ 	}
+ 	if (found == 0) {
+ 		wpa_printf(MSG_INFO,
diff --git a/package/network/services/hostapd/patches/066-0006-dragonfly-Disable-use-of-groups-using-Brainpool-curv.patch b/package/network/services/hostapd/patches/066-0006-dragonfly-Disable-use-of-groups-using-Brainpool-curv.patch
new file mode 100644
index 0000000000..28555bb715
--- /dev/null
+++ b/package/network/services/hostapd/patches/066-0006-dragonfly-Disable-use-of-groups-using-Brainpool-curv.patch
@@ -0,0 +1,44 @@
+From 558518ed63202e5358116ab7e0afd5e85490f2ef Mon Sep 17 00:00:00 2001
+From: Jouni Malinen <j@w1.fi>
+Date: Sat, 27 Jul 2019 23:19:17 +0300
+Subject: [PATCH 6/6] dragonfly: Disable use of groups using Brainpool curves
+
+Disable groups that use Brainpool curves for now since they leak more
+timing information due to the prime not being close to a power of two.
+This removes use of groups 28, 29, and 30 from SAE and EAP-pwd.
+
+Signed-off-by: Jouni Malinen <j@w1.fi>
+(cherry picked from commit 876c5eaa6dae1a87a17603fc489a44c29eedc2e3)
+---
+ src/common/sae.c                | 6 ++++--
+ src/eap_common/eap_pwd_common.c | 3 +--
+ 2 files changed, 5 insertions(+), 4 deletions(-)
+
+--- a/src/common/sae.c
++++ b/src/common/sae.c
+@@ -28,9 +28,11 @@ static int sae_suitable_group(int group)
+ 	 * purposes: FFC groups whose prime is >= 3072 bits and ECC groups
+ 	 * defined over a prime field whose prime is >= 256 bits. Furthermore,
+ 	 * ECC groups defined over a characteristic 2 finite field and ECC
+-	 * groups with a co-factor greater than 1 are not suitable. */
++	 * groups with a co-factor greater than 1 are not suitable. Disable
++	 * groups that use Brainpool curves as well for now since they leak more
++	 * timing information due to the prime not being close to a power of
++	 * two. */
+ 	return group == 19 || group == 20 || group == 21 ||
+-		group == 28 || group == 29 || group == 30 ||
+ 		group == 15 || group == 16 || group == 17 || group == 18;
+ #endif /* CONFIG_TESTING_OPTIONS */
+ }
+--- a/src/eap_common/eap_pwd_common.c
++++ b/src/eap_common/eap_pwd_common.c
+@@ -89,8 +89,7 @@ static int eap_pwd_suitable_group(u16 nu
+ {
+ 	/* Do not allow ECC groups with prime under 256 bits based on guidance
+ 	 * for the similar design in SAE. */
+-	return num == 19 || num == 20 || num == 21 ||
+-		num == 28 || num == 29 || num == 30;
++	return num == 19 || num == 20 || num == 21;
+ }
+ 
+ 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

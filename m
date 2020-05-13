Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A39EC1D13EA
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 May 2020 15:03:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qTqD6gqagJXDz0MIcu3PUc8qnNZoCwGiz/XBGTcwlRo=; b=cffGbIXcos0TG8
	+LP7mBYLLhBujqnP1OmhnmV2kGYSoF93pQC9c85kleekvMG6MnruOfEmiiHrSXS4+4DKCrLNN3sH1
	cIoN3TVfaweQKD8TCVxbAq5n7wJjrbPEkEvFqe6l5a5a4cqMnXbxV8cWqfv0+p8jBC56GjqAEFIqb
	eUr8MtSBp+Ieu6hXyU2F42JdwWaoYgMu7wxERD1L0I2gD+ENzNTm9wI0D0KILsv2CBSp1+67AK0Dr
	7nj/ZGh+K7Oy+LKvPras9dtr7NMIkNUVfU2lXApCVcTkIX1WruTxh/KacAlN2CbQQyJtQT3d5bvgO
	xFdLlN4BOCa96w4IzTGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYr2B-0000jL-CR; Wed, 13 May 2020 13:02:51 +0000
Received: from mail.w1.fi ([212.71.239.96] helo=li674-96.members.linode.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYr1l-0000bX-KH
 for openwrt-devel@lists.openwrt.org; Wed, 13 May 2020 13:02:28 +0000
Received: from localhost (localhost [127.0.0.1])
 by li674-96.members.linode.com (Postfix) with ESMTP id EA02A119C5;
 Wed, 13 May 2020 13:02:23 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at w1.fi
Received: from li674-96.members.linode.com ([127.0.0.1])
 by localhost (mail.w1.fi [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fL491d7ipF6g; Wed, 13 May 2020 13:02:22 +0000 (UTC)
Received: by jm (sSMTP sendmail emulation); Wed, 13 May 2020 16:01:03 +0300
Date: Wed, 13 May 2020 16:01:03 +0300
From: Jouni Malinen <j@w1.fi>
To: Daniel Golle <daniel@makrotopia.org>
Message-ID: <20200513130103.GA2679@w1.fi>
References: <20200512214612.GF1636@makrotopia.org>
 <20200513083817.GA5236@w1.fi>
 <20200513104603.GB20764@makrotopia.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513104603.GB20764@makrotopia.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_060225_934420_82D08285 
X-CRM114-Status: GOOD (  27.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] hostap commit 6c9543fcb breaks MESH-SAE with
 wolfssl
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
Cc: hostap@lists.infradead.org, openwrt-devel@lists.openwrt.org,
 Antonio Quartulli <a@unstable.cc>, ringelrobbe <ringelrobbe@riseup.net>,
 Sean Parkinson <sean@wolfssl.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Wed, May 13, 2020 at 11:46:03AM +0100, Daniel Golle wrote:
> Odd, but could be endian or sizeof(int) related differences. I assume
> you are testing on x86_64 glibc while I'm testing this on MIPS24kc
> (big endian!) with musl libc running on QCA SoCs.

Unfortunately, I don't have any convenient means for testing this
combination on a big endian system. That said, the identified commit
does not really have any area that would seem to be depending on
endianness or word size of the CPU..

> I've tried plain wpa_supplicant as well as with OpenWrt's patches, all
> build against WolfSSL 4.3.0-stable.
> 
> using git revision 2b84ca4d :
> 
> root@OpenWrt:~# wpa_supplicant -ddd -P /var/run/wpa_supplicant-wlan1-mesh.pid -D nl80211 -i wlan1-mesh -c /var/run/wpa_supplicant-wlan1-mesh.conf
> Successfully initialized wpa_supplicant
> Using interface wlan1-mesh with hwaddr 64:70:02:xx:xx:xx and ssid ""
> wlan1-mesh: interface state UNINITIALIZED->ENABLED
> wlan1-mesh: AP-ENABLED 
> wlan1-mesh: joining mesh LiMe
...

This wpa_supplicant build lacks all debugging detail.. Could you please
enable full debugging, i.e., remove whatever OpenWrt patches and/or
build configuration does to disable debugging? Without the details,
there is not really much that can be done do figure out what exactly is
failing since none of the SAE details are shown here.

> The build environment is currently on an otherwise unused system wired
> up to the two QCA devices for testing. We could arrange remote access
> remote access via SSH or you can tell me to build/test whatever you'd
> like me to and I'll report back.
> If you'd like to reproduce this locally or even include in your CI,
> I guess that building Linux and wpa_supplicant for MIPS Malta (BE) and
> running that in qemu-system-mips will show similar results as my
> testing on real hardware.

I guess it would be nice to get a big endian setup added for automated
testing eventually, but setting that up with qemu sounds like something
that is going to take significant amount of effort..

Could you please check that the following patch fixes the issue? In
practice, this is reverting any functional difference of commit
6c9543fcb for SAE. This should not really fix anything based on code
review, but I want to make sure that it is indeed this particular commit
that explains the real issue before spending significant effort in
figuring out how the move from wpa_supplicant internal random number
generation to WolfSSL mp_rand_prime() could cause this type of an issue
on some platforms (but not on x86-64).



diff --git a/src/common/dragonfly.c b/src/common/dragonfly.c
index 547be66f1561..6bce5ee4e4fb 100644
--- a/src/common/dragonfly.c
+++ b/src/common/dragonfly.c
@@ -8,10 +8,13 @@
  */
 
 #include "utils/includes.h"
+#include <wolfssl/options.h>
+#include <wolfssl/wolfcrypt/tfm.h>
 
 #include "utils/common.h"
 #include "utils/const_time.h"
 #include "crypto/crypto.h"
+#include "crypto/random.h"
 #include "dragonfly.h"
 
 
@@ -54,33 +57,41 @@ int dragonfly_get_random_qr_qnr(const struct crypto_bignum *prime,
 				struct crypto_bignum **qr,
 				struct crypto_bignum **qnr)
 {
+	size_t prime_bits = mp_count_bits((mp_int *) prime);
+	size_t prime_len = (prime_bits + 7) / 8;
+	u8 prime_bin[DRAGONFLY_MAX_ECC_PRIME_LEN];
+
+	if (crypto_bignum_to_bin(prime, prime_bin, sizeof(prime_bin),
+				 prime_len) < 0)
+		return -1;
+
 	*qr = *qnr = NULL;
 
 	while (!(*qr) || !(*qnr)) {
-		struct crypto_bignum *tmp;
+		u8 tmp[DRAGONFLY_MAX_ECC_PRIME_LEN];
+		struct crypto_bignum *q;
 		int res;
 
-		tmp = crypto_bignum_init();
-		if (!tmp || crypto_bignum_rand(tmp, prime) < 0) {
-			crypto_bignum_deinit(tmp, 0);
+		if (random_get_bytes(tmp, prime_len) < 0)
 			break;
-		}
+		if (prime_bits % 8)
+			buf_shift_right(tmp, prime_len, 8 - prime_bits % 8);
+		if (os_memcmp(tmp, prime_bin, prime_len) >= 0)
+			continue;
+		q = crypto_bignum_init_set(tmp, prime_len);
+		if (!q)
+			break;
+		res = crypto_bignum_legendre(q, prime);
 
-		res = crypto_bignum_legendre(tmp, prime);
 		if (res == 1 && !(*qr))
-			*qr = tmp;
+			*qr = q;
 		else if (res == -1 && !(*qnr))
-			*qnr = tmp;
+			*qnr = q;
 		else
-			crypto_bignum_deinit(tmp, 0);
+			crypto_bignum_deinit(q, 0);
 	}
 
-	if (*qr && *qnr)
-		return 0;
-	crypto_bignum_deinit(*qr, 0);
-	crypto_bignum_deinit(*qnr, 0);
-	*qr = *qnr = NULL;
-	return -1;
+	return (*qr && *qnr) ? 0 : -1;
 }
 
 

-- 
Jouni Malinen                                            PGP id EFC895FA

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

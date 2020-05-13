Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B33B1D176D
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 May 2020 16:20:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nO7OjTr2mMLnddSGFirrlcdM86mEQtSd12lpzlMnTaw=; b=sTyocTVBAZzdGo
	u9UUF+GexPkPNHxVbqigwP2oVLaKPoFZd1df2JN5hbPqUPBkeySJxKJXve4zC2+7z5fw9WbPqIT65
	oFJltI2q2S++lPpu2BQNcI8bboV+cdGepHhquZCHTjt//MY+n7SRnh2OPHsKlr0QCCEIDe65M+cIj
	dxmv5EOB6Q3u8YTSbNvwZrOj2V7eu92EmOJuI3yZ/FbBwH2+XluOqNlsWHy1xN/A6EkoLF674/Yp6
	aOYRE9bJySuBqo5MNFNj3IJ0a2K2JeukEeHmfkev73TxiyFEnkpDE3Of0k1W9t+ht/UdJyB73Hf7m
	v4+rRX+dicnWEnOy6NAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYsFU-0003FW-QK; Wed, 13 May 2020 14:20:40 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYsEa-0000O6-F9
 for openwrt-devel@lists.openwrt.org; Wed, 13 May 2020 14:19:48 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.3) (envelope-from <daniel@makrotopia.org>)
 id 1jYsEV-00074d-Fb; Wed, 13 May 2020 16:19:40 +0200
Date: Wed, 13 May 2020 15:19:32 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: Jouni Malinen <j@w1.fi>
Message-ID: <20200513141932.GC20764@makrotopia.org>
References: <20200512214612.GF1636@makrotopia.org>
 <20200513083817.GA5236@w1.fi>
 <20200513104603.GB20764@makrotopia.org>
 <20200513130103.GA2679@w1.fi>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513130103.GA2679@w1.fi>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_071944_509802_46C424DA 
X-CRM114-Status: GOOD (  26.68  )
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

On Wed, May 13, 2020 at 04:01:03PM +0300, Jouni Malinen wrote:
> On Wed, May 13, 2020 at 11:46:03AM +0100, Daniel Golle wrote:
> > Odd, but could be endian or sizeof(int) related differences. I assume
> > you are testing on x86_64 glibc while I'm testing this on MIPS24kc
> > (big endian!) with musl libc running on QCA SoCs.
> 
> Unfortunately, I don't have any convenient means for testing this
> combination on a big endian system. That said, the identified commit
> does not really have any area that would seem to be depending on
> endianness or word size of the CPU..
> 
> > I've tried plain wpa_supplicant as well as with OpenWrt's patches, all
> > build against WolfSSL 4.3.0-stable.
> > 
> > using git revision 2b84ca4d :
> > 
> > root@OpenWrt:~# wpa_supplicant -ddd -P /var/run/wpa_supplicant-wlan1-mesh.pid -D nl80211 -i wlan1-mesh -c /var/run/wpa_supplicant-wlan1-mesh.conf
> > Successfully initialized wpa_supplicant
> > Using interface wlan1-mesh with hwaddr 64:70:02:xx:xx:xx and ssid ""
> > wlan1-mesh: interface state UNINITIALIZED->ENABLED
> > wlan1-mesh: AP-ENABLED 
> > wlan1-mesh: joining mesh LiMe
> ...
> 
> This wpa_supplicant build lacks all debugging detail.. Could you please
> enable full debugging, i.e., remove whatever OpenWrt patches and/or
> build configuration does to disable debugging? Without the details,
> there is not really much that can be done do figure out what exactly is
> failing since none of the SAE details are shown here.

I'm about to send you full logs (rather large) off-list.

> 
> > The build environment is currently on an otherwise unused system wired
> > up to the two QCA devices for testing. We could arrange remote access
> > remote access via SSH or you can tell me to build/test whatever you'd
> > like me to and I'll report back.
> > If you'd like to reproduce this locally or even include in your CI,
> > I guess that building Linux and wpa_supplicant for MIPS Malta (BE) and
> > running that in qemu-system-mips will show similar results as my
> > testing on real hardware.
> 
> I guess it would be nice to get a big endian setup added for automated
> testing eventually, but setting that up with qemu sounds like something
> that is going to take significant amount of effort..
> 
> Could you please check that the following patch fixes the issue? In
> practice, this is reverting any functional difference of commit
> 6c9543fcb for SAE. This should not really fix anything based on code
> review, but I want to make sure that it is indeed this particular commit
> that explains the real issue before spending significant effort in
> figuring out how the move from wpa_supplicant internal random number
> generation to WolfSSL mp_rand_prime() could cause this type of an issue
> on some platforms (but not on x86-64).

That didn't help, unfortunately.

> 
> 
> 
> diff --git a/src/common/dragonfly.c b/src/common/dragonfly.c
> index 547be66f1561..6bce5ee4e4fb 100644
> --- a/src/common/dragonfly.c
> +++ b/src/common/dragonfly.c
> @@ -8,10 +8,13 @@
>   */
>  
>  #include "utils/includes.h"
> +#include <wolfssl/options.h>
> +#include <wolfssl/wolfcrypt/tfm.h>
>  
>  #include "utils/common.h"
>  #include "utils/const_time.h"
>  #include "crypto/crypto.h"
> +#include "crypto/random.h"
>  #include "dragonfly.h"
>  
>  
> @@ -54,33 +57,41 @@ int dragonfly_get_random_qr_qnr(const struct crypto_bignum *prime,
>  				struct crypto_bignum **qr,
>  				struct crypto_bignum **qnr)
>  {
> +	size_t prime_bits = mp_count_bits((mp_int *) prime);
> +	size_t prime_len = (prime_bits + 7) / 8;
> +	u8 prime_bin[DRAGONFLY_MAX_ECC_PRIME_LEN];
> +
> +	if (crypto_bignum_to_bin(prime, prime_bin, sizeof(prime_bin),
> +				 prime_len) < 0)
> +		return -1;
> +
>  	*qr = *qnr = NULL;
>  
>  	while (!(*qr) || !(*qnr)) {
> -		struct crypto_bignum *tmp;
> +		u8 tmp[DRAGONFLY_MAX_ECC_PRIME_LEN];
> +		struct crypto_bignum *q;
>  		int res;
>  
> -		tmp = crypto_bignum_init();
> -		if (!tmp || crypto_bignum_rand(tmp, prime) < 0) {
> -			crypto_bignum_deinit(tmp, 0);
> +		if (random_get_bytes(tmp, prime_len) < 0)
>  			break;
> -		}
> +		if (prime_bits % 8)
> +			buf_shift_right(tmp, prime_len, 8 - prime_bits % 8);
> +		if (os_memcmp(tmp, prime_bin, prime_len) >= 0)
> +			continue;
> +		q = crypto_bignum_init_set(tmp, prime_len);
> +		if (!q)
> +			break;
> +		res = crypto_bignum_legendre(q, prime);
>  
> -		res = crypto_bignum_legendre(tmp, prime);
>  		if (res == 1 && !(*qr))
> -			*qr = tmp;
> +			*qr = q;
>  		else if (res == -1 && !(*qnr))
> -			*qnr = tmp;
> +			*qnr = q;
>  		else
> -			crypto_bignum_deinit(tmp, 0);
> +			crypto_bignum_deinit(q, 0);
>  	}
>  
> -	if (*qr && *qnr)
> -		return 0;
> -	crypto_bignum_deinit(*qr, 0);
> -	crypto_bignum_deinit(*qnr, 0);
> -	*qr = *qnr = NULL;
> -	return -1;
> +	return (*qr && *qnr) ? 0 : -1;
>  }
>  
>  
> 
> -- 
> Jouni Malinen                                            PGP id EFC895FA

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

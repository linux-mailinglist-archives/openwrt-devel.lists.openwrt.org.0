Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9241BE311
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Sep 2019 19:08:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uw4c3221Ya4CTzTo6wW8mlGIQv6b325GV8AE4KiG8LI=; b=OBk8iv6bRwHfgHHzwNFB6BuKF4
	VfX09gkEKtSdtgMm3IQbORHnJ+iVX2lX9evRy0SPAh6WqOIyDJRhDl/iG7ZvVt6G8Zm7IN55KYr0J
	yJe8ii38iNtgqwnVuBHL5N1oOQz24A+R3CqzORw4X5zVvOjXs+UPkg69JFxKZvkQjJ7UOGtl5/FRo
	VSJCBRdUAIniBirjoog4llGk1LCysfNjbWMlsQEVXH5VSqNMUt3U2/1VwSUoxqjVGX/FoxJmn32CE
	afLjqg/Y4kPGbgbYc9t3tKV5ZbkBsil2AXb+ZI2zbxK7PA/D//w6344ij/5BPTluGep0zQ+KBueoz
	JcTiDVfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDAmX-0003oT-HQ; Wed, 25 Sep 2019 17:08:49 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDAmN-0003o5-TG
 for openwrt-devel@lists.openwrt.org; Wed, 25 Sep 2019 17:08:41 +0000
Received: by mail-qk1-x742.google.com with SMTP id x134so5943691qkb.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 25 Sep 2019 10:08:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=0ec4sSnYc3vGMLASFK8tHMArHXFzccDXF47Sjr53lxE=;
 b=ei1wdGQhOjqjl9Y1ABTLYNwdkWtA/fhDDNUBaBIRwUZU/7HkbdK7Fr2HZx3VB2Y39Z
 E7FL+GVNh+GylPK/s6JjEE9vHHC0KGekKaeXe6tA7ti8GLs+Zh7gs6jnfOSvy3bLcpLQ
 44PuSOMSgx3qkW9wBkB+6c5VGeAeKat/WJNhKDvx9PxhaCCOml5GqbwiyUajREqbeSDf
 m5CbFfFjSLCSdZd8tOLeRp20UdIFG+jNRXXa6n8mrJSfEv42YP8S2utNYjoW6iJKfq4e
 hpNKvyyFh9CdkPLTpFGw+iCy+B84j6J0Mn7NBEraOMFPOk8r+q/rAeaf1fS3+lz7131x
 IQAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=0ec4sSnYc3vGMLASFK8tHMArHXFzccDXF47Sjr53lxE=;
 b=IfRllVZks0qqKaVMbGFSqBn4lMbz6/1pwnNBgDjg6f0odVLYrvh0HSaJ+phhvLkGjk
 0F3EsJVEgFreup6Jln1C8+MV4/3YdRfMz6YiLIlcKeWRrW6mAkJ45pYhXtVS7uZV8ehZ
 DB+gAWc+ST8YwgSbaJ1dhVqQc5TN67sDYBXCBLbSB8jUvTWGs4/MAoSnMbaxVvrxgv3n
 fird/WgV0Fk80k2HSNcv49b/9f690Xx2iySrVqoTa/+qlZGg+Na3zSv1Sp6vkXG5F+v2
 tHmaz1j71y8VUEAagd4qVTD6OSQG0nP2BvEPGVzJTj+CsGLB4X2LYT0ICH+dBW6gXQ6O
 Qbcw==
X-Gm-Message-State: APjAAAWweHa5BTGG1nCby7HYguwPdMr4QFMKB5tnkJIFqILxtIFR43fq
 GveTQAKW8VUF0j2UFLZywJClDT9o3zvVPo5zm5lyWA==
X-Google-Smtp-Source: APXvYqzq3mrc+xljG3PXESgfOJPWLdG8jHEbwbqL5wbh+GD5/INFG4JyvLFY/W1sAQhabhKnrvt4eOr8RHW0tez/y7A=
X-Received: by 2002:a37:dcc1:: with SMTP id v184mr4852800qki.258.1569431315780; 
 Wed, 25 Sep 2019 10:08:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190920204804.10183-1-cotequeiroz@gmail.com>
 <20190925170343.11462-1-cotequeiroz@gmail.com>
In-Reply-To: <20190925170343.11462-1-cotequeiroz@gmail.com>
From: Eneas Queiroz <cotequeiroz@gmail.com>
Date: Wed, 25 Sep 2019 14:08:25 -0300
Message-ID: <CAPxccB38RUd5LwafJz+jh2XTufNmpDY37CHqShoRu8dDZjNZPg@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_100840_341635_3BC3680A 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] ipq40xx: fix hw-crypto detection of qce
 driver
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

This is meant for 19.07, as it's already in master.  I just now
realized it was missing from the subject line.  Sorry about that.

Eneas

On Wed, Sep 25, 2019 at 2:03 PM Eneas U de Queiroz
<cotequeiroz@gmail.com> wrote:
>
> This adds the CRYPTO_ALG_KERN_DRIVER_ONLY flag to Qualcomm crypto engine
> driver algorithms, so that openssl devcrypto can recognize them as
> hardware-accelerated.
>
> Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>
>
> diff --git a/target/linux/ipq40xx/patches-4.14/181-crypto-qce-add-CRYPTO_ALG_KERN_DRIVER_ONLY-flag.patch b/target/linux/ipq40xx/patches-4.14/181-crypto-qce-add-CRYPTO_ALG_KERN_DRIVER_ONLY-flag.patch
> new file mode 100644
> index 0000000000..58b0ebf5e7
> --- /dev/null
> +++ b/target/linux/ipq40xx/patches-4.14/181-crypto-qce-add-CRYPTO_ALG_KERN_DRIVER_ONLY-flag.patch
> @@ -0,0 +1,31 @@
> +From: Eneas U de Queiroz <cotequeiroz@gmail.com>
> +Subject: [PATCH] crypto: qce - add CRYPTO_ALG_KERN_DRIVER_ONLY flag
> +
> +Set the CRYPTO_ALG_KERN_DRIVER_ONLY flag to all algorithms exposed by
> +the qce driver, since they are all hardware accelerated, accessible
> +through a kernel driver only, and not available directly to userspace.
> +
> +Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>
> +
> +--- a/drivers/crypto/qce/ablkcipher.c
> ++++ b/drivers/crypto/qce/ablkcipher.c
> +@@ -373,7 +373,7 @@ static int qce_ablkcipher_register_one(c
> +
> +       alg->cra_priority = 300;
> +       alg->cra_flags = CRYPTO_ALG_TYPE_ABLKCIPHER | CRYPTO_ALG_ASYNC |
> +-                       CRYPTO_ALG_NEED_FALLBACK;
> ++                       CRYPTO_ALG_NEED_FALLBACK | CRYPTO_ALG_KERN_DRIVER_ONLY;
> +       alg->cra_ctxsize = sizeof(struct qce_cipher_ctx);
> +       alg->cra_alignmask = 0;
> +       alg->cra_type = &crypto_ablkcipher_type;
> +--- a/drivers/crypto/qce/sha.c
> ++++ b/drivers/crypto/qce/sha.c
> +@@ -526,7 +526,7 @@ static int qce_ahash_register_one(const
> +       base = &alg->halg.base;
> +       base->cra_blocksize = def->blocksize;
> +       base->cra_priority = 300;
> +-      base->cra_flags = CRYPTO_ALG_ASYNC;
> ++      base->cra_flags = CRYPTO_ALG_ASYNC | CRYPTO_ALG_KERN_DRIVER_ONLY;
> +       base->cra_ctxsize = sizeof(struct qce_sha_ctx);
> +       base->cra_alignmask = 0;
> +       base->cra_module = THIS_MODULE;
> --
> 2.21.0
>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

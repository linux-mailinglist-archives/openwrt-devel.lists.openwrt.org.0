Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 546CE1F510A
	for <lists+openwrt-devel@lfdr.de>; Wed, 10 Jun 2020 11:21:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zNTtygNb4xXiIoH5SUllwW3jC4fzvbRslD2zcI/yDSU=; b=IuKoWSIY74U1ks
	6ZMhxHC+MLQNfw4Uj4OkObScKzqBn7XAgiI6nETEUUBeFqigHxsTtrSCJPpt9lEoYkXW3P52ji+Ll
	usGWcUhG2k/qYAhWdb9ueytVVAaYBqXh8b8LhxXskGIfrh2CSZXxhsjbZWMUiJ4Yh0c4zuSBtzf31
	/0IAx5qLbfiNWxAvOucZBCC+26Hg0z2KMeT1EbeTTZcDsNDaazxYoXnThSkzDbwyOzR0adDB/j9it
	Lddz7G3KKR1Ug4veqY9L9bKMBGtSn0d2zl0XZzqgnhbUzX3sqzyLavMzJ2dfE9SyPo+cyFPtmesok
	FRQMZiuamHqjJrc1p6Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiwv3-0003hR-Iw; Wed, 10 Jun 2020 09:21:13 +0000
Received: from mail.zx2c4.com ([192.95.5.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiwuw-0003gv-Lu
 for openwrt-devel@lists.openwrt.org; Wed, 10 Jun 2020 09:21:08 +0000
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 02a1b555
 for <openwrt-devel@lists.openwrt.org>;
 Wed, 10 Jun 2020 09:03:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
 :references:in-reply-to:from:date:message-id:subject:to:cc
 :content-type; s=mail; bh=eEMXV7NtsZ6/bJe8QXBTTCL4KF4=; b=dGXwTK
 EWlaRUTxRM3opDS1BBzILzY8jZSzGLvzGHh5ydPmlSxkDAd4yhHff7kbgGNJfD3V
 InKqIZniC8VFgcBIuOccPKuip8EkJfsOuuDGCgYe0zUuFuqDTmbA3LnvS4krvSUU
 eVca/qXD0cUDY6T4iKl8oxU9PbqKtbqHF3YbRlyQzsehSpNM74tpooz+ooyhFV3r
 I4nUudQQtk931rf8YTDTGw8K1GT03L57LcJJWcogHKMsh2p7EqSpylHo/XzOvc+f
 GW7d1mkwsg+pCQQ5n6HwHBRq7XpUaL2R9OfbZavJEGwI4vBtct9mdXZJ+R14BNbt
 x75qVW+bcjkxq0EA==
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 91d17c85
 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO)
 for <openwrt-devel@lists.openwrt.org>;
 Wed, 10 Jun 2020 09:03:43 +0000 (UTC)
Received: by mail-io1-f43.google.com with SMTP id s18so1379327ioe.2
 for <openwrt-devel@lists.openwrt.org>; Wed, 10 Jun 2020 02:20:53 -0700 (PDT)
X-Gm-Message-State: AOAM532K1MyX89DliB2Oiuifb3G+Bo1fHk5kDpWtXkwnzX5lsHRrtI1y
 OiiiDJCbJAvt8hF7bCqRCvy3m2dOjlezK2qV/qg=
X-Google-Smtp-Source: ABdhPJyfwaTcAXeb0YLBnJJpb/JceAa4KAz4i6D615JTKy+4zu+2v2Q2azjEvgSAcqsrR0e2cyc9wFDFsP0OKjsGqWA=
X-Received: by 2002:a6b:6705:: with SMTP id b5mr2294688ioc.29.1591780853291;
 Wed, 10 Jun 2020 02:20:53 -0700 (PDT)
MIME-Version: 1.0
References: <CALjTZvbpu1Lw0j9dtXZPmVS+i-OnopUo+zuqtoQLnABQGw-SqQ@mail.gmail.com>
In-Reply-To: <CALjTZvbpu1Lw0j9dtXZPmVS+i-OnopUo+zuqtoQLnABQGw-SqQ@mail.gmail.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Wed, 10 Jun 2020 03:20:42 -0600
X-Gmail-Original-Message-ID: <CAHmME9r3nPwmUoYYrj0PnUStd1ACSmdFAO4Qv2cZtmiLspOW1g@mail.gmail.com>
Message-ID: <CAHmME9r3nPwmUoYYrj0PnUStd1ACSmdFAO4Qv2cZtmiLspOW1g@mail.gmail.com>
To: Rui Salvaterra <rsalvaterra@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_022107_071674_EFA187DF 
X-CRM114-Status: UNSURE (   6.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] wireguard: unknown relocation: 102 [ARMv7
 Thumb-2]
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Rui,

I'm unable to reproduce this:

$ git clone https://git.zx2c4.com/wireguard-linux-compat
$ ARCH=arm make -C wireguard-linux-compat/src test-qemu -j$(nproc)
[... big test suite ...]
$ vim wireguard-linux-compat/qemu-build/arm/linux-5.5.14/.config
[... enable CONFIG_THUMB2_KERNEL=y ...]
$ ARCH=arm make -C wireguard-linux-compat/src test-qemu -j$(nproc)
[... big test suite ...]

Is there some config combination you can stick into the test harness
to repro what you're seeing?

Jason

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

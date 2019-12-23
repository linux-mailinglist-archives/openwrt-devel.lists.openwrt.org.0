Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C024129A9E
	for <lists+openwrt-devel@lfdr.de>; Mon, 23 Dec 2019 20:57:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rZANrDT68PiJcXdD+H6EO5T8mMaXhVQRPYYGw/5rAQ4=; b=RPt0gHi/mndnGu
	Gwqs/yDVLKK3qnG321PUURGABwbPe/0zgaxygb1+5qrISNhyKxgLMpG57/now5caP4HtKCILNybZe
	VYhs4qBCBAi5pTV2wRMxxBRi7LsoYkx2OHee1r0wG9pt+emuucTgEAQZFb6A8QYURC/zmnAQMSeVl
	M8T4b7YMyw5RqLQUnl4Jqabqb35kRpGnXezfxqMkv2J+ySFm+rRcJktE5r9ZHgPhamkCw0vZvoO9i
	00Lf3+k+45TRo34L/LugHKKsQ9/q2qhbODRnNB7GXkzfplWsWW0Mim6ob9fH0kv4ihhskM9Xyofch
	h2cHkiYgZbpHM23O+3Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijTpO-0000XM-G2; Mon, 23 Dec 2019 19:57:18 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijTpG-0000X3-Ho
 for openwrt-devel@lists.openwrt.org; Mon, 23 Dec 2019 19:57:12 +0000
Received: by mail-lf1-x142.google.com with SMTP id n25so13506580lfl.0
 for <openwrt-devel@lists.openwrt.org>; Mon, 23 Dec 2019 11:57:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=BVfYINMSNIVboBVe3Frq/VHOLqxe3oxNeD3CxFA56FY=;
 b=XUMVIZFGt49WMAoC+iD3XgdjijiBuVAvqh4ySpe79lOAYm4iaOoA1WL20bD0/wHYRk
 bX4a54x8hp22HrkzfpD1Lf9h7Oi8tWN/V8QKrWUVUYKtLWSEun82Adlbe2zpTeutAnod
 4XF9LDvlRfUegg0SHn720PMt1rujHRO0Cp02BOnjDe0tX9Qu9tJonfhnP8fsb/HypWof
 R2+JWafzhKd66dCKDE4M6mfWB7BjVPjzXvSBGJjIwIZfHk4AbmYN+HcWnmNlHprJqcjF
 t2bERAGfevZbqxgqfyY4YdayfPQqpV65/L352Shh/2AfOQTZ1CjRCrqOU96FZS+zGT+Y
 bjJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=BVfYINMSNIVboBVe3Frq/VHOLqxe3oxNeD3CxFA56FY=;
 b=Fn+RAaSu5mHGEF32xMwyj9tUSHSJ9mEO8/U8awi0ic3ivzgWeJ0GKs4AKBKvPqjPrj
 2Fi0KCR7/djNpJOX8co3fyY1tTMsW7/ZTwgbbCUPfYY8Rnjz2H+IA3Orr0ckZmMsXiZj
 r6eoVhT+WEdxY9NRVBAOFCaPoZbdEFRrZdTQZbOyN0zJ732RCzWFh1o47sGXMgIxeUbb
 Rw4HDc8ZJKlOgp4EDIP9tkh0TjkmeV/8FPgtj0hsQKhIayiEHph4Cr73Jmw2sO0+lsYk
 nPULWuXRc4GLZT4LdP3S9CurYcfGtNmHcMRjQeGV1PbRYMvKylb9QiFqzdhpaGmIBHVW
 gqig==
X-Gm-Message-State: APjAAAULlUq+m5qfFVdneScoPmEbLQJuREZVVdX5HDTTUvBnCXOcsvlW
 Q5d3XGkeNcGkou2bITsnWA8=
X-Google-Smtp-Source: APXvYqwSSwK8uTLAueIPIEskcTr65e69SvxlRRRjmE1nawsWngprr8XPolHMM/U7Sz+j6LT6zHALSA==
X-Received: by 2002:a05:6512:4c6:: with SMTP id
 w6mr17965578lfq.157.1577131028284; 
 Mon, 23 Dec 2019 11:57:08 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id v7sm8821569lfa.10.2019.12.23.11.57.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Dec 2019 11:57:07 -0800 (PST)
Received: from home.paul.comp (home.paul.comp [IPv6:0:0:0:0:0:0:0:1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 xBNJv48j011880; Mon, 23 Dec 2019 22:57:05 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id xBNJv2th011879;
 Mon, 23 Dec 2019 22:57:02 +0300
Date: Mon, 23 Dec 2019 22:57:02 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: =?iso-8859-1?Q?Bj=F8rn?= Mork <bjorn@mork.no>
Message-ID: <20191223195702.GE11377@home.paul.comp>
References: <20191215172522.26626-1-fercerpav@gmail.com>
 <20191222182057.9805-1-fercerpav@gmail.com>
 <87fthb4d0o.fsf@miraculix.mork.no>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87fthb4d0o.fsf@miraculix.mork.no>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_115710_594125_76F8F72F 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH v3] kernel: ath10k-ct: provide a build
 variant for small RAM devices
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
Cc: Stijn Tintel <stijn@linux-ipv6.be>, Hauke Mehrtens <hauke@hauke-m.de>,
 Ben Greear <greearb@candelatech.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Bj=F8rn,

On Mon, Dec 23, 2019 at 10:17:11AM +0100, Bj=F8rn Mork wrote:
> Paul Fertser <fercerpav@gmail.com> writes:
> > --- /dev/null
> > +++ b/package/kernel/ath10k-ct/patches/960-0011-ath10k-limit-pci-buffer=
-size.patch
> > @@ -0,0 +1,100 @@
> > +--- a/ath10k-4.19/pci.c
> > ++++ b/ath10k-4.19/pci.c
> > +@@ -142,7 +142,11 @@ static struct ce_attr host_ce_config_wla
> > + 		.flags =3D CE_ATTR_FLAGS,
> > + 		.src_nentries =3D 0,
> > + 		.src_sz_max =3D 2048,
> > ++#ifndef CONFIG_ATH10K_SMALLBUFFERS
> > + 		.dest_nentries =3D 512,
> > ++#else
> > ++		.dest_nentries =3D 128,
> > ++#endif
> > + 		.recv_cb =3D ath10k_pci_htt_htc_rx_cb,
> > + 	},
> > + =

> =

> Why not replace the magic numbers with a macro?  Then you could get away
> with *one* "if configx then this else that"?  And preferably put it in a
> header file.

There're different values for different buffers so there can't be a
single number to fit them all. And I do not see how adding 4 different
defines just for the sake of it would make sense there.

> Or maybe these things even could be made runtime configurable?  Buffers
> of this size really should be IMHO, as there is no way to make one size
> fit all.  As demonstrated...

This was already discussed, please see [0]. I think adding a kernel
module parameter would make sense for this but it's also much more
complicated than just adding two patches that were already used in
OpenWrt for many years. So far nobody volunteered to do that, and I
wanted to provide at least some semi-sane solution for the upcoming
release.

[0] https://patchwork.ozlabs.org/comment/2322701/
-- =

Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
